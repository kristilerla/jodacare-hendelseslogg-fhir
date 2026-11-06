# Tjenestemottaker - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tjenestemottaker**

## Resource Profile: Tjenestemottaker ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-tjenestemottaker | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareTjenestemottaker |

 
Personen hendelsen gjelder. Bygger på pasientprofilen i no-basis. 

**Usages:**

* Refer to this Profile: [Hendelse](StructureDefinition-jodacare-hendelse.md)
* Examples for this Profile: [Patient/Tjenestemottaker-Ida](Patient-Tjenestemottaker-Ida.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/jodacare.fhir.hendelseslogg|current/StructureDefinition/StructureDefinition-jodacare-tjenestemottaker.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jodacare-tjenestemottaker.csv), [Excel](StructureDefinition-jodacare-tjenestemottaker.xlsx), [Schematron](StructureDefinition-jodacare-tjenestemottaker.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jodacare-tjenestemottaker",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-tjenestemottaker",
  "version" : "0.1.0",
  "name" : "JodaCareTjenestemottaker",
  "title" : "Tjenestemottaker",
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
  "description" : "Personen hendelsen gjelder. Bygger på pasientprofilen i no-basis.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    }]
  }
}

```
