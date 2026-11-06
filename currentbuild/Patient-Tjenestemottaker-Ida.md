# Ida Testvik - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ida Testvik**

## Example Patient: Ida Testvik

Profile: [Tjenestemottaker](StructureDefinition-jodacare-tjenestemottaker.md)

Ida Testvik Female, DoB: 2013-03-13 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#13031353453)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Tjenestemottaker-Ida",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-tjenestemottaker"]
  },
  "identifier" : [{
    "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
    "value" : "13031353453"
  }],
  "name" : [{
    "family" : "Testvik",
    "given" : ["Ida"]
  }],
  "gender" : "female",
  "birthDate" : "2013-03-13"
}

```
