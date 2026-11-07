# Anfall: Bevissthet under anfall - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anfall: Bevissthet under anfall**

## CodeSystem: Anfall: Bevissthet under anfall (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-anfall-bevissthet | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareSvarAnfallBevissthet |

 
Svaralternativene for feltet bevissthet i malen Anfall. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Anfall: Bevissthet under anfall](ValueSet-jodacare-svar-anfall-bevissthet-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-anfall-bevissthet",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-anfall-bevissthet",
  "version" : "0.1.0",
  "name" : "JodaCareSvarAnfallBevissthet",
  "title" : "Anfall: Bevissthet under anfall",
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
  "description" : "Svaralternativene for feltet bevissthet i malen Anfall.",
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
    "code" : "ja",
    "display" : "Ja"
  },
  {
    "code" : "nei",
    "display" : "Nei"
  },
  {
    "code" : "delvis",
    "display" : "Delvis"
  }]
}

```
