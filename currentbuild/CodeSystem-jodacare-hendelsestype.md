# Hendelsestyper i JodaCare - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hendelsestyper i JodaCare**

## CodeSystem: Hendelsestyper i JodaCare (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsestype | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareHendelsestype |

 
De åtte standardmalene i hendelsesloggen i JodaCare. Et tjenestested kan i tillegg lage egne hendelsestyper. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Hendelsestyper i JodaCare](ValueSet-jodacare-hendelsestype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-hendelsestype",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsestype",
  "version" : "0.1.0",
  "name" : "JodaCareHendelsestype",
  "title" : "Hendelsestyper i JodaCare",
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
  "description" : "De åtte standardmalene i hendelsesloggen i JodaCare. Et tjenestested kan i tillegg lage egne hendelsestyper.",
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
    "code" : "anfall",
    "display" : "Anfall"
  },
  {
    "code" : "adferd",
    "display" : "Adferd / uro"
  },
  {
    "code" : "dobesok",
    "display" : "Dobesøk"
  },
  {
    "code" : "fall",
    "display" : "Fall"
  },
  {
    "code" : "sovn",
    "display" : "Søvn"
  },
  {
    "code" : "ernaering",
    "display" : "Ernæring"
  },
  {
    "code" : "medisin",
    "display" : "Behovsmedisin"
  },
  {
    "code" : "humor",
    "display" : "Humør"
  }]
}

```
