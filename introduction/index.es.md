---
layout: article
title: "Introducción a la Ontología E-BACO"
image:
  feature: uva_tinta-1024x250.jpg
---


¿Qué es una Ontología?
======================

Hoy en día prácticamente todas las empresas guardan la información de sus negocios en bases de datos en formato electrónico. El mundo del vino no es una excepción, ya que prácticamente todas las bodegas, restaurantes, tiendas de vinos o revistas especializadas, guardan la información sobre sus vinos (variedades de uvas, fecha de producción, procedimiento de elaboración, composición química, características organolépticas de la cata, precio, etc.) en formato electrónico.
Esto, unido al desarrollo de las redes de telecomunicaciones como Internet, permiten un intercambio de información sin precedentes ha dado lugar a una pléyade de nuevas aplicaciones realizadas en muchos casos por antes software autónomos como, por ejemplo, robots de búsqueda o autómatas de minería de datos. 

Sin embargo, la interoperabilidad entre sistemas inteconectados no sólo precisa de un medio para compartir la información (como Internet o WWW), o un lenguaje para representar la información (como html o xml), sino que también precisa de un acuerdo en el significado de los datos compartidos, es decir, en su *semántica*.

En el mundo del vino no existe hasta la fecha no existe una terminología estándar para referirse a los conceptos del ámbito de la enología
Basta visitar las páginas web de algunas bodegas o tiendas de vino para darse cuenta de que muchas veces se utilizan distintos términos para referirse al mismo concepto como por ejemplo *tinto tempranillo*, *tinto fino* o *tinto cencibel*, o lo que es peor, un mismo término con diferentes significados, como por ejemplo *tinto crianza*, que dependiendo del lugar, se refiere a distintos periodos de crianza del vino. 
Esta ambiguedad y heterogeneidad en la terminología dificulta en gran medida el intercambio de información entre una bodega y una tienda de vinos o un restaurante, o en general entre entornos distribuidos en Internet y está suponiendo un verdadero cuello de botella en el desarrollo de nuevas aplicaciones que permitan explotar todo el potencial que ofrece la posibilidad de estar globalmente interconectados.

En la última década se ha realizado un gran esfuerzo en la comunidad informática y de inteligencia artificial para proporcionar las bases para compartir la semántica de los datos, lo que ha dado lugar a un nuevo paradigma de web conocida como la [*Web Semántica*](http://es.wikipedia.org/wiki/Web_sem%C3%A1ntica).
La Web Semántica, a diferencia de la Web convencional que enlaza documentos html, enlaza datos haciendo su significado explícito y comprensible no solo para los humanos, sin también para las máquinas o autómatas.
Así, el desarrollo de la Web Semántica requiere la creación de vocabularios diseñados para describir los dominios de conocimiento.
Estos vocabularios, que son la piedra angular de la Web Semántica se conocen como [*Ontologías*](http://es.wikipedia.org/wiki/Ontolog%C3%ADa_%28inform%C3%A1tica%29).


En inteligencia artificial, una ontología es una especificación formal de un modelo conceptual compartido (Gruber 1993), es decir, un cuerpo de conocimiento formalmente representado que incluye objetos, clases de objetos, y otras entidadees que existen en una determinada area de interés, las propiedades que los describen y las relaciones que se dan entre ellos, así como los axiomas o las reglas que definen la lógica del sistema real que se pretende modelar. 
Estos modelos son construidos en un lenguaje formal que no sólo es comprensible para humanos, sino también para los sistemas informáticos, permitiendo la interoperabilidad entre sistemas que utilicen la misma ontología. 
En una visión simplicada, se puede decir que las ontologías son vocabularios compartidos sobre un dominio o area de conocimiento.
Por ejemplo, una ontología sobre enología puede definir los términos "tinto tempranillo" y "tinto cencibel" sin ambiguedad y establecer que son sinónimos. 
La Web Semántica usa las ontologías para dar significado a los datos que se publican en la web. 
Esto permite, entre otras cosas, hacer búsquedas con criterios semánticos en las relaciones que se dan entre los términos (algo que no es posible los motores de búsqueda actuales como Google, Yahoo o Bing, que sólo utilizan crierios sintáctios en sus búsquedas) y obtener información sobre un vino "tinto tempranillo" incluso si se teclean las palabras "tinto cencibel".

En los últimos años, el desarrollo de ontologías para dotar de semántica a los datos publicados en la web ha crecido exponencialemente. 
Muchas áreas de conocimiento han adoptado ontologías como estándares para modelar su realidad, como por ejemplo, la [ontología Dublin Core](http://dublincore.org/) que define un vocabulario semántico para describir documentos, un subconjunto del cual es utilizado por la Wikipedia; la [ontología FOAF](http://www.foaf-project.org/) (Friend Of A Friend) que define un vocabulario básico para describir a las personas y las cosas; la [ontología GoodRelations](http://purl.org/goodrelations/) utilizada por Google y Yahoo para describir productos transacciones en el comercio electrónico; o la [GeneOntology](http://geneontology.org/) utilizada para describir los genes y las proteinas de los seres vivos.

Unfortunately, there is not a standard ontology in the oenology field, and thus, we have addressed this task building an ontology for wines that we have named E-Baco.
Por desgracia, no existe todavía una ontología de referencia en el campo de la enología, de manera que hemos abordado esta tarea y hemos construido una ontología para el mundo del vino que hemos llamado E-Baco.


¿Qué es la Ontología E-Baco?
============================

La ontología E-Baco define un vocabulario preciso para representación de conocimiento en el dominio de la enología. Una ontología se compone de objetos o entidades de diferentes tipos. Las principales entidades son las clases que representan conceptos abstractos, (por ejemplo, vino), las propiedades de las clases, que describe las características de los conceptos (por ejemplo, contenido de alcohol), instancias de clases, que representan casos concretos de conceptos (por ejemplo, vino Mathis 2007), relaciones, que describen las conexiones o asociaciones entre dos conceptos o casos (por ejemplo, la relación de maridaje entre un vino y una comida), y, finalmente, axiomas, que establece reglas lógicas satisfechas por los conceptos, propiedades, instancias y relaciones (por ejemplo, el vino blanco y vino tinto son clases disjuntas, es decir, no pueden compartir ninguna instancia, o que un vino blanco sólo se elabora a partir de uvas blancas). 

La relación principal en las ontologías es la relación *subclase* que expresa que un concepto está contenido por otro, es decir, que todas las instancias de un concepto son también instancias de otro concepto (por ejemplo, el vino tinto es una subclase de vino). 
Estas relaciones pueden expresarse mediante un grafo dirigido como el que se muestra a continuación.

![image](/images/taxonomia_ebaco.png)

A través de esta relación, los conceptos se organizan en una taxonomía que es la columna vertebral de la ontología.


La ontología E-Baco es una ontología multipropósito que ha sido diseñada para permitir el modelado de diferentes escenarios sobre el vino: la descripción simple de un vino para no expertos; el proceso de elaboración (desde el punto de vista químico y biológico del enólogo); la venta de vino mediante comercio electrónico; la compación de vinos mediante su cata; o el maridaje de vinos con comidas (desde un punto de vista nutricional), son sólo algunos ejemplos.

Según el dominio de aplicación y el nivel de complejidad, la ontología se ha dividido en varios módulos que conforman el vocabulario requerido para el dominio de aplicación y el nivel de detalle del modelado.
Actualmente la ontología E-Baco se compone de tres módulos: *E-Baco-Core*,  *E-Baco-Tasting* and *E-Baco-Winemaking*.

## E-Baco-Core

El módulo E-Baco-Core es el módulo de menor nivel y define el vocabulario básico para la descripción de vinos. 
Incluye las clases y relaciones más básicas que forman los cimientos de la ontología E-Baco. 
Este módulo está dirigido a los consumidores de vino en general ya que incluye las principales características del vino desde un punto de vista no experto. 
Entre estas entidades básicas que define el módulo están las variedades de uva, las regiones vinícolas, las bodegas, etc. 
Cada una de estas entidades se describen mediante una serie de propiedades y relaciones. 
Por ejemplo, la bodega puede enlazarse con un conjunto de propiedades como su dirección de contacto, su teléfono o su página web. 


## E-Baco-Tasting

El módulo E-Baco-Tasting describe la cata de vinos y su maridaje con comidas. 
Contiene el vocabulario del módulo E-Baco-Core, pero añade nuevas clases y relaciones para modelar la descripción de las catas, las características organolépticas del vino (aspecto, olfato y gusto), los platos recomendados para consumir un vino y los consejos para su consumo. 
El vocabulario para describir las catas ha seguido las recomendaciones de [Wine & Spirit Education Trust](http://www.wsetglobal.com/documents/dip_satcardwine_2012_eng_new.pdf) y contiene las principales características organolépticas que utilizan los sumillers y catadores para describir un vino y su calidad. 
Este módulo está dirigido a consumidores expertos, tiendas de vinos, restaurantes y sumillers. 


## E-Baco-Winemaking

El módulo E-Baco-Winemaking presenta un vocabulario para describir el proceso de vinificación.
También contiene el módulo E-Baco-Core, pero añade clases y relaciones para modelar el proceso y las principales variables que afectan a la elaboración del vino. 
Este es el módulo de mayor nivel ya que está pensado para describir las características químicas biológicas del vino, de la uva y del proceso de elaboración.
Por este motivo, este módulo está especialmente dirigido a los bodegueros, las tiendas especializadas de vino o los enólogos. 
Entre las entidades incluídas en este módulo están las características químicas como la acidez, el contenido de azúcar o los polifenóles que contiene el vino y la uva; las características del viñedo (superficie, tipo de suelo, sistema de poda, pluviometría, etc.); y finalmente las características técnicas del proceso de producción (tipo de levadura usada, tiempo de fermentación, tipo de barricas, etc).


