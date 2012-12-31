---
layout: post
title: "Emails con pony"
date: 2012-12-31 02:25
comments: true
categories: ruby webdevelopment
---

{% img center http://fc02.deviantart.net/fs71/f/2011/164/f/8/google_chrome_icon_by_kitsuneymg-d3ita1w.png %}

Pony es una gema que me encanta, facilita de manera increible enviars emails con ruby.

{% blockquote %}
Pony, the express way to send email in Ruby
{% endblockquote %}

###Pony gem

Para el uso de pony debemos agregar a nuestro gemfile lo siguiente

``` ruby Gemfile
gem "pony"
```

y a nuestro app.rb

``` ruby app.rb
require 'pony'
``` 

###Enviando emails

enviar emails es igual de facil simplemente hace basta lo siguiente

``` ruby app.rb 
Pony.mail(
	:to => 'tu@ejemplo.com', 
	:from => 'yo@ejemplo.com', 
	:subject => 'Hoooola', 
	:body => 'faciiil verdad'
)
``` 

bastante facil verdad? quieres mas?


<!--more-->

Pony nos da una gran varidad de opciones las cuales son:

*  **to** Quien recibe el email
*  **cc** Otras personas que reciben una copia exacta del email
*  **bcc** Otras personas que reciben una copia exacta del email de manera oculta
*  **from** Quien envia el email
*  **body** Contenido del mensaje ( texto plano )
*  **html_body** Contenido del email en html
*  **subject** No debo explicarlo verdad?
*  **charset** En caso de que la codificación sea diferente a utf-8
*  **attachments** Archivos adjuntados
*  **headers** Cabezeras personalizadas

Ejemplo:

``` ruby app.rb 
Pony.mail(
	:to => 'tu@ejemplo.com', 
	:bcc => 'oculto@ejemplo.com'
	:from => 'yo@ejemplo.com', 
	:subject => 'Hoooola', 
	:html_body => (erb :email, :layout => false)
)
``` 

Enviando emails con gmail y pony :)

``` ruby app.rb 
Pony.mail(
	:to => 'tu@ejemplo.com', 
	:from => 'yo@ejemplo.com', 
	:subject => 'Hoooola', 
	:html_body => (erb :email, :layout => false),
	:via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'angelbotto@gmail.com',
    :password             => 'estenoesmipasswordnilointentes',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" 
  }
)
``` 

Enviando emails con sendgrid (heroku) y pony


``` ruby app.rb 
Pony.mail(
	:to => 'tu@ejemplo.com', 
	:from => 'yo@ejemplo.com', 
	:subject => 'Hoooola', 
	:html_body => (erb :email, :layout => false),
	:via => :smtp,
  :via_options => {
    :address => 'smtp.sendgrid.net',
		:port => '587',
		:domain => 'heroku.com',
		:user_name => ENV['SENDGRID_USERNAME'],
		:password => ENV['SENDGRID_PASSWORD'],
		:authentication => :plain,
		:enable_starttls_auto => true
  }
)
``` 

facil facil facil :) a enviar emails :)