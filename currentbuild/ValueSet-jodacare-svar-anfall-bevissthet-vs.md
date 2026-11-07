# Anfall: Bevissthet under anfall - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anfall: Bevissthet under anfall**

## ValueSet: Anfall: Bevissthet under anfall (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-anfall-bevissthet-vs | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareSvarAnfallBevissthetVS |

 
Gyldige svar for feltet bevissthet i malen Anfall. 

 **References** 

* [Hendelse: Anfall](StructureDefinition-jodacare-hendelse-anfall.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jodacare-svar-anfall-bevissthet-vs",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ValueSet/jodacare-svar-anfall-bevissthet-vs",
  "version" : "0.1.0",
  "name" : "JodaCareSvarAnfallBevissthetVS",
  "title" : "Anfall: Bevissthet under anfall",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-07T05:45:39+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Gyldige svar for feltet bevissthet i malen Anfall.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-svar-anfall-bevissthet"
    }]
  }
}

```
