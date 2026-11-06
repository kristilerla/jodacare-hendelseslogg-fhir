# Hendelse: Humør - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hendelse: Humør**

## Resource Profile: Hendelse: Humør ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-humor | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareHendelseHumor |

 
En hendelse av typen Humør, med feltene fra standardmalen. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/jodacare.fhir.hendelseslogg|current/StructureDefinition/StructureDefinition-jodacare-hendelse-humor.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jodacare-hendelse-humor.csv), [Excel](StructureDefinition-jodacare-hendelse-humor.xlsx), [Schematron](StructureDefinition-jodacare-hendelse-humor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jodacare-hendelse-humor",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-humor",
  "version" : "0.1.0",
  "name" : "JodaCareHendelseHumor",
  "title" : "Hendelse: Humør",
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
  "description" : "En hendelse av typen Humør, med feltene fra standardmalen.",
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
  "baseDefinition" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsestype",
          "code" : "humor"
        }]
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "min" : 1
    },
    {
      "id" : "Observation.component:alvorlighetsgrad",
      "path" : "Observation.component",
      "sliceName" : "alvorlighetsgrad",
      "max" : "0"
    },
    {
      "id" : "Observation.component:stemning",
      "path" : "Observation.component",
      "sliceName" : "stemning",
      "short" : "Stemning",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stemning.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "stemning"
        }]
      }
    },
    {
      "id" : "Observation.component:stemning.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-humor-stemning-vs"
      }
    },
    {
      "id" : "Observation.component:energi",
      "path" : "Observation.component",
      "sliceName" : "energi",
      "short" : "Energinivå",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:energi.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "energi"
        }]
      }
    },
    {
      "id" : "Observation.component:energi.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-humor-energi-vs"
      }
    },
    {
      "id" : "Observation.component:sosial",
      "path" : "Observation.component",
      "sliceName" : "sosial",
      "short" : "Sosial",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sosial.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "sosial"
        }]
      }
    },
    {
      "id" : "Observation.component:sosial.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-humor-sosial-vs"
      }
    }]
  }
}

```
