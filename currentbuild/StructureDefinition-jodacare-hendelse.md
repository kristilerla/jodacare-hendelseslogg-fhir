# Hendelse - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hendelse**

## Resource Profile: Hendelse ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareHendelse |

 
Felles grunnprofil for en registrert hendelse i hendelsesloggen i JodaCare. En hendelse gjelder én tjenestemottaker, har et tidspunkt og en person som registrerte den. Hver hendelsestype har sin egen profil som bygger på denne. 

**Usages:**

* Derived from this Profile: [Hendelse: Adferd / uro](StructureDefinition-jodacare-hendelse-adferd.md), [Hendelse: Anfall](StructureDefinition-jodacare-hendelse-anfall.md), [Hendelse: Dobesøk](StructureDefinition-jodacare-hendelse-dobesok.md), [Hendelse: Ernæring](StructureDefinition-jodacare-hendelse-ernaering.md)... Show 4 more, [Hendelse: Fall](StructureDefinition-jodacare-hendelse-fall.md), [Hendelse: Humør](StructureDefinition-jodacare-hendelse-humor.md), [Hendelse: Behovsmedisin](StructureDefinition-jodacare-hendelse-medisin.md) and [Hendelse: Søvn](StructureDefinition-jodacare-hendelse-sovn.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/jodacare.fhir.hendelseslogg|current/StructureDefinition/StructureDefinition-jodacare-hendelse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jodacare-hendelse.csv), [Excel](StructureDefinition-jodacare-hendelse.xlsx), [Schematron](StructureDefinition-jodacare-hendelse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jodacare-hendelse",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse",
  "version" : "0.1.0",
  "name" : "JodaCareHendelse",
  "title" : "Hendelse",
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
  "description" : "Felles grunnprofil for en registrert hendelse i hendelsesloggen i JodaCare. En hendelse gjelder én tjenestemottaker, har et tidspunkt og en person som registrerte den. Hver hendelsestype har sin egen profil som bygger på denne.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Hendelsestypen (malen)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-hendelsestype-vs"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Tjenestemottakeren (patient_id)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-tjenestemottaker"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Når hendelsen skjedde (occurred_at), eventuelt med slutt (ended_at)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Hvem som registrerte hendelsen (logged_by)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Fritekst (notes og feltet notater)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "description" : "Feltene i hendelsen skilles fra hverandre på koden, som er feltets key i malen.",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:alvorlighetsgrad",
      "path" : "Observation.component",
      "sliceName" : "alvorlighetsgrad",
      "short" : "Alvorlighetsgrad (severity). Nivåene avhenger av hendelsestypen.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:alvorlighetsgrad.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "alvorlighetsgrad"
        }]
      }
    },
    {
      "id" : "Observation.component:alvorlighetsgrad.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
