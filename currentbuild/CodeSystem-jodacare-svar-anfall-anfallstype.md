# Anfall: Anfallstype - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anfall: Anfallstype**

## CodeSystem: Anfall: Anfallstype (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-anfall-anfallstype | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarAnfallAnfallstype |

 
Svaralternativene for feltet anfallstype i malen Anfall. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Anfall: Anfallstype](ValueSet-jodacare-svar-anfall-anfallstype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-anfall-anfallstype",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-anfall-anfallstype",
  "version" : "0.1.0",
  "name" : "JodaCareSvarAnfallAnfallstype",
  "title" : "Anfall: Anfallstype",
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
  "description" : "Svaralternativene for feltet anfallstype i malen Anfall.",
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
    "code" : "tonisk-klonisk",
    "display" : "Tonisk-klonisk"
  },
  {
    "code" : "absens",
    "display" : "Absens"
  },
  {
    "code" : "fokalt",
    "display" : "Fokalt"
  },
  {
    "code" : "myoklont",
    "display" : "Myoklont"
  },
  {
    "code" : "annet",
    "display" : "Annet"
  }]
}

```
