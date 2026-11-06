# Hendelse: Adferd / uro - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hendelse: Adferd / uro**

## Resource Profile: Hendelse: Adferd / uro ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-adferd | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareHendelseAdferd |

 
En hendelse av typen Adferd / uro, med feltene fra standardmalen. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/jodacare.fhir.hendelseslogg|current/StructureDefinition/StructureDefinition-jodacare-hendelse-adferd.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jodacare-hendelse-adferd.csv), [Excel](StructureDefinition-jodacare-hendelse-adferd.xlsx), [Schematron](StructureDefinition-jodacare-hendelse-adferd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jodacare-hendelse-adferd",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-adferd",
  "version" : "0.1.0",
  "name" : "JodaCareHendelseAdferd",
  "title" : "Hendelse: Adferd / uro",
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
  "description" : "En hendelse av typen Adferd / uro, med feltene fra standardmalen.",
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
          "code" : "adferd"
        }]
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "min" : 2
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
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-alvorlighetsgrad-adferd-vs"
      }
    },
    {
      "id" : "Observation.component:type",
      "path" : "Observation.component",
      "sliceName" : "type",
      "short" : "Type adferd",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:type.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "type"
        }]
      }
    },
    {
      "id" : "Observation.component:type.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-adferd-type-vs"
      }
    },
    {
      "id" : "Observation.component:hva_skjedde_for",
      "path" : "Observation.component",
      "sliceName" : "hva_skjedde_for",
      "short" : "Hva skjedde før (antecedent)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hva_skjedde_for.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "hva_skjedde_for"
        }]
      }
    },
    {
      "id" : "Observation.component:hva_skjedde_for.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:beskrivelse",
      "path" : "Observation.component",
      "sliceName" : "beskrivelse",
      "short" : "Beskriv hendelsen (behavior)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:beskrivelse.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "beskrivelse"
        }]
      }
    },
    {
      "id" : "Observation.component:beskrivelse.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:hva_skjedde_etter",
      "path" : "Observation.component",
      "sliceName" : "hva_skjedde_etter",
      "short" : "Hva skjedde etter (consequence)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hva_skjedde_etter.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "hva_skjedde_etter"
        }]
      }
    },
    {
      "id" : "Observation.component:hva_skjedde_etter.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:varighet_minutter",
      "path" : "Observation.component",
      "sliceName" : "varighet_minutter",
      "short" : "Varighet (minutter)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:varighet_minutter.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "varighet_minutter"
        }]
      }
    },
    {
      "id" : "Observation.component:varighet_minutter.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:varighet_minutter.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:varighet_minutter.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "min"
    },
    {
      "id" : "Observation.component:tiltak",
      "path" : "Observation.component",
      "sliceName" : "tiltak",
      "short" : "Tiltak",
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
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-adferd-tiltak-vs"
      }
    },
    {
      "id" : "Observation.component:tiltak_notater",
      "path" : "Observation.component",
      "sliceName" : "tiltak_notater",
      "short" : "Tiltak-notater",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tiltak_notater.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "tiltak_notater"
        }]
      }
    },
    {
      "id" : "Observation.component:tiltak_notater.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
