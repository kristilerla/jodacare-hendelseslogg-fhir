# Humør: Sosial - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Humør: Sosial**

## CodeSystem: Humør: Sosial (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-humor-sosial | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarHumorSosial |

 
Svaralternativene for feltet sosial i malen Humør. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Humør: Sosial](ValueSet-jodacare-svar-humor-sosial-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-humor-sosial",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-humor-sosial",
  "version" : "0.1.0",
  "name" : "JodaCareSvarHumorSosial",
  "title" : "Humør: Sosial",
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
  "description" : "Svaralternativene for feltet sosial i malen Humør.",
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
    "code" : "utadvendt",
    "display" : "Utadvendt"
  },
  {
    "code" : "normal",
    "display" : "Normal"
  },
  {
    "code" : "tilbaketrukket",
    "display" : "Tilbaketrukket"
  }]
}

```
