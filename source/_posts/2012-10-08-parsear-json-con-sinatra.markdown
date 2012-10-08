---
layout: post
title: "Parsear JSON en Sinatra"
date: 2012-10-08 01:51
comments: true
categories: ruby sinatra
keywords: ruby sinatra json HTTParty
---

###El problema

Muchas veces consumimos datos de otras aplicaciones o otras herramientas ya sea para alimentar nuestro propio servicios o integrando nuestra App con alguna API.

En este caso necesitamos obtener los datos de BContacts de todos y cada uno de los contactos.

**URL Api todos los contactos**
```
http://bcontacts.botti.co/api/allbcontacts/json
```

**URL Api contacto individual**
```
http://bcontacts.botti.co/api/contact/505830090f11d80002000001/json
```

###La solucion 

Si bien es cierto no es Sinatra quien parsea JSON, tenemos a la mano una gran cantidad de gemas que nos ayudan a este tipo de cosas.

Yo quiero hablar un poco de [HTTParty](http://johnnunemaker.com/httparty/) una gema que nos permite hacer peticiones GET, POST, etc de una manera facil y divertida como el creador de esta dice **Makes http fun again!**

**SinatraApp**
``` ruby SinatraApp.rb 
require 'sinatra'
require 'HTTParty'


#http://localhost:PUERTO/
get '/' do 
	@contactos = HTTParty.get("http://bcontacts.botti.co/api/allbcontacts/json")

	#Datos que obtenemos por respuesta, pueden ser util para derterminar otras cositas
	#fuera del codigo que queremos :)
	
	"
	<strong>Respuesta: </strong>#{@contactos.code}<br> 
	<strong>Mensaje: </strong>#{@contactos.message}<br> 
	<strong>Headers: </strong>#{@contactos.headers.inspect}<br><br>
	<strong>Body: </strong>#{@contactos.body}<br> 
	"
end


#http://localhost:PUERTO/all
get '/all' do
	@contactos = HTTParty.get("http://bcontacts.botti.co/api/allbcontacts/json")

	#nos muestra la url guardada :)
	@contactos[0]["url"]
end 

#http://localhost:PUERTO/specific
get '/specific' do
	@contacto = HTTParty.get("http://bcontacts.botti.co/api/contact/505830090f11d80002000001/json")

	#nos muestra la unica url guardada
	@contacto["url"]
end
```


###Conclusion

:) como ven es algo muy facil de realizar ya sea a un arreglo o a un objecto, espero les sirva, si tienen comentarios, sugerencias o preguntas adelante, que la idea es aprender :)