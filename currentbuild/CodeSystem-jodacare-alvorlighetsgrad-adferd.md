# Alvorlighetsgrad: Adferd / uro - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alvorlighetsgrad: Adferd / uro**

## CodeSystem: Alvorlighetsgrad: Adferd / uro (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-alvorlighetsgrad-adferd | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareAlvorlighetsgradAdferd |

 
Nivåene for alvorlighetsgrad i malen Adferd / uro. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Alvorlighetsgrad: Adferd / uro](ValueSet-jodacare-alvorlighetsgrad-adferd-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-alvorlighetsgrad-adferd",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-alvorlighetsgrad-adferd",
  "version" : "0.1.0",
  "name" : "JodaCareAlvorlighetsgradAdferd",
  "title" : "Alvorlighetsgrad: Adferd / uro",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-07T05:45:39+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Nivåene for alvorlighetsgrad i malen Adferd / uro.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "lav",
    "display" : "Lav"
  },
  {
    "code" : "middels",
    "display" : "Middels"
  },
  {
    "code" : "hoy",
    "display" : "Høy"
  }]
}

```
