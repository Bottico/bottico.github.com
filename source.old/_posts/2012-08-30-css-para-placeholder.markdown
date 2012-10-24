---
layout: post
title: "CSS para Placeholder"
keywords: CSS3 placeholder css estilos bottico
date: 2012-08-30 01:55
comments: true
categories: stylesheets
---

Elaborando un campo de búsqueda me tope con un problemita, el cual era definirle estilos a **placeholder**, y la solución para esto es bastante simple. basta simplemente con:

``` css Estilos para placeholder

:-moz-placeholder {  
   // juega con css :D
   color:#9bead8;
}

::-webkit-input-placeholder {
   // juega con css :D
   color:#9bead8;
}
``` 

<!-- more -->


### Jugando un poco con sass

Para darle una solución mas **útil** cree un mixin en mi proyecto el cual quedo de la siguiente manera:

```sass PlaceholderMixin 

@mixin placeholder($color){
  *{
    &::-webkit-input-placeholder {
      color:$color;
    }

    &::-moz-placeholder {
      color:$color;
    }
  }
}
```


```sass 
	@include placeholder(#ff0066);
```


Espero les sea de utilidad, es un problema sencillo y corto :)
