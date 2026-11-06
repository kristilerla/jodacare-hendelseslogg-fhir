# Adferd / uro: Type adferd - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adferd / uro: Type adferd**

## CodeSystem: Adferd / uro: Type adferd (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-adferd-type | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareSvarAdferdType |

 
Svaralternativene for feltet type i malen Adferd / uro. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Adferd / uro: Type adferd](ValueSet-jodacare-svar-adferd-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-svar-adferd-type",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-adferd-type",
  "version" : "0.1.0",
  "name" : "JodaCareSvarAdferdType",
  "title" : "Adferd / uro: Type adferd",
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
  "description" : "Svaralternativene for feltet type i malen Adferd / uro.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "verbal-uro",
    "display" : "Verbal uro"
  },
  {
    "code" : "fysisk-uro",
    "display" : "Fysisk uro"
  },
  {
    "code" : "selvskading",
    "display" : "Selvskading"
  },
  {
    "code" : "aggresjon",
    "display" : "Aggresjon"
  },
  {
    "code" : "romningsforsok",
    "display" : "Rømningsforsøk"
  },
  {
    "code" : "annet",
    "display" : "Annet"
  }]
}

```
