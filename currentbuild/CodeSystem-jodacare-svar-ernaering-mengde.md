# Ernæring: Mengde spist - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ernæring: Mengde spist**

## CodeSystem: Ernæring: Mengde spist (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-ernaering-mengde | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarErnaeringMengde |

 
Svaralternativene for feltet mengde i malen Ernæring. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Ernæring: Mengde spist](ValueSet-jodacare-svar-ernaering-mengde-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-ernaering-mengde",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-ernaering-mengde",
  "version" : "0.1.0",
  "name" : "JodaCareSvarErnaeringMengde",
  "title" : "Ernæring: Mengde spist",
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
  "description" : "Svaralternativene for feltet mengde i malen Ernæring.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "ingenting",
    "display" : "Ingenting"
  },
  {
    "code" : "lite",
    "display" : "Lite"
  },
  {
    "code" : "halvparten",
    "display" : "Halvparten"
  },
  {
    "code" : "det-meste",
    "display" : "Det meste"
  },
  {
    "code" : "alt",
    "display" : "Alt"
  }]
}

```
