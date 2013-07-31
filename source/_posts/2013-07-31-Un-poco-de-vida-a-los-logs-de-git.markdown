---
layout: post
title: "Un poco de vida a los log's de git"
date: 2013-07-31 05:42
keywords: git github angelbotto bottico botti.co
comments: true
categories: 
---

{% img center https://dl.dropboxusercontent.com/u/27031193/blog/images/gitlog.jpg %}

Todo programador que se respete, tiene mas organizado su workspace que su espacio de trabajo fisico xD, es agotador ver los log's de git tan secos y aburridos, por eso vamos a darle un poco de vida con el siguiente truquito :)

```bash 
git log --graph --pretty=format:'%C(bold blue)%h %Cgreen(%cr)%Creset -%C(yellow)%d%Creset %s %C(yellow)<%an>%Creset' --abbrev-commit
```

..epa epa, antes de los reclamos de "que comando tan largo", vamos a crear un alias.

```bash
git config --global alias.lg "log --color --graph --pretty=format:'%C(bold blue)%h %Cgreen(%cr)%Creset -%C(yellow)%d%Creset %s %C(yellow)<%an>%Creset' --abbrev-commit"
```

Ya esta, ahora basta con escribir.

```bash
git lg
```

o si prefieren, ver las lineas que cambiaron

```bash
git lg -p
```
