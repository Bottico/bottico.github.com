---
layout: post
title: "Lanzar Sublime Text 2 desde la terminal en Mac OS X"
date: 2012-10-08 02:54
comments: true
categories: ideas sublime
---

Queria compartir un **recurso** bastante productivo para lanzar sublime text 2 desde nuestra terminal.

### Instalacion

La idea consiste en crear un binario en la carpeta ```/usr/local/bin``` basado en el archivo binario de sublime text 2.

```
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
``` 

Con esto creamos un enlace simbolico, llamado ```sublime```. ( Ten en cuenta que este nombre, es el que usaremos para ejecutar sublime desde la terminal, puedes llamarlo como desees para ser mas productivo y rapido podria ser ```s``` algo por el estilo)


### Probando

Ejecutamos la terminal y ejecutamos uno de estos comandos segun sea la necesidad.

**Ejecutar Sublime**
```
sublime
```
con este abrimos sublime text 2 unicamente.


**Abrir archivo con sublime**
```
sublime filename
```

Con este comando abrimos sublime text 2 y el documento especificado.

**Abrir carpeta**
```
sublime foldername
```

Con este comando abrimos sublime text 2 y la carpeta especificada con todos sus directorios y archivos.


**Magia**

```
sublime .
```

Con este ejecutamos sublime abriendo la carpeta del directorio donde te encuentras ubicado en la terminal.

{% img center http://www.crearmeme.com/media/created/j7322k.jpg %}

espero les sea util :)