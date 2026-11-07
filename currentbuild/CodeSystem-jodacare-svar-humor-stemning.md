# Humør: Stemning - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Humør: Stemning**

## CodeSystem: Humør: Stemning (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-humor-stemning | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareSvarHumorStemning |

 
Svaralternativene for feltet stemning i malen Humør. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Humør: Stemning](ValueSet-jodacare-svar-humor-stemning-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-humor-stemning",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-humor-stemning",
  "version" : "0.1.0",
  "name" : "JodaCareSvarHumorStemning",
  "title" : "Humør: Stemning",
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
  "description" : "Svaralternativene for feltet stemning i malen Humør.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "veldig-glad",
    "display" : "Veldig glad"
  },
  {
    "code" : "glad",
    "display" : "Glad"
  },
  {
    "code" : "noytral",
    "display" : "Nøytral"
  },
  {
    "code" : "trist",
    "display" : "Trist"
  },
  {
    "code" : "veldig-trist",
    "display" : "Veldig trist"
  },
  {
    "code" : "engstelig",
    "display" : "Engstelig"
  },
  {
    "code" : "sint",
    "display" : "Sint"
  },
  {
    "code" : "forvirret",
    "display" : "Forvirret"
  }]
}

```
