# Felter i hendelser i JodaCare - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Felter i hendelser i JodaCare**

## CodeSystem: Felter i hendelser i JodaCare (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaCareHendelsesfelt |

 
Feltene (key) i standardmalene. Samme key kan brukes i flere maler, og betydningen avgjøres da av hendelsestypen. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jodacare-hendelsesfelt",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/CodeSystem/jodacare-hendelsesfelt",
  "version" : "0.1.0",
  "name" : "JodaCareHendelsesfelt",
  "title" : "Felter i hendelser i JodaCare",
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
  "description" : "Feltene (key) i standardmalene. Samme key kan brukes i flere maler, og betydningen avgjøres da av hendelsestypen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 35,
  "concept" : [{
    "code" : "alvorlighetsgrad",
    "display" : "Alvorlighetsgrad",
    "definition" : "Alvorlighetsgrad (severity). Hver hendelsestype har egne nivåer."
  },
  {
    "code" : "anfallstype",
    "display" : "Anfallstype",
    "definition" : "Brukes i Anfall: Anfallstype."
  },
  {
    "code" : "varighet_minutter",
    "display" : "Varighet (minutter)",
    "definition" : "Brukes i Anfall: Varighet (minutter); Adferd / uro: Varighet (minutter)."
  },
  {
    "code" : "bevissthet",
    "display" : "Bevissthet under anfall",
    "definition" : "Brukes i Anfall: Bevissthet under anfall."
  },
  {
    "code" : "nodmedisin_gitt",
    "display" : "Nødmedisin gitt?",
    "definition" : "Brukes i Anfall: Nødmedisin gitt."
  },
  {
    "code" : "hvilken_medisin",
    "display" : "Hvilken medisin",
    "definition" : "Brukes i Anfall: Hvilken medisin."
  },
  {
    "code" : "hva_skjedde_for",
    "display" : "Hva skjedde før",
    "definition" : "Brukes i Anfall: Hva skjedde før anfallet; Adferd / uro: Hva skjedde før (antecedent)."
  },
  {
    "code" : "hva_skjedde_etter",
    "display" : "Hva skjedde etter",
    "definition" : "Brukes i Anfall: Hva skjedde etter anfallet; Adferd / uro: Hva skjedde etter (consequence)."
  },
  {
    "code" : "type",
    "display" : "Type",
    "definition" : "Brukes i Adferd / uro: Type adferd; Dobesøk: Type."
  },
  {
    "code" : "beskrivelse",
    "display" : "Beskriv hendelsen (behavior)",
    "definition" : "Brukes i Adferd / uro: Beskriv hendelsen (behavior)."
  },
  {
    "code" : "tiltak",
    "display" : "Tiltak",
    "definition" : "Brukes i Adferd / uro: Tiltak; Fall: Tiltak utført."
  },
  {
    "code" : "tiltak_notater",
    "display" : "Tiltak-notater",
    "definition" : "Brukes i Adferd / uro: Tiltak-notater."
  },
  {
    "code" : "mengde",
    "display" : "Mengde",
    "definition" : "Brukes i Dobesøk: Mengde; Ernæring: Mengde spist."
  },
  {
    "code" : "konsistens",
    "display" : "Konsistens",
    "definition" : "Brukes i Dobesøk: Konsistens (Bristol 1-7); Ernæring: Matkonsistens."
  },
  {
    "code" : "uhell",
    "display" : "Inkontinens/uhell",
    "definition" : "Brukes i Dobesøk: Inkontinens/uhell."
  },
  {
    "code" : "sted",
    "display" : "Hvor skjedde fallet",
    "definition" : "Brukes i Fall: Hvor skjedde fallet."
  },
  {
    "code" : "aktivitet",
    "display" : "Hva gjorde personen",
    "definition" : "Brukes i Fall: Hva gjorde personen."
  },
  {
    "code" : "skade",
    "display" : "Skadebeskrivelse",
    "definition" : "Brukes i Fall: Skadebeskrivelse."
  },
  {
    "code" : "lege_kontaktet",
    "display" : "Lege kontaktet",
    "definition" : "Brukes i Fall: Lege kontaktet."
  },
  {
    "code" : "parorende_varslet",
    "display" : "Pårørende varslet",
    "definition" : "Brukes i Fall: Pårørende varslet."
  },
  {
    "code" : "la_seg",
    "display" : "La seg",
    "definition" : "Brukes i Søvn: La seg."
  },
  {
    "code" : "sovnet",
    "display" : "Sovnet ca.",
    "definition" : "Brukes i Søvn: Sovnet ca."
  },
  {
    "code" : "oppvakninger",
    "display" : "Antall oppvåkninger",
    "definition" : "Brukes i Søvn: Antall oppvåkninger."
  },
  {
    "code" : "stod_opp",
    "display" : "Stod opp",
    "definition" : "Brukes i Søvn: Stod opp."
  },
  {
    "code" : "kvalitet",
    "display" : "Søvnkvalitet",
    "definition" : "Brukes i Søvn: Søvnkvalitet."
  },
  {
    "code" : "maltid",
    "display" : "Måltid",
    "definition" : "Brukes i Ernæring: Måltid."
  },
  {
    "code" : "drikke_ml",
    "display" : "Drikke (ml)",
    "definition" : "Brukes i Ernæring: Drikke (ml)."
  },
  {
    "code" : "medikament",
    "display" : "Medikament",
    "definition" : "Brukes i Behovsmedisin: Medikament."
  },
  {
    "code" : "dose",
    "display" : "Dose",
    "definition" : "Brukes i Behovsmedisin: Dose."
  },
  {
    "code" : "grunn",
    "display" : "Grunn for medisinering",
    "definition" : "Brukes i Behovsmedisin: Grunn for medisinering."
  },
  {
    "code" : "effekt",
    "display" : "Observert effekt",
    "definition" : "Brukes i Behovsmedisin: Observert effekt."
  },
  {
    "code" : "tid_til_effekt",
    "display" : "Tid til effekt (min)",
    "definition" : "Brukes i Behovsmedisin: Tid til effekt (min)."
  },
  {
    "code" : "stemning",
    "display" : "Stemning",
    "definition" : "Brukes i Humør: Stemning."
  },
  {
    "code" : "energi",
    "display" : "Energinivå",
    "definition" : "Brukes i Humør: Energinivå."
  },
  {
    "code" : "sosial",
    "display" : "Sosial",
    "definition" : "Brukes i Humør: Sosial."
  }]
}

```
