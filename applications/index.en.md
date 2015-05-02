---
layout: article
title: "E-Baco ontology applications"
image:
  feature: sacacorchos-1024x250.jpg
---

The main advantage of publishing wine data using the E-Baco ontology is to give semantic meaning to data.
This means that information about wines will be comprehensible for software agents, and this open the door to a lot of new applications, some of them are presented below:

- **Linked data**. Wine databases that use the E-Baco ontology can be linked in an global web database through which it can access world wide distributed data about wines. 
Wine data can even be linked with other related semantic data out of the oenology domain, and be integrated in resources like [DBpedia](http://wiki.dbpedia.org/), the semantic version of Wikipedia. 
- **Data sharing**. An application derived from linked data is information sharing. 
Agents that use the E-Baco ontology (wineries, shops, restaurants, magazines, sommeliers, etc.) will have instant access to the information published by the others with no ambiguity. 
For instance, an ecommerce store can publish in their website information about wines from a winery, without having its own database.
In this way, every time the winery updated the information about their wines, the changes will be reflected automatically in the website store. 
- **Semantic search**. One of the most important applications of Semantic Web is the possibility of making semantic queries that go beyond syntactic criteria and include semantic relationships between concepts. 
For instance, we can query the Semantic Web for crianza red wines from Spain elaborated with more than two grape varieties and an alcohol content lower than 14%, and the search engine will return wines with different aging times according to the meaning of “crianza” in every appellation. 
The queries have to be formulated in a semantic query language like [SPARQL](http://www.w3.org/TR/sparql11-overview/) throw RDF triplets servers like the [Apache Jena TDB](http://jena.apache.org/documentation/tdb/) and [OpenLink Virtuoso](http://www.w3.org/2001/sw/wiki/OpenLink_Virtuoso), or using semantic search engines like [Swoogle](http://swoogle.umbc.edu/), [Glimmer](http://glimmer.research.yahoo.com/).
- **Web services**. Other application derived from linked data is the development of specialized web services. 
These services can use the ontology to browse the distributed data sources in the Semantic Web to perform specific tasks like comparing or recommending wines.
- **Semantic reasoning**. The properties and relations defined by the ontology allow logical inferences that can derive new knowledge or detect incoherences in the knowledge base. 
For instance, using the ontology a reasoner can detect an error of classifying a wine as “crianza” when it had less than three months aging. There exists specialized reasoners for the Semantic Web like [HermiT](http://hermit-reasoner.com/), [Fact++](http://owl.man.ac.uk/factplusplus/) or [Pellet](http://clarkparsia.com/pellet/). 
- **Database integration**. Integrate two or more databases of a common domain is a difficult task because they use different relational schemas. 
If the databases use the E-Baco ontology to annotate their schemas, the fusion is very easy. 
- **Ad hoc applications**. Finally it’s possible to develop ad hoc applications that uses the ontology to perform concrete tasks like, for example, analyzing the winemaking process of wines and proposing variations to improve wines. 

