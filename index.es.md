---
layout: archive
title: "Ontología E-Baco"
excerpt: "Una ontología multipropósito sobre Enología"
language: es
image:
  feature: pampana_roja-1024x250.jpg
id: home
---

Bienvenido/a al sitio web de la ontología E-Baco, una ontología publicar datos sobre vinos en la Web Semántica.

---

### Novedades

<div class="tiles">
<!-- Filter posts by language -->
{% language_array site.posts language_posts page.language %}
{% for post in language_posts limit:8 %}
	{% include post-grid.html %}
{% endfor %}
</div>
