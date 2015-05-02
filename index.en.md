---
layout: archive
title: "E-Baco Ontology"
excerpt: "A multipurpose ontology for oenology"
language: en
image:
  feature: pampana_roja-1024x250.jpg
id: home
---

Welcome to the E-Baco ontology website, an ontology for publishg wine data on the Semantic Web.


---

### Novedades

<div class="tiles">
<!-- Filter posts by language -->
{% language_array site.posts language_posts page.language %}
{% for post in language_posts limit:8 %}
	{% include post-grid.html %}
{% endfor %}
</div>
