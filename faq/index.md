---
layout: article
title: "Preguntas Frecuentes (FAQ)"
date: 2014-12-20
modified: 2015-01-05
image:
  feature: corchos-1024x250.jpg
---

{% assign ontologies_faqs = site.faqs | where: "type", "ontologies" | sort: "order" %}
{% assign ebaco_faqs = site.faqs | where: "type", "ebaco" | sort: "order" %}

<nav class="toc">
	<ul>
		<li><h6>Cuestiones generales sobre ontologías</h6></li>
{% for faq in ontologies_faqs %}
<li><a href="{{ faq.url }}">{{ faq.title }}</a></li>
{% endfor %}
		<li><h6>Cuestiones específicas sobre la ontología E-BACO</h6></li>
{% for faq in ebaco_faqs %}
<li><a href="{{ faq.url }}">{{ faq.title }}</a></li>
{% endfor %}
	</ul>
</nav>

<!-- /.toc-left -->

{% for faq in ontologies_faqs %}
<h2><a href="{{ faq.url }}">{{ faq.title }}</a></h2>
{{ faq.content }}
<hr />
{% endfor %}

{% for faq in ebaco_faqs %}
<h2><a href="{{ faq.url }}">{{ faq.title }}</a></h2>
{{ faq.content }}
<hr />
{% endfor %}
