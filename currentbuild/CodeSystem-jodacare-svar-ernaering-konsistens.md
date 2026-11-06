# Ernæring: Matkonsistens - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ernæring: Matkonsistens**

## CodeSystem: Ernæring: Matkonsistens (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-ernaering-konsistens | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarErnaeringKonsistens |

 
Svaralternativene for feltet konsistens i malen Ernæring. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Ernæring: Matkonsistens](ValueSet-jodacare-svar-ernaering-konsistens-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-ernaering-konsistens",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-ernaering-konsistens",
  "version" : "0.1.0",
  "name" : "JodaCareSvarErnaeringKonsistens",
  "title" : "Ernæring: Matkonsistens",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-06T16:01:05+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Svaralternativene for feltet konsistens i malen Ernæring.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "normal",
    "display" : "Normal"
  },
  {
    "code" : "most",
    "display" : "Most"
  },
  {
    "code" : "findelt",
    "display" : "Findelt"
  },
  {
    "code" : "flytende",
    "display" : "Flytende"
  }]
}

```
