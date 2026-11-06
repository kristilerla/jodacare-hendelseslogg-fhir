# Anfall om natten - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anfall om natten**

## Example Observation: Anfall om natten

Profile: [Hendelse: Anfall](StructureDefinition-jodacare-hendelse-anfall.md)

**status**: Final

**code**: Anfall

**subject**: [Ida Testvik Female, DoB: 2013-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)](Patient-Tjenestemottaker-Ida.md)

**effective**: 2026-11-08 02:14:00+0100 --> 2026-11-08 02:17:00+0100

**performer**: [Ahmed Testesen](Practitioner-Ansatt-Ahmed.md)

**note**: 

> 

Ida sovnet igjen kl. 02.40. Hun kan være trøtt på skolen i dag.


> **component****code**: Anfallstype**value**: Tonisk-klonisk

> **component****code**: Varighet (minutter)**value**: 3 min (Details: UCUM codemin = 'min')

> **component****code**: Bevissthet under anfall**value**: Nei

> **component****code**: Alvorlighetsgrad**value**: Moderat

> **component****code**: Nødmedisin gitt?**value**: false

> **component****code**: Hva skjedde etter**value**: Lagt i sideleie. Var urolig i ca. 10 minutter etterpå.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Hendelse-Anfall-1",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-anfall"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsestype",
      "code" : "anfall",
      "display" : "Anfall"
    }]
  },
  "subject" : {
    "reference" : "Patient/Tjenestemottaker-Ida"
  },
  "effectivePeriod" : {
    "start" : "2026-11-08T02:14:00+01:00",
    "end" : "2026-11-08T02:17:00+01:00"
  },
  "performer" : [{
    "reference" : "Practitioner/Ansatt-Ahmed"
  }],
  "note" : [{
    "text" : "Ida sovnet igjen kl. 02.40. Hun kan være trøtt på skolen i dag."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "anfallstype"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-anfall-anfallstype",
        "code" : "tonisk-klonisk",
        "display" : "Tonisk-klonisk"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "varighet_minutter"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "min",
      "system" : "http://unitsofmeasure.org",
      "code" : "min"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "bevissthet"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-anfall-bevissthet",
        "code" : "nei",
        "display" : "Nei"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "alvorlighetsgrad"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-alvorlighetsgrad-anfall",
        "code" : "moderat",
        "display" : "Moderat"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "nodmedisin_gitt"
      }]
    },
    "valueBoolean" : false
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
        "code" : "hva_skjedde_etter"
      }]
    },
    "valueString" : "Lagt i sideleie. Var urolig i ca. 10 minutter etterpå."
  }]
}

```
