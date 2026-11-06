# Dobesøk: Type - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dobesøk: Type**

## CodeSystem: Dobesøk: Type (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-dobesok-type | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarDobesokType |

 
Svaralternativene for feltet type i malen Dobesøk. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Dobesøk: Type](ValueSet-jodacare-svar-dobesok-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-dobesok-type",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-dobesok-type",
  "version" : "0.1.0",
  "name" : "JodaCareSvarDobesokType",
  "title" : "Dobesøk: Type",
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
  "description" : "Svaralternativene for feltet type i malen Dobesøk.",
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
    "code" : "urin",
    "display" : "Urin"
  },
  {
    "code" : "avforing",
    "display" : "Avføring"
  },
  {
    "code" : "begge",
    "display" : "Begge"
  }]
}

```
