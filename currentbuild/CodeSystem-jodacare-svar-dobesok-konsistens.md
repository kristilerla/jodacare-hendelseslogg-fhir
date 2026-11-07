# Dobesøk: Konsistens (Bristol 1-7) - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dobesøk: Konsistens (Bristol 1-7)**

## CodeSystem: Dobesøk: Konsistens (Bristol 1-7) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-dobesok-konsistens | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareSvarDobesokKonsistens |

 
Svaralternativene for feltet konsistens i malen Dobesøk. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Dobesøk: Konsistens (Bristol 1-7)](ValueSet-jodacare-svar-dobesok-konsistens-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-dobesok-konsistens",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-dobesok-konsistens",
  "version" : "0.1.0",
  "name" : "JodaCareSvarDobesokKonsistens",
  "title" : "Dobesøk: Konsistens (Bristol 1-7)",
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
  "description" : "Svaralternativene for feltet konsistens i malen Dobesøk.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "1 - Hard"
  },
  {
    "code" : "2",
    "display" : "2 - Klumpete"
  },
  {
    "code" : "3",
    "display" : "3 - Pølseformet"
  },
  {
    "code" : "4",
    "display" : "4 - Glatt"
  },
  {
    "code" : "5",
    "display" : "5 - Myk"
  },
  {
    "code" : "6",
    "display" : "6 - Grøtaktig"
  },
  {
    "code" : "7",
    "display" : "7 - Flytende"
  }]
}

```
