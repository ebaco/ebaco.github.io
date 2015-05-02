---
layout: article
title: "Introduction to E-BACO ontology"
image:
  feature: uva_tinta-1024x250.jpg
---


¿What is an ontology?
=====================

Nowadays almost all companies save their business information in electronic databases. Wine sector is not an exception, as wineries, restaurants, bars, shops or wine magazines keep the information about their wines (grape varieties, date of production, making process, chemical composition, organoleptic characteristics, price, etc) in an electronic format.
This, together with the development of Internet and the World Wide Web in particular, allows an unprecedented information sharing around the world, that has boosted a myriad of new applications that are driven in many cases by autonomous software agents, like, for example, search robots or data mining automatas.

However, interoperability between interconnected systems not only requires a way of sharing information (e.g. internet, www) or a language for representing information (e.g. html, xml), but also an agreement in the meaning of data, that is, in their *semantic*. 
In the world of wine there is not yet a shared vocabulary or terminology to refer to the concepts used in the field of oenology.
Visiting some winery or wine shops websites is enough to see that there is a huge heterogeneity in terminology.
They often use different terms referring to the same concept (e.g. in Spain is common to find the terms “tinto tempranillo”, “tinto fino” or “tinto cencibel”, referring to the same kind of wine made with tempranillo grapes), or, what is worse, use the same term referring to different concepts (e.g. in Spain the term “tinto crianza” is used to refer the aging period of wine, but this period is not the same in all the wine regions). 
This ambiguity and heterogeneity in vocabulary make difficult to share information and interoperate between a winery and a wine shop, between a wine shop and a restaurant, or in general among distributed system on the Internet. 

In the last decade a huge amount of research has been done in the field of computer science and artificial intelligence in an effort to provide the basis to interchange semantic of data, giving rise to a new web paradigm known as [*Semantic Web*](http://en.wikipedia.org/wiki/Semantic_Web). 
The Semantic Web, unlike conventional Web that links html documents, links data making their meaning explicit and understandable not only for human but specially for computers and automata. Thereby, development of the Semantic Web involves the creation of shared vocabularies designed to describe particular domains of knowledge. These vocabularies, that are the cornerstone of the Semantic Web, are known as [*Ontologies*](http://en.wikipedia.org/wiki/Ontology_%28information_science%29).

In Artificial Intelligence, an ontology is a formal specification of a shared conceptualization (Gruber 1993), that is, a body of formally represented knowledge that includes the objects, classes of objects, and other entities that exist in some area of interest, the propertides that describe them and the relations that exist among them, as wel as the axioms or rules that define the logic of the system that is modeled.
These models are built in a formal language that is undestandable not only for humans, but also for computers, allowing interoperability among systems that use the same ontology. 
Thus, ontologies represent a shared understanding about concepts and relationships of a specific domain that is meaningful for computers. 
In a simplified view, ontologies could be seen as shared vocabularies about a domain or area of knowledge. 
For example, an ontology of oenology can define the terms “tinto tempranillo” and “tinto cencibel” with no ambiguity and establish that both are synonyms. 
The Semantic Web uses ontologies to give meaning to the data published in the web. 
This allows to make searches with semantic criteria along the relations among terms (something not possible with the actual web search engines as Google, Yahoo or Bing that only use syntactic criteria) and get information about “tinto tempranillo” wines even if the words “tinto cencibel” are typed.

In the last years, the development of ontologies for giving semantic to data published in the web has grown exponentially.
A lot of knowledge areas have adopted standard ontologies for modeling their reality, as for example, the the [Dublin Core ontology](http://dublincore.org/) that defines a semantic vocabulary to describe documents, a subset of which is used by Wikipedia; the [FOAF ontology](http://www.foaf-project.org/) (Friend Of A Friend) that exposes a basic vocabulary for describing people and things; the [GoodRelations ontology](http://purl.org/goodrelations/) used by Google or Yahoo to describe products and transactions in e-commerce; or the [GeneOntology](http://geneontology.org/) to describe genes and proteins of living beings.

Unfortunately, there is not a standard ontology in the oenology field, and thus, we have addressed this task building an ontology for wines that we have named E-Baco.

¿What is E-baco ontology?
============================

E-Baco ontology defines a precise vocabulary for representing knwoledge in the domain of oenology. 
A ontology is composed of objects or entities of different types. 
The main entities are: (a) classes that represent abstract concepts (e.g. wine); (b) properties of classes that describe characteristics of concepts (e.g. alcohol content); (c) instances of classes that represent individuals of concrete examples of concepts (e.g. Mathis 2007 wine); (d) relations that describe the connections or associations between two concepts or instances (e.g. the pairing relation between a wine and a food); (e) axioms that establish logical rules satisfied by concepts, properties, instances and relations (e.g. white wine and red wine are disjoint classes, i.e. they can’t share any instance, or white wines are made only with white grapes).
The main relationships in ontologies are the *subclass_of* relation that expresses that a class is subsumed by another, that is, that all the instances of a class are also instances of the other class (e.g. red wine is a subclass of wine); and the *is_a* relation, that expresses that an individual is an instance of a class.
These relations can be expressed as directed graph like in the next figure.

![image](/images/e-baco-core_taxonomy.png)

Through these relations, concepts and their instances are organized in a taxonomy that is the backbone of the ontology.


The E-Baco ontology is a multipurpose ontology that has been designed to allow the modelling of different scenarios about wine: the simple description of a wine for non experts; the winemaking process (from chemical and biological point of view and the manufacturer perspective), the marketing of wine (e-commerce), the comparison of wines (from the point of view of tasting), or the pairing of wine and food (from the nutritional point of view), just to name a few. 
Thus, the ontology includes the main concepts and relations used in these scenarios. 

According to the domain of application and the level of complexity, the ontology has been divided in several modules that comprise the vocabulary required for the domain of application and the level of modelling. At the present time the ontology E-Baco has three modules: *E-Baco-Core*,  *E-Baco-Tasting* and *E-Baco-Winemaking*.

## E-Baco-Core

The E-Baco-Core module is the lower level and defines the vocabulary for a basic description of wines. 
It includes very basic classes and relations that are the foundation of the E-Baco ontology. 
This module is oriented towards standard wine consumers since it includes main characteristics of the product. 
Among the properties of the basic level are the grape varieties of the wine, wine region, winery, etc. 
Each one of these basic properties has in turn a number of properties that describe them. 
For instance, the winery is linked to other basic properties as contact address, telephone and web page of the winery.

## E-Baco-Tasting

The E-Baco-Tasting module defines the vocabulary to describe wine tastings and pairing between wine and food. 
It contains the vocabulary of the E-Baco-Core module, but also adds new classes and relations to model the tasting description of wines, the organoleptic characteristics of wine (appearance, nose and palate), the recommended dishes for a wine and some advises for their consumption. 
This module is directed to demanding consumers, wine shops, restaurants, bars and sommeliers. 
The tasting vocabulary, in particular, has been inspired by the [Wine & Spirit Education Trust](http://www.wsetglobal.com/documents/dip_satcardwine_2012_eng_new.pdf) recommendations and comprises the main organoleptic properties that are used by the sommeliers to describe the wine and its quality. 

## E-Baco-Winemaking

The E-Baco-Winemaking module presents a more technical vocabulary to describe the winemaking process. It also contains the vocabulary of the E-Baco-Core module, but also adds a lot of classes and relations to model the process and the main variables that affect the winemaking. 
This is the higher level module and is restricted to the description of technical details of the wine, their making process and the winery. 
For this reason, this level is specially interesting for wine producers, specialized retail stores, enologists, etc. The properties of this module include technical details of the wine, the vineyard and the production. 
For the wine descriptions at this level, quantitative properties as acidity, fermentation time, sugar content, sulphur dioxide, polyphenols, and other chemical characteristics are used. 
The properties of the wineyard include generic properties associated to the wine region (pluviometry, height above sea level, hours of sunshine, …) and specific properties of the vineyard (surface, type of soil, latitude and longitude, training system, …). 
Finally, the technical properties of the wine production process could comprise some sensitive information as the yeast strain used for fermentation process, or the precise time of each stage of the vinification.

