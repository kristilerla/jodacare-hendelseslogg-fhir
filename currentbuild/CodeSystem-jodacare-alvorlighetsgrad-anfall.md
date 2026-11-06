# Alvorlighetsgrad: Anfall - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alvorlighetsgrad: Anfall**

## CodeSystem: Alvorlighetsgrad: Anfall (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-alvorlighetsgrad-anfall | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareAlvorlighetsgradAnfall |

 
Nivåene for alvorlighetsgrad i malen Anfall. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Alvorlighetsgrad: Anfall](ValueSet-jodacare-alvorlighetsgrad-anfall-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-alvorlighetsgrad-anfall",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-alvorlighetsgrad-anfall",
  "version" : "0.1.0",
  "name" : "JodaCareAlvorlighetsgradAnfall",
  "title" : "Alvorlighetsgrad: Anfall",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-06T16:56:31+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Nivåene for alvorlighetsgrad i malen Anfall.",
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
    "code" : "mild",
    "display" : "Mild"
  },
  {
    "code" : "moderat",
    "display" : "Moderat"
  },
  {
    "code" : "alvorlig",
    "display" : "Alvorlig"
  }]
}

```
