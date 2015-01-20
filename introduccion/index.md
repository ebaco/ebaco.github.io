---
layout: article
permalink: /introduccion/
title: "Introducción a la Ontología E-BACO"
image:
  feature: uva_tinta-1024x250.jpg
---


¿Qué es una Ontología?
======================

Hoy en día prácticamente todas las empresas guardan la información de sus negocios en bases de datos en formato electrónico. El mundo del vino no es una excepción, ya que prácticamente todas las bodegas, restaurantes, tiendas de vinos o revistas especializadas, guardan la información sobre sus vinos (variedades de uvas, fecha de producción, procedimiento de elaboración, composición química, características organolépticas de la cata, precio, etc.) en formato electrónico. Esto, unido al desarrollo de las redes de telecomunicaciones como Internet, permiten un intercambio de información sin precedentes, haciendo posible que la información esté accesible en cualquier parte del mundo.

Sin embargo, hasta la fecha no existe una terminología estándar para referirse a los conceptos del ámbito de la enología, y aunque el uso de algunos términos está regulado por ley[^1], no siempre se utilizan para describir los vinos guardados en las bases de datos. Basta visitar las páginas web de algunas bodegas o tiendas de vino para darse cuenta de que muchas veces se utilizan distintos términos para referirse al mismo concepto compo por ejemplo *tinto tempranillo*, *tinto fino* o *tinto cencibel*, o un mismo término con diferentes significados, como por ejemplo *tinto crianza*, que dependiendo del lugar, se refiere a distintos periodos de crianza del vino. Esta heterogeneidad en la terminología dificulta en gran medida el intercambio de información en entornos distribuidos como Internet y está suponiendo un verdadero cuello de botella en el desarrollo de nuevas aplicaciones que permitan explotar todo el potencial que ofrece la posibilidad de estar globalmente interconectados.

Las ontologías surgen precisamente en el ámbito de la inteligencia artificial con el objetivo de resolver este problema. De manera informal, una ontología puede definirse como un vocabulario compartido que permite expresar de manera formal la conceptualización que se tiene en un determinado campo o área de conocimiento. Las ontologías permiten construir modelos de un determinado dominio de aplicación definiendo de manera precisa los conceptos o clases de objetos del dominio, sus propiedades o características y las relaciones que se dan entre ellas, así como especificar formalmente los axiomas o las reglas que definen la lógica del sistema real que se pretende modelar. Estos modelos son construidos en un lenguaje formal que no sólo es comprensible para humanos, sino también para los sistemas informáticos, permitiendo la interoperabilidad entre sistemas que utilicen la misma ontología. 

Las ontologías son además la piedra angular del nuevo paradigma de la Web, conocida como “Web Semántica”, que pretende dar significado a los datos que se publican en la web. Hasta ahora los motores de búsqueda más usados (Google, Yahoo, Bing etc.) sólo utilizan criterios sintácticos a la hora de realizar las búsquedas, de manera que cuando alguien busca un vino *tinto cencibel*, al introducir estos términos en el buscador, sólo aparecerán las páginas que contengan estos términos, pero no se mostrarán las que contengan el término *tinto tempranillo*. La Web Semántica se apoya en las ontologías para permitir hacer búsquedas con criterios semánticos, identificando por ejemplo, que *tinto tempranillo* es un sinónimo de *tinto cencibel*. La capacidad que ofrece la Web Semántica de identificar conceptos relacionados semánticamente abre la puerta a infinidad de nuevas posibilidades con respecto a la web tradicional que ahora conocemos.

En los últimos años, el desarrollo de ontologías para describir y dotar de semántica a los datos disponibles en la web ha crecido exponencialmente, y hay multitud de áreas de conocimiento que ya han adoptado ontologías como los estándares para definir o modelar sus realidades, como por ejemplo la GeneOntology[^2] ámbito de la genómica y proteómica a la hora de describir los genes y las proteínas de los seres vivos, o la GoodRelations[^3] utilizada por Google o Yahoo para describir los productos y las transacciones del comercio electrónico.

¿Qué es la Ontología E-Baco?
============================

La ontología E-Baco define un vocabulario preciso para representación de conocimiento en el dominio de la enología. Una ontología se compone de objetos o entidades de diferentes tipos. Las principales entidades son las clases que representan conceptos abstractos, (por ejemplo, vino), las propiedades de las clases, que describe las características de los conceptos (por ejemplo, contenido de alcohol), instancias de clases, que representan casos concretos de conceptos (por ejemplo, Vega Sicilia Único 1989), relaciones, que describe las conexiones o asociaciones entre dos conceptos o casos (por ejemplo, la relación de maridaje entre un vino y una comida), y, finalmente, axiomas, que establece reglas lógicas satisfechas por los conceptos, propiedades, instancias y relaciones (por ejemplo, el vino blanco y vino tinto son clases disjuntas, es decir, no pueden compartir ninguna instancia). La relación principal en las ontologías es la relación *subclase* que expresa que un concepto está contenido por otro, es decir, 
que todas las instancias de un concepto son también instancias de otro concepto (por ejemplo, el vino tinto es una subclase de vino). A través de esta relación, los conceptos se organizan en una taxonomía que es la columna vertebral de la ontología (ver Figura 1).

![image](/images/taxonomia_ebaco.png)

El nivel superior de la ontología taxonomía E-Baco incluye clases de bebidas alcohólicas (cuya subclase más importante es el vino, que a su vez incluye los distintos tipos de vinos: blancos, tintos, rosados, generosos, espumosos y dulces), uvas, viñedos, bodegas, regiones vitivinícolas de España, el proceso de la vinificación, las características organolépticas, la cata de vinos y los tipos de alimentos con los que maridar el vino. Estas clases son descritas por una gran cantidad de propiedades (por ejemplo, el contenido de alcohol de un vino) y relacionados con otras clases a través de las relaciones no taxonómicas (por ejemplo, la relación que establece maridaje entre un vino y una comida).

En la versión 1.1 la ontología contiene 135 clases de conceptos, 54 propiedades, 32 relaciones y 2770 axiomas, así como 398 instancias de conceptos.

La ontología ha sido desarrollada por un equipo experto de investigadores en Biología y en Inteligencia Artificial de la Universidad Complutense de Madrid y de la Universidad San Pablo CEU. 

¿Qué utilidad tiene el uso de la Ontología E-Baco?
==================================================

La ontología de vinos ha sido diseñada para describir distintos contextos en el ámbito de la enología, desde el contexto de la elaboración del vino, hasta el consumo en un restaurante, pasando por la comercialización o la publicidad. En todos estos contextos, el uso de la ontología supone múltiples ventajas, entre las que cabe destacar:

-   Compartir información entre distintos agentes (entre bodegas, tiendas, restaurantes, revistas o catálogos especializados, nutricionistas, etc.) que usen la ontología. Por ejemplo, si una bodega publica la información relativa a sus vinos utilizando la terminología de la ontología, esta será comprensible sin ambigüedad para una aplicación de comercio electrónico que utilice la misma ontología.

-   Facilitar y mejorar la búsqueda de información permitiendo el uso de criterios semánticos en las búsquedas.

-   Hacer razonamientos lógicos basados en la semántica de los términos. Por ejemplo, es posible hacer búsquedas de vinos que mariden bien con un determinado plato o buscar vinos similares a un vino dado.

-   Permite desarrollar servicios web que interactúen con las distintas fuentes de datos distribuidas en Internet que utilicen la ontología para realizar tareas complejas como por ejemplo la recomendación o la comparación de vinos.

-   Facilitar la fusión de bases de datos de vinos. Por ejemplo cuando dos bodegas se fusionan, el proceso de unificar sus bases de datos suele ser bastante costoso ya que suelen utilizar esquemas y terminologías distintas. El uso de ontologías para definir los vinos hace que el proceso de fusión sea muy sencillo.

-   Evitar incoherencias en las bases de datos que contienen la información sobre los vinos, como por ejemplo evitar que un vino de clasifique como *reserva* cuando sólo ha tenido una crianza en barricas de sólo 3 meses.

-   Describir de manera precisa los distintos procesos de vinificación y poder generar de manera automática variaciones sobre dichos procesos.

[^1]: La base de datos de datos E-Bacchus (<http://goo.gl/lvqp33>) de la UE recoge un conjunto de términos protegidos relativos al mundo de la enología

[^2]: <http://geneontology.org/>

[^3]: <http://purl.org/goodrelations/>

