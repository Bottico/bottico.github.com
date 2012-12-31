---
layout: post
title: "Amazon S3 y Sinatra"
date: 2012-12-31 01:25
comments: true
categories: sinatra webdevelopment ruby
---

{% img center http://www.oxalto.co.uk/wp-content/uploads/2012/12/amazon.png %}
Amazon tiene tantas herramientas que en mi día a día desarrollando se vuelven indispensables, en especial S3 (Amazon Simple Storage Service)

{% blockquote Amazon http://aws.amazon.com/es/s3/ Amazon Simple Storage Service %}
Amazon S3 es almacenamiento para Internet. Está diseñado para facilitar a los desarrolladores la informática a escala web.
{% endblockquote %}

La idea de este articulo es integrar Sintra con esta plataforma, lo cual se logra de la siguiente manera. 

<!--more-->

##aws-s3 Gem

Ruby cuenta con una gran variedad de gemas que permiten conectarnos con el API de Amazon de una manera muy sencilla, para su uso unicamente hace falta agregar a nuestro gemfile la siguiente linea.

``` ruby Gemfile
gem 'aws-s3', :require => 'aws/s3'
``` 

y a nuestro archivode la clase principal en sinatra (en mi caso app.rb)

``` ruby app.rb
require 'aws/s3'
```

##Conectandonos

ya tenemos nuestra gema y hacemos uso de ella en nuestro proyecto, ahora ebemos conectarnos, necesitaremos tener las credenciales de acceso que podemos obtener [Aqui :)](https://portal.aws.amazon.com/gp/aws/securityCredentials), lo siguiente sera usar esas llaves y crear un metodo que nos conecte cuando lo necesitemos algo asi :)

```ruby helper.rb
include AWS::S3

def amazon_s3_connect
	Base.establish_connection!(
		:access_key_id => "clave de acceso aqui",
		:secret_access_key => "clave de acceso secreto aqui"
	)
end
``` 

###Subiendo archivos

Ya conectados podemos hacer "maravillas" literalmente xD, antes seria bueno que conocieras un poco sobre los [buckets](http://notepad.cc/tuwedu41), ahora subiremos un archivo basado en un formulario html que envia por post nuestro archivo al cual posteriormente lo subiremos :). algo asi:

``` html form.erb

<form action="/upload" method="post" class="form-horizontal" enctype="multipart/form-data">
	<input type="file" name="photo" >
</form>
``` 

``` ruby app.rb
class App < Sinatra::Base 
	helpers Sinatra::HelperBottico
	
	get '/upload' do 
		erb :form
	end

	post '/upload' do 

		unless params[:photo] && (tmpfile = params[:photo][:tempfile]) && (name = params[:photo][:filename])
			redirect '/error'
		end						

		while blk = tmpfile.read(65536)
			amazon_s3_connect
			AWS::S3::S3Object.store(name, open(tmpfile),"NOMBRE BUCKET",:access => :public_read)
		end

		":D listo calisto"
	end
end
```

En nuestra ruta ``` post '/upload' ``` lo que hacemos es indicar que en dado caso que no se envie ninguna foto redireccione a una pagina de error ( o haga lo que desees ) y creamos 2 variables las cuales son tmpfile que almacena nuestro archivo y name que le asigna un nombre ( puede ser el mismo de la imagen o uno que nosotros especifiquemos ). luego simplemente subimos nuestro archivo al bucket que le indiquemos y le damos acceso publico.


###Eliminando archivos

Por cuestion de buenas practicas, ahorrar espacio o se te dio la gana xD deseas eliminar un archivo debes hacer lo siguiente.

``` ruby buscar.rb 
amazon_s3_connect
file = AWS::S3::S3Object.find "NOMBRE ARCHIVO QUE BUSCO", "MI BUCKET"
file.delete
```

lo primero que se hace es buscar el archivo por su nombre en el bucket que deseemos y posteriormente lo eliminamos :)


###Conclusion

Como ven es bastante simple el manejo de AWS-S3 en ruby simplemente es darle rienda suelta a nuestra imaginacion y usar este servicio para almacenar cuanto se nos ocurra :).

por cierto una buena practica con [Heroku](http://heroku.com) es la creacion de variables de configuracion para no escribir nunca en nuestro codigo estos valioso datos.

espero les guste la guia :)