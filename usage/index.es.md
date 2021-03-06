---
layout: article
title: "Uso de la Ontología E-BACO"
image:
  feature: barricas-1024x250.jpg
---

A continuación se muestran algunos ejemplos de uso de la ontología E-BACO en contextos habituales y en tres formatos diferentes: [RDFa](http://es.wikipedia.org/wiki/RDFa) en HTML para publicar datos sobre vinos en páginas web, y [JSON-LD](http://json-ld.org/) y [Turtle](http://es.wikipedia.org/wiki/Turtle_%28sintaxis%29), para publicar datos sobre vinos como una API. 

## Añadir los espacios de nombres
Para empezar a usar la ontología E-BACO es necesario añadir varios espacios de nombres al documento.

En HTML

{% highlight html %}
<html prefix="ebaco: http://purl.org/ceu/ebaco#
	      dc: http://purl.org/dc/elements/1.1/
              xsd: http://www.w3.org/2001/XMLSchema#
              foaf: http://xmlns.com/foaf/0.1/
              rdfs: http://www.w3.org/2000/01/rdf-schema#">
  ...

<html>
{% endhighlight %}

En JSON-LD:

{% highlight json %}
{
  "@context": {
    "ebaco": "http://purl.org/ceu/ebaco#",
    "dc": "http://purl.org/dc/elements/1.1/",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#"
  },
  ...
}
{% endhighlight %}


## Definir el grado alcohólico de un vino
Este ejemplo muestra cómo definir una característica de un vino. En particular definiremos que el volumen alcohólico del Vega Sicilia Únivo 2008 es del 13%.  

En HTML:

{% highlight html %}
<span typeof="ebaco:Vino" about="#vega_sicilia_unico_2008">
  <span property="dc:name">Vega Sicilia Único</span> 
  es un vino con un volumen de alcohol de
  <span property="ebaco:grado_alcoholico_total">13%</span>
  grados.
</span>
{% endhighlight %}

En JSON_LD:

{% highlight json %}
{
  "@id": "http://example.org/#vega_sicilia_unico_2008",
  "@type": "ebaco:Vino",
  "dc:name": "Vega Sicilia 2008",
  "ebaco:grado_alcoholico_total": "13"
}
{% endhighlight %}


## Definir la bodega que elabora un vino

Este ejemplo muestra cómo definir una relación entre dos entidades. En particular definiremos que el vino Vega Sicilia Único 2008 está producido por la bodega Vega Sicilia. 

{% highlight html %}
<span typeof="ebaco:Vino" about="#vega_sicilia_unico_2008">
  <span property="dc:name">Vega Sicilia Único</span> 
  está elaborado por la
  <span rel="ebaco:producido_por">
    <span about="#bodega_vega_sicilia" typeof="ebaco:Bodega" property="foaf:name">Bodega Vega Sicilia</span>
  </span>
</span>
{% endhighlight %}

En JSON-LD:

{% highlight json %}
{
  "@id": "http://example.org/#vega_sicilia_unico_2008",
  "@type": "ebaco:Vino",
  "dc:name": "Vega Sicilia 2008",
  "ebaco:producido_por": {
    "@type": "ebaco:Bodega",
    "foaf:name": "Bodega Vega Sicilia"
  }
}
{% endhighlight %}


## Definir las variedades de uva con las que está hecho un vino

Este ejemplo muestra cómo definir una característica formada por una lista no numerada de entidades. En particular definiremos que el vino Vega Sicilia Único 2008 esta hecho con uvas de las variedades tempranillo, cabernet sauvignon y merlot. 

{% highlight html %}
<span typeof="ebaco:Vino" about="#vega_sicilia_unico_2008">
  <span property="dc:name">Vega Sicilia Único</span> 
  está elaborado con uvas de las variedades
  <ul rel="ebaco:elaborado_con_uva">  
    <li about="#uva_tempranillo" typeof="ebaco:Uva_tinta">Tempranillo</li>
    <li about="#uva_cabernet_sauvignon" typeof="ebaco:Uva_tinta">Cabernet Sauvignon</li>
    <li about="#uva_merlot" typeof="ebaco:Uva_tinta">Merlot</li>
  </ul>
</span>
{% endhighlight %}

En JSON-LD:

{% highlight json %}
{
  "@id": "http://example.org/#vega_sicilia_unico_2008",
  "@type": "ebaco:Vino",
  "dc:name": "Vega Sicilia 2008",
  "ebaco:elaborado_con_uva": [{
    "@id": "http://example.org/#uva_tempranillo",
    "@type": "ebaco:Uva_tinta"
  },{
     "@id": "http://example.org/#uva_cavernet_sauvignon",
    "@type": "ebaco:Uva_tinta"
  },{
    "@id": "http://example.org/#uva_merlot",
    "@type": "ebaco:Uva_tinta"
  }]
}
{% endhighlight %}

