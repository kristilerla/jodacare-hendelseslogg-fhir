# Hendelse: Fall - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hendelse: Fall**

## Resource Profile: Hendelse: Fall ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-fall | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareHendelseFall |

 
En hendelse av typen Fall, med feltene fra standardmalen. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/jodacare.fhir.hendelseslogg|current/StructureDefinition/StructureDefinition-jodacare-hendelse-fall.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jodacare-hendelse-fall.csv), [Excel](StructureDefinition-jodacare-hendelse-fall.xlsx), [Schematron](StructureDefinition-jodacare-hendelse-fall.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jodacare-hendelse-fall",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-fall",
  "version" : "0.1.0",
  "name" : "JodaCareHendelseFall",
  "title" : "Hendelse: Fall",
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
  "description" : "En hendelse av typen Fall, med feltene fra standardmalen.",
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
          "code" : "fall"
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
      "sliceName" : "alvorlighetsgrad"
    },
    {
      "id" : "Observation.component:alvorlighetsgrad.value[x]",
      "path" : "Observation.component.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-alvorlighetsgrad-fall-vs"
      }
    },
    {
      "id" : "Observation.component:sted",
      "path" : "Observation.component",
      "sliceName" : "sted",
      "short" : "Hvor skjedde fallet",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sted.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "sted"
        }]
      }
    },
    {
      "id" : "Observation.component:sted.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:aktivitet",
      "path" : "Observation.component",
      "sliceName" : "aktivitet",
      "short" : "Hva gjorde personen",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:aktivitet.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "aktivitet"
        }]
      }
    },
    {
      "id" : "Observation.component:aktivitet.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:skade",
      "path" : "Observation.component",
      "sliceName" : "skade",
      "short" : "Skadebeskrivelse",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:skade.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "skade"
        }]
      }
    },
    {
      "id" : "Observation.component:skade.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:tiltak",
      "path" : "Observation.component",
      "sliceName" : "tiltak",
      "short" : "Tiltak utført",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tiltak.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "tiltak"
        }]
      }
    },
    {
      "id" : "Observation.component:tiltak.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:lege_kontaktet",
      "path" : "Observation.component",
      "sliceName" : "lege_kontaktet",
      "short" : "Lege kontaktet",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lege_kontaktet.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "lege_kontaktet"
        }]
      }
    },
    {
      "id" : "Observation.component:lege_kontaktet.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:parorende_varslet",
      "path" : "Observation.component",
      "sliceName" : "parorende_varslet",
      "short" : "Pårørende varslet",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:parorende_varslet.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "parorende_varslet"
        }]
      }
    },
    {
      "id" : "Observation.component:parorende_varslet.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
