# Dobesøk: Mengde - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dobesøk: Mengde**

## CodeSystem: Dobesøk: Mengde (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-dobesok-mengde | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareSvarDobesokMengde |

 
Svaralternativene for feltet mengde i malen Dobesøk. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Dobesøk: Mengde](ValueSet-jodacare-svar-dobesok-mengde-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-dobesok-mengde",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-dobesok-mengde",
  "version" : "0.1.0",
  "name" : "JodaCareSvarDobesokMengde",
  "title" : "Dobesøk: Mengde",
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
  "description" : "Svaralternativene for feltet mengde i malen Dobesøk.",
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
    "code" : "lite",
    "display" : "Lite"
  },
  {
    "code" : "normalt",
    "display" : "Normalt"
  },
  {
    "code" : "mye",
    "display" : "Mye"
  }]
}

```
