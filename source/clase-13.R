## Eduard Martínez
## update: 16-11-2022

## llamar la librería pacman: contiene la función p_load()
rm(list=ls())
require(pacman)
p_load(tidyverse, # contiene las librerías ggplot, dplyr...
       rvest) # web-scraping

## Acceder al robots.txt de wikipedia
browseURL("https://en.wikipedia.org/robots.txt")

## Mi primer HTML
my_html <- 
'<!DOCTYPE html> 
<html>
<meta charset="utf-8">
<head>
<title> Título de la página: ejemplo de clase </title>
</head>
<body>
<h1> Laura Morales Vernaza.</h1>
<h2> Subtitle <u>subrayado-1</u>. </h2>
<p> Yo escribí este párrafo muy pequeño que se encuentra dentro de la etiqueta <b>p</b> de <i>html</i> </p>
<a href="https://en.wikipedia.org/wiki/FIFA"> link a wikipedia </a>
</body>
</html>'

## export and read html
write.table(x=my_html , file='my_page.html' , quote=F , col.names=F , row.names=F)
browseURL("my_page.html") ## leer con el navegador de su equipo

## view rvest
vignette("rvest")

## 2.1 Aplicación en R:
my_url = "https://en.wikipedia.org/wiki/FIFA"
browseURL(my_url) ## Ir a la página

## leer el html de la página
my_html <- read_html(my_url)

## ver la clase del objeto
class(my_html)

## ver el objeto


## 2.2 Extraer elementos de un HTML


## Obtener los elementos h2 de la página
my_html %>% html_nodes("h2") %>% html_text()

## 2.3 Xpath
html_p <- my_html %>% html_nodes(xpath='//*[@id="mw-content-text"]/div[1]/p[6]')
html_p %>% html_text()
  
## extraer todas las tablas del html 
html_a <- html_p %>% html_elements("a")
html_a

html_a %>% html_attr("href")

ref_tabla_7 <- paste0("https://en.wikipedia.org", html_a %>% html_attr("href"))


## numero de tablas extraidas


## tabla 10





