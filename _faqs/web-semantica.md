---
title: "¿Qué la Web Semántica?"
layout: article
date: 2014-12-20
modified: 2014-12-20T12:25:58-05:00
type: ontologies
order: 1
---

La Worl Wide Web, basada en el lenguaje HTML, permite publicar información en documentos conocidos como páginas web, y vincular estos documentos mediante hiperenlaces. El lenguaje HTML permite definir elementos lógicos de la estructura de un documento como el título, los encabezados de sección, tablas, gráficos, etc. pero más allá de esto no permite definir la semántica de la información publicada. De esta manera, la web actual está pensada para ser interpretada por personas y no por máquinas. Por ejemplo, si una página web contiene la siguiente frase *"El Vega Sicilia Único es un Ribera del Duero mezcla de tempranillo, cabernet sauvignon y merlot"*, cualquier persona que la leyera rápidamente haría la deducción de que el Vega Sicilia Único es un vino al ser tempranillo, cabernet sauvignon y merlot tres variedades de uva y Ribera del Duero una denominación de origen; sin embargo, una máquina no sabría hacer esta sencilla deducción porque no entendería estos conceptos. 

La Web Semántica es una extensión de la World Wide Web que pretende dotar de semántica al contenido de las páginas web para que puedan ser interpretadas por máquinas o programas. Para ello utiliza las ontologías para definir de forma precisa los conceptos correspondientes a los términos incluídos en las páginas web, así como sus propiedades y las relaciones que se dan entre ellos. De este modo, una ontología sobre vinos definiría el concepto *vino* y *uva*, así como la relación que hay entre ellos (el vino se hace de uvas), y también que *tempranillo*, *cabernet sauvignon* y *merlot* son variedades de uvas (subclases del concepto uva). De esta manera un buscador o un agente software que accediese a la anterior página web, una vez anotada con los términos de la ontología de vinos, podría deducir que el Vega Sicilia Único es un vino.
Esto permitiría, entre otras cosas, la posibilidad de hacer búsquedas semánticas que aportarán información más útil a los usuarios. Por ejemplo, si un usuario realiza una búsqueda en uno de los buscadores actuales (Google, Yahoo, Bing, etc.) poniendo *tinto tempranillo*, jamás obtendría una página web en la que apareciese el término *tinto cencibel* porque estos buscadores sólo tienen en cuenta la sintaxis de los términos buscados. Sin embargo, un buscador semántico que utilizase una ontología de vinos en la que se definiese que los conceptos *tinto tempranillo* y *tinto cencibel* son sinónimos, también obtendría las páginas donde apareciese el término *tinto cencibel*. 

[Más información](https://es.wikipedia.org/wiki/Web_sem%C3%A1ntica)