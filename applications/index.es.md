---
layout: article
title: "Aplicaciones de la ontología E-BACO"
image:
  feature: sacacorchos-1024x250.jpg
---

La principal ventaja de publicar los datos sobre vinos utilizando la ontología E-Baco es la de dar significado semántico a los datos.
Esto quiere decir que la información sobre los vinos será comprensible para los agentes software, lo cual abre la puerta a un montón de nuevas aplicaciones, algunas de las cuales se enumeran a continuación:

- **Datos enlazados**. Las bases de datos sobre vinos que utilicen la ontología E-Baco pueden ser enlazadas a través de la web formando una base de datos global, a través de cual se puede acceder a datos sobre vinos distribuídos a lo largo de todo el mundo. 
Los datos sobre vinos pueden enlazarse también con otros datos relacionados semánticamente fuera del dominio de la enología, e integrarse en recursos como la [DBpedia](http://wiki.dbpedia.org/), que es la versión semántica de la Wikipedia. 
- **Compartir datos**. Una aplicación derivada de la posibilidad de enlazar los datos es compartir la información sobre vinos.
Los agentes que usen la ontología E-Baco (bodegas, tiendas, restaurantes, resvistas, sumillers, etc.) tendrán acceso instantáneo a la información publicada por los otros agentes sin ambigüedad. 
Por ejemplo, una tienda de comercio electrónico puede publicar en su sitio web información sobre vinos de una determinada bodega sin tener su propia base de datos. 
De este modo, cada vez que la bodega actualice la información sobre sus vinos, los cambios se relfejarán automáticamente en la web de la tienda. 
- **Búsquedas semánticas**. Una de las aplicaciones más importantes de la Web Semántica es la posibilidad de hacer consultas semánticas que vayan más allá de meros criterios sintácticos e incluyan relaciones semánticas entre conceptos. 
Por ejemplo, podríamos consultar la Web Semántica buscando vinos tintos crianza de España elaborados con más de dos variedades de uva y un contenido de alcohol menor de 14%, y el motor de búsqueda devolvería vinos con distintos tiempos de envejecimiento de acuerdo al significado de "crianza" en cada denominación de origen. 
Las consultas debe formuarse en un lenguaje semántico de consultas como [SPARQL](http://www.w3.org/TR/sparql11-overview/), por medio de tripletes RDF como [Apache Jena TDB](http://jena.apache.org/documentation/tdb/) and [OpenLink Virtuoso](http://www.w3.org/2001/sw/wiki/OpenLink_Virtuoso), o utilizando motores de búsqueda semánticos como  [Swoogle](http://swoogle.umbc.edu/), [Glimmer](http://glimmer.research.yahoo.com/).
- **Servicios Web**. Otra aplicación derivada de enlazar los datos a través de la web son los servicios web especializados.
Estos servicios pueden utilizar la ontología para navegar por las distintas fuentes de datos distribuidas a lo largo de la Web Semántica para realizar tareas específicas como comparar o recomendar vinos. 
- **Razonamiento semántico**. Las propiedades y relaciones definidas por la ontología permiten realizar inferencias lógicas que pueden generar nuevo conocimiento o detectar incoherencias en la base de conocimiento. 
Por ejemplo, utilizando la ontología un razonador puede detectar un error al clasificar un vino como “crianza” cuando en realidad tiene menos de tres meses de envejecimiento. 
Existen razonadores especializados para la Web Semántica como [HermiT](http://hermit-reasoner.com/), [Fact++](http://owl.man.ac.uk/factplusplus/) o [Pellet](http://clarkparsia.com/pellet/). 
- **Integración de bases de datos**. Integrar dos o más bases datos de un dominio común o relacionado suele ser una tarea complicada ya que suelen tener esquemas relacionales diferentes. 
Si las bases de datos utilizan la ontología E-Baco para anotar sus esquemas, la fusión es muy sencilla. 
- **Aplicaciones ad hoc**. Finalmente es posible desarrollar aplicaciones que usen la ontología para realizar tareas concretas como, por ejemplo, analizar el proceso de elaboración de un vino y proponer variaciones que lo mejoren. 