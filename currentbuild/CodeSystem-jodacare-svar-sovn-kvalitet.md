# Søvn: Søvnkvalitet - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Søvn: Søvnkvalitet**

## CodeSystem: Søvn: Søvnkvalitet (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-sovn-kvalitet | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarSovnKvalitet |

 
Svaralternativene for feltet kvalitet i malen Søvn. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Søvn: Søvnkvalitet](ValueSet-jodacare-svar-sovn-kvalitet-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-sovn-kvalitet",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-sovn-kvalitet",
  "version" : "0.1.0",
  "name" : "JodaCareSvarSovnKvalitet",
  "title" : "Søvn: Søvnkvalitet",
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
  "description" : "Svaralternativene for feltet kvalitet i malen Søvn.",
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
    "code" : "god",
    "display" : "God"
  },
  {
    "code" : "urolig",
    "display" : "Urolig"
  },
  {
    "code" : "darlig",
    "display" : "Dårlig"
  }]
}

```
