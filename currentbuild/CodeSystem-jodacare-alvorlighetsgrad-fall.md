# Alvorlighetsgrad: Fall - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alvorlighetsgrad: Fall**

## CodeSystem: Alvorlighetsgrad: Fall (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-alvorlighetsgrad-fall | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareAlvorlighetsgradFall |

 
Nivåene for alvorlighetsgrad i malen Fall. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Alvorlighetsgrad: Fall](ValueSet-jodacare-alvorlighetsgrad-fall-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-alvorlighetsgrad-fall",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-alvorlighetsgrad-fall",
  "version" : "0.1.0",
  "name" : "JodaCareAlvorlighetsgradFall",
  "title" : "Alvorlighetsgrad: Fall",
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
  "description" : "Nivåene for alvorlighetsgrad i malen Fall.",
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
    "code" : "uskadet",
    "display" : "Uskadet"
  },
  {
    "code" : "lett-skadet",
    "display" : "Lett skadet"
  },
  {
    "code" : "alvorlig-skadet",
    "display" : "Alvorlig skadet"
  }]
}

```
