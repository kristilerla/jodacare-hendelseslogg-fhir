# Hendelse: Søvn - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hendelse: Søvn**

## Resource Profile: Hendelse: Søvn ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-sovn | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareHendelseSovn |

 
En hendelse av typen Søvn, med feltene fra standardmalen. 

**Usages:**

* Examples for this Profile: [Observation/Hendelse-Sovn-1](Observation-Hendelse-Sovn-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/jodacare.fhir.hendelseslogg|current/StructureDefinition/StructureDefinition-jodacare-hendelse-sovn.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jodacare-hendelse-sovn.csv), [Excel](StructureDefinition-jodacare-hendelse-sovn.xlsx), [Schematron](StructureDefinition-jodacare-hendelse-sovn.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jodacare-hendelse-sovn",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-sovn",
  "version" : "0.1.0",
  "name" : "JodaCareHendelseSovn",
  "title" : "Hendelse: Søvn",
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
  "description" : "En hendelse av typen Søvn, med feltene fra standardmalen.",
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
          "code" : "sovn"
        }]
      }
    },
    {
      "id" : "Observation.component:alvorlighetsgrad",
      "path" : "Observation.component",
      "sliceName" : "alvorlighetsgrad",
      "max" : "0"
    },
    {
      "id" : "Observation.component:la_seg",
      "path" : "Observation.component",
      "sliceName" : "la_seg",
      "short" : "La seg",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:la_seg.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "la_seg"
        }]
      }
    },
    {
      "id" : "Observation.component:la_seg.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "Observation.component:sovnet",
      "path" : "Observation.component",
      "sliceName" : "sovnet",
      "short" : "Sovnet ca.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sovnet.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "sovnet"
        }]
      }
    },
    {
      "id" : "Observation.component:sovnet.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "Observation.component:oppvakninger",
      "path" : "Observation.component",
      "sliceName" : "oppvakninger",
      "short" : "Antall oppvåkninger",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:oppvakninger.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "oppvakninger"
        }]
      }
    },
    {
      "id" : "Observation.component:oppvakninger.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:stod_opp",
      "path" : "Observation.component",
      "sliceName" : "stod_opp",
      "short" : "Stod opp",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stod_opp.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "stod_opp"
        }]
      }
    },
    {
      "id" : "Observation.component:stod_opp.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "Observation.component:kvalitet",
      "path" : "Observation.component",
      "sliceName" : "kvalitet",
      "short" : "Søvnkvalitet",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:kvalitet.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
          "code" : "kvalitet"
        }]
      }
    },
    {
      "id" : "Observation.component:kvalitet.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-sovn-kvalitet-vs"
      }
    }]
  }
}

```
