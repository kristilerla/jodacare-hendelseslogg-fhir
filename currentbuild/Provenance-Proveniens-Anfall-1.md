# Hvem registrerte anfallet - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hvem registrerte anfallet**

## Example Provenance: Hvem registrerte anfallet

Provenance for [Observation Anfall](Observation-Hendelse-Anfall-1.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2026-11-08 02:25:00+0100 |
| Activity | create |

**Agents**

* **Type**: Author
  * **who**: [Ahmed Testesen](Practitioner-Ansatt-Ahmed.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "Proveniens-Anfall-1",
  "target" : [{
    "reference" : "Observation/Hendelse-Anfall-1"
  }],
  "recorded" : "2026-11-08T02:25:00+01:00",
  "activity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
      "code" : "CREATE",
      "display" : "create"
    }]
  },
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
      }]
    },
    "who" : {
      "reference" : "Practitioner/Ansatt-Ahmed"
    }
  }]
}

```
