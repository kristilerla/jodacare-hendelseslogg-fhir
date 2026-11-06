# Humør: Energinivå - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Humør: Energinivå**

## CodeSystem: Humør: Energinivå (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-humor-energi | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarHumorEnergi |

 
Svaralternativene for feltet energi i malen Humør. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Humør: Energinivå](ValueSet-jodacare-svar-humor-energi-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-humor-energi",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-humor-energi",
  "version" : "0.1.0",
  "name" : "JodaCareSvarHumorEnergi",
  "title" : "Humør: Energinivå",
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
  "description" : "Svaralternativene for feltet energi i malen Humør.",
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
    "code" : "hoyt",
    "display" : "Høyt"
  },
  {
    "code" : "normalt",
    "display" : "Normalt"
  },
  {
    "code" : "lavt",
    "display" : "Lavt"
  }]
}

```
