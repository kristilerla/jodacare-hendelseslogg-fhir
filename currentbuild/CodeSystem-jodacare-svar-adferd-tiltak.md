# Adferd / uro: Tiltak - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adferd / uro: Tiltak**

## CodeSystem: Adferd / uro: Tiltak (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-adferd-tiltak | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarAdferdTiltak |

 
Svaralternativene for feltet tiltak i malen Adferd / uro. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Adferd / uro: Tiltak](ValueSet-jodacare-svar-adferd-tiltak-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-adferd-tiltak",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-adferd-tiltak",
  "version" : "0.1.0",
  "name" : "JodaCareSvarAdferdTiltak",
  "title" : "Adferd / uro: Tiltak",
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
  "description" : "Svaralternativene for feltet tiltak i malen Adferd / uro.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "avledning",
    "display" : "Avledning"
  },
  {
    "code" : "tilbaketrekning",
    "display" : "Tilbaketrekning"
  },
  {
    "code" : "samtale",
    "display" : "Samtale"
  },
  {
    "code" : "fysisk-holding",
    "display" : "Fysisk holding"
  },
  {
    "code" : "medisin",
    "display" : "Medisin"
  },
  {
    "code" : "annet",
    "display" : "Annet"
  }]
}

```
