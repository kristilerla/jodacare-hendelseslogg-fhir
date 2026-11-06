# Natten etter anfallet - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Natten etter anfallet**

## Example Observation: Natten etter anfallet

Profile: [Hendelse: Søvn](StructureDefinition-jodacare-hendelse-sovn.md)

**status**: Final

**code**: Søvn

**subject**: [Ida Testvik Female, DoB: 2013-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Tjenestemottaker-Ida.md)

**effective**: 2026-11-08 07:00:00+0100

**performer**: [Ahmed Testesen](Practitioner-Ansatt-Ahmed.md)

> **component****code**: La seg**value**: 20:30:00

> **component****code**: Sovnet ca.**value**: 21:00:00

> **component****code**: Antall oppvåkninger**value**: 1

> **component****code**: Stod opp**value**: 06:45:00

> **component****code**: Søvnkvalitet**value**: Urolig



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Hendelse-Sovn-1",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-sovn"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsestype",
      "code" : "sovn",
      "display" : "Søvn"
    }]
  },
  "subject" : {
    "reference" : "Patient/Tjenestemottaker-Ida"
  },
  "effectiveDateTime" : "2026-11-08T07:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/Ansatt-Ahmed"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "la_seg"
      }]
    },
    "valueTime" : "20:30:00"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "sovnet"
      }]
    },
    "valueTime" : "21:00:00"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "oppvakninger"
      }]
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "stod_opp"
      }]
    },
    "valueTime" : "06:45:00"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "kvalitet"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-sovn-kvalitet",
        "code" : "urolig",
        "display" : "Urolig"
      }]
    }
  }]
}

```
