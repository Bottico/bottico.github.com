---
layout: post
title: "Jugando con Sinatra"
date: 2012-09-17 16:33
comments: true
categories: ruby sinatra
keywords: ruby sinatra angelbotto bottico botti.co
---
##Sinatra

[Sinatra](http://sinatrarb.com) es un framework **(DSL)** de desarrollo para aplicaciones web escrito en **Ruby**. que usa **Rack** para envolver o resolver peticiones HTTP **middleware**.

###La idea

Para poner en practica y entender un poco de Sinatra vamos a crear una mini aplicación encargada de almacenar contactos cuyo nombre sera **bcontacts**, los cuales podamos consultar a nivel general o de manera única.

Que contara con API para consumir estos datos mediante json o xml.

###Interfaz 

{% img center http://go4.es/0b15 %}

la interfaz me base en algo muy sencillo, pero bonito a mi parecer :3 desarrollado con **sass** y **css3**

###Estrucutra

si bien es cierto sinatra no se guía bajo el patrón MVC pero de la prisa y el desorden no queda nada bueno. así que vamos a manejar cierto orden en nuestro proyecto.

+ **[Helpers/](https://github.com/angelbotto/bcontacts/tree/master/Helpers)**
	+ [bchelpers.rb](https://github.com/angelbotto/bcontacts/blob/master/Helpers/bchelpers.rb)
+ **[Models/](https://github.com/angelbotto/bcontacts/tree/master/Models)**
	+ [Contact.rb](https://github.com/angelbotto/bcontacts/blob/master/Models/Contact.rb)
+ **[public/](https://github.com/angelbotto/bcontacts/tree/master/public)**
	+ **[imagen/](https://github.com/angelbotto/bcontacts/tree/master/public/imagen)**
	+ **[javascript/](https://github.com/angelbotto/bcontacts/tree/master/public/javascript)**
		+ **[libs/](https://github.com/angelbotto/bcontacts/tree/master/public/javascript/libs)**
		+ **[scripts.js](https://github.com/angelbotto/bcontacts/blob/master/public/javascript/script.js)**
+ **[Views/](https://github.com/angelbotto/bcontacts/tree/master/views)**
	 + **[css/](https://github.com/angelbotto/bcontacts/tree/master/views/css)**
	 	+ [_featured.scss](https://github.com/angelbotto/bcontacts/blob/master/views/css/_features.scss)
	 	+ [style.scss](https://github.com/angelbotto/bcontacts/blob/master/views/css/style.scss)
	 + **[layouts/](https://github.com/angelbotto/bcontacts/tree/master/views/layouts)**
	 	+ [index.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/index.erb)
	 	+ [about.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/about.erb)
	 	+ [api.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/api.erb)
	 	+ [coments.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/coments.erb)
	 	+ [contacto.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/contacto.erb)
	 	+ [edit.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/edit.erb)
	 	+ [menu.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/menu.erb)
	 	+ [new.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layouts/new.erb)
	 + [layout.erb](https://github.com/angelbotto/bcontacts/blob/master/views/layout.erb)
+ [Api.rb](https://github.com/angelbotto/bcontacts/blob/master/Api.rb)
+ [BContacts.rb](https://github.com/angelbotto/bcontacts/blob/master/BContacts.rb)
+ [config.ru](https://github.com/angelbotto/bcontacts/blob/master/config.ru)
+ [Gemfile](https://github.com/angelbotto/bcontacts/blob/master/Gemfile)
+ [Readme.md](https://github.com/angelbotto/bcontacts/blob/master/README.md)


## Explora, Comenta y Pregunta

El codigo fuente del proyecto esta alojado en [github/angelbotto/bcontacts](https://github.com/angelbotto/bcontacts/), y el demo esta alojado en [bcontacts.botti.co](http://bcontacts.botti.co) la idea de compartir el codigo es que otros lo exploren pregunten, y comenten :).



