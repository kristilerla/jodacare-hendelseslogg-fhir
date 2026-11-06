# Ernæring: Måltid - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ernæring: Måltid**

## CodeSystem: Ernæring: Måltid (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-ernaering-maltid | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarErnaeringMaltid |

 
Svaralternativene for feltet maltid i malen Ernæring. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Ernæring: Måltid](ValueSet-jodacare-svar-ernaering-maltid-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-ernaering-maltid",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-ernaering-maltid",
  "version" : "0.1.0",
  "name" : "JodaCareSvarErnaeringMaltid",
  "title" : "Ernæring: Måltid",
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
  "description" : "Svaralternativene for feltet maltid i malen Ernæring.",
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
    "code" : "frokost",
    "display" : "Frokost"
  },
  {
    "code" : "lunsj",
    "display" : "Lunsj"
  },
  {
    "code" : "middag",
    "display" : "Middag"
  },
  {
    "code" : "kvelds",
    "display" : "Kvelds"
  },
  {
    "code" : "mellommaltid",
    "display" : "Mellommåltid"
  }]
}

```
