---
layout: post
title: "JavaScript blocks rendering"
date: 2012-08-30 13:41
keywords: javascript perfomance bottico rendimiento tiempo carga
comments: true
categories: perfomance javascript
---

Hace ya tiempo en el primer meetup de [Bogodev](http://www.bogodev.org/), [@torrenegra](http://twitter.com/torrenegra) hablo sobre tendencias en nueva york, y como la **velocidad** de carga de una pagina hablaba bien de ella.

La idea de hoy es compartir una pequeña guia de como dar solucion a un problema frecuente a la hora de cargar archivos js :D

##El problema

{% img center http://dl.dropbox.com/u/27031193/botti.co/captura.png perfomance %}

Usualmente se acostumbra a cargar los archivos JavaScript `<script>` en las cabezeras del documento, `<head>`esto en cierto sentido no es malo, más sin embargo puede causar un problema a la hora de renderizar nuestra plantilla.

```html Ficheros js cargados desde head
<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <title></title>
  <script type="text/javascript" src="...."></script>
  <script type="text/javascript" src="...."></script>
  <script type="text/javascript" src="...."></script>
  <script type="text/javascript" src="...."></script>
</head>
<body>
  
</body>
</html>
```

##Solucion

Los JavaScript `<script>` que se encuentran en la parte superior de nuestro documento HTML, deberiamos moderlo a la parte inferior de este justo arriba del `</body>`para que los script
sean cargado de ultimos y nuestra plantilla sea renderizado en un mejor tiempo.

```html ficheros js cargados al final del documento
<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <title></title>
  
</head>
<body>
  
  <script type="text/javascript" src="...."></script>
  <script type="text/javascript" src="...."></script>
  <script type="text/javascript" src="...."></script>
  <script type="text/javascript" src="...."></script>
</body>
</html>
```

Otra solucion podria ser el uso de una secunencia de comandos de carga asynchronous, mediante un gestor de scripts como [ControlJS](http://stevesouders.com/controljs/).

##Recursos
* [Chrome DeveloperToolts](http://google.com/?s=chrome) Sin duda alguna una herramienta indispensable para mi.
* [WebPageTests](http://www.webpagetest.org/) Genera un reporte de desempeño, con una gran variedad de cosas para jugar
* [Google Page Speed](https://developers.google.com/speed/pagespeed/) Y Google consintiendonos con una muy buena herramienta, que nos da un reporte y consejos para arreglar los fallos :)

