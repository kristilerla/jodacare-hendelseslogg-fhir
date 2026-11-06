# Home - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ImplementationGuide/jodacare.fhir.hendelseslogg | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaCareHendelseslogg |

### Om denne guiden

Dette er en øvingsguide laget på Norwegian FHIR Hackathon 2026, i FHIR 101-sporet. Den beskriver hvordan hendelser fra hendelsesloggen i JodaCare kan uttrykkes i HL7 FHIR.

Guiden er et utkast. Den er ingen spesifikasjon av JodaCare slik produktet er bygget i dag. Alle personer og steder i eksemplene er oppdiktet.

### Bakgrunn

JodaCare er en plattform for samhandling rundt en tjenestemottaker, for eksempel et barn som bor hjemme, går på skole og har avlastning noen netter i uka. Hvert sted har sitt eget team, og familien er med i teamet rundt barnet.

Hendelsesloggen er stedet der de ansatte registrerer hendelser som de andre rundt tjenestemottakeren trenger å vite om. Skolen trenger for eksempel å vite at barnet hadde et anfall i avlastningsboligen i natt, slik at de kan legge til rette for en roligere skoledag.

### Aktører

| | |
| :--- | :--- |
| Ansatt | Registrerer hendelser for tjenestemottakere i teamet sitt. Kan endre egne registreringer i 24 timer. |
| Teamleder | Ser alle hendelser i teamet og følger opp mønstre over tid. |
| Organisasjonsadministrator | Setter opp hvilke hendelsestyper tjenestestedet bruker, og velger hvilke typer pårørende får se. Har ikke innsyn i selve hendelsene. |
| Pårørende | Ser hendelsene av de typene administrator har åpnet for. |
| Ansatte på andre steder | For eksempel skolen. Ser hendelser når de er med i et team rundt den samme tjenestemottakeren. |

### Hovedbrukstilfelle: anfall om natten

1. Ida (13 år) har avlastning i Solsiden avlastningsbolig i Fjordvik kommune.
1. Kl. 02.14 får Ida et anfall som varer i tre minutter. Ahmed, som har nattevakt, legger henne i sideleie og tar tiden.
1. Kl. 02.25 registrerer Ahmed hendelsen i JodaCare: type anfall, start og slutt, anfallstype, varighet, bevissthet under anfallet, at det ikke ble gitt nødmedisin, hva som skjedde etterpå og alvorlighetsgrad moderat.
1. Neste morgen ser foreldrene og kontaktlæreren på skolen hendelsen, fordi de er med i teamet rundt Ida og anfall er en type som er delt med dem.
1. Ahmed oppdager at han skrev feil klokkeslett. Han retter det kl. 07.30, innenfor 24 timer. Endringen blir sporet.

### Krav

* En hendelse gjelder alltid én tjenestemottaker.
* En hendelse har alltid en registrert person og et tidspunkt.
* Hver hendelsestype har egne felter. Noen felter er påkrevd, andre er valgfrie.
* Tre av hendelsestypene har alvorlighetsgrad, og hver av dem har egne nivåer. Anfall: mild, moderat, alvorlig. Adferd / uro: lav, middels, høy. Fall: uskadet, lett skadet, alvorlig skadet. De andre typene har ingen alvorlighetsgrad.
* Et tjenestested kan lage egne hendelsestyper i tillegg til de åtte standardmalene.
* En hendelse kan endres av den som registrerte den i 24 timer. Etter det er den låst.
* Det skal være sporbart hvem som registrerte og endret en hendelse, og når.
* Bare medlemskap i teamet rundt tjenestemottakeren gir innsyn. Ansettelse alene gir ikke innsyn.
* Administrator bestemmer hvilke hendelsestyper pårørende ser. Delingen gjelder per hendelsestype og per pårørende, eller for alle pårørende i teamet. Den gjelder ikke per enkelthendelse.

### Hendelsestypene

De åtte standardmalene ligger i kodeverket [Hendelsestyper i JodaCare](CodeSystem-jodacare-hendelsestype.md).

| | | | |
| :--- | :--- | :--- | :--- |
| Anfall | [Hendelse: Anfall](StructureDefinition-jodacare-hendelse-anfall.md) | Mild, moderat, alvorlig | 7 |
| Adferd / uro | [Hendelse: Adferd / uro](StructureDefinition-jodacare-hendelse-adferd.md) | Lav, middels, høy | 7 |
| Dobesøk | [Hendelse: Dobesøk](StructureDefinition-jodacare-hendelse-dobesok.md) | Ingen | 4 |
| Fall | [Hendelse: Fall](StructureDefinition-jodacare-hendelse-fall.md) | Uskadet, lett skadet, alvorlig skadet | 6 |
| Søvn | [Hendelse: Søvn](StructureDefinition-jodacare-hendelse-sovn.md) | Ingen | 5 |
| Ernæring | [Hendelse: Ernæring](StructureDefinition-jodacare-hendelse-ernaering.md) | Ingen | 4 |
| Behovsmedisin | [Hendelse: Behovsmedisin](StructureDefinition-jodacare-hendelse-medisin.md) | Ingen | 5 |
| Humør | [Hendelse: Humør](StructureDefinition-jodacare-hendelse-humor.md) | Ingen | 3 |

Alle åtte er foreløpig profilert som Observation, slik at de følger samme mønster. Fall og behovsmedisin kan passe bedre som AdverseEvent og MedicationAdministration. Se de åpne spørsmålene nedenfor.

### Modell

* **Tjenestemottaker** er profilen [Tjenestemottaker](StructureDefinition-jodacare-tjenestemottaker.md), som bygger på pasientprofilen i no-basis.
* **Hendelsen** er en Observation. Den felles grunnprofilen [Hendelse](StructureDefinition-jodacare-hendelse.md) har tjenestemottaker, tidspunkt, hvem som registrerte, fritekst og alvorlighetsgrad. Hver hendelsestype får sin egen profil som bygger på denne.
* **Feltene** i hendelsen er komponenter i Observation. Koden på hver komponent er feltets key i malen, fra kodeverket [Felter i hendelser](CodeSystem-jodacare-hendelsesfelt.md).
* **Felttypene** oversettes slik: valg blir CodeableConcept med et eget kodeverk for svaralternativene, tall blir Quantity med UCUM-enhet (min, mL) eller integer for antall, ja/nei blir boolean, klokkeslett blir time, og tekst blir string.
* **Fritekst** (notater) legges i Observation.note.
* **Sporbarhet** uttrykkes med Provenance. Hver registrering og hver endring gir en ny Provenance som peker på hendelsen.

### Åpne spørsmål til hackathonet

1. Bør fall være en Observation eller en AdverseEvent, og bør behovsmedisin være en MedicationAdministration?
1. Hvordan uttrykker vi at pårørende bare skal se utvalgte hendelsestyper? Er det Consent, sikkerhetsmerking (meta.security), eller noe som hører hjemme i applikasjonen og ikke i FHIR?
1. Finnes det SNOMED CT- eller LOINC-koder vi bør bruke ved siden av våre egne koder, for eksempel for anfallstyper og Bristol-skalaen?
1. Hvordan uttrykker vi 24-timersvinduet for endringer? Er det en regel i applikasjonen, eller noe FHIR bør beskrive?
1. Hvordan skal tjenestesteder som lager egne hendelsestyper beskrives, når feltene bestemmes av administrator og ikke er kjent på forhånd?
1. Flere maler bruker samme key med ulik betydning, for eksempel konsistens (Bristol-skala i dobesøk og matkonsistens i ernæring). Er det godt nok at hendelsestypen avgjør betydningen, eller bør hver mal ha egne feltkoder?
1. Hvor bør tjenestestedet hendelsen ble registrert på uttrykkes?

### Eksempler

* [Ida Testvik](Patient-Tjenestemottaker-Ida.md), oppdiktet tjenestemottaker
* [Ahmed Testesen](Practitioner-Ansatt-Ahmed.md), oppdiktet ansatt
* [Anfall om natten](Observation-Hendelse-Anfall-1.md)
* [Natten etter anfallet](Observation-Hendelse-Sovn-1.md)
* [Hvem registrerte anfallet](Provenance-Proveniens-Anfall-1.md)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "jodacare.fhir.hendelseslogg",
  "url" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/ImplementationGuide/jodacare.fhir.hendelseslogg",
  "version" : "0.1.0",
  "name" : "JodaCareHendelseslogg",
  "title" : "JodaCare hendelseslogg",
  "status" : "draft",
  "date" : "2026-11-06T16:56:31+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Øvingsguide som beskriver hvordan hendelser fra hendelsesloggen i JodaCare kan uttrykkes i HL7 FHIR. Laget på Norwegian FHIR Hackathon 2026.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "packageId" : "jodacare.fhir.hendelseslogg",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.5.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.4.0"
  },
  {
    "id" : "hl7_fhir_no_basis",
    "uri" : "http://fhir.org/packages/hl7.fhir.no.basis/ImplementationGuide/hl7.fhir.no.basis",
    "packageId" : "hl7.fhir.no.basis",
    "version" : "2.2.2"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-adferd-tiltak-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-adferd-tiltak-vs"
      },
      "name" : "Adferd / uro: Tiltak",
      "description" : "Gyldige svar for feltet tiltak i malen Adferd / uro.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-adferd-tiltak.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-adferd-tiltak"
      },
      "name" : "Adferd / uro: Tiltak",
      "description" : "Svaralternativene for feltet tiltak i malen Adferd / uro.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-adferd-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-adferd-type-vs"
      },
      "name" : "Adferd / uro: Type adferd",
      "description" : "Gyldige svar for feltet type i malen Adferd / uro.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-adferd-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-adferd-type"
      },
      "name" : "Adferd / uro: Type adferd",
      "description" : "Svaralternativene for feltet type i malen Adferd / uro.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-Ansatt-Ahmed.html"
      }],
      "reference" : {
        "reference" : "Practitioner/Ansatt-Ahmed"
      },
      "name" : "Ahmed Testesen",
      "description" : "Oppdiktet ansatt i Solsiden avlastningsbolig, med i teamet rundt Ida.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-alvorlighetsgrad-adferd-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-alvorlighetsgrad-adferd-vs"
      },
      "name" : "Alvorlighetsgrad: Adferd / uro",
      "description" : "Gyldige nivåer for alvorlighetsgrad i malen Adferd / uro.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-alvorlighetsgrad-adferd.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-alvorlighetsgrad-adferd"
      },
      "name" : "Alvorlighetsgrad: Adferd / uro",
      "description" : "Nivåene for alvorlighetsgrad i malen Adferd / uro.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-alvorlighetsgrad-anfall-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-alvorlighetsgrad-anfall-vs"
      },
      "name" : "Alvorlighetsgrad: Anfall",
      "description" : "Gyldige nivåer for alvorlighetsgrad i malen Anfall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-alvorlighetsgrad-anfall.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-alvorlighetsgrad-anfall"
      },
      "name" : "Alvorlighetsgrad: Anfall",
      "description" : "Nivåene for alvorlighetsgrad i malen Anfall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-alvorlighetsgrad-fall-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-alvorlighetsgrad-fall-vs"
      },
      "name" : "Alvorlighetsgrad: Fall",
      "description" : "Gyldige nivåer for alvorlighetsgrad i malen Fall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-alvorlighetsgrad-fall.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-alvorlighetsgrad-fall"
      },
      "name" : "Alvorlighetsgrad: Fall",
      "description" : "Nivåene for alvorlighetsgrad i malen Fall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Hendelse-Anfall-1.html"
      }],
      "reference" : {
        "reference" : "Observation/Hendelse-Anfall-1"
      },
      "name" : "Anfall om natten",
      "description" : "Ahmed registrerer et anfall Ida hadde om natten i avlastningsboligen. Foreldrene og skolen ser hendelsen neste morgen.",
      "exampleCanonical" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-anfall"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-anfall-anfallstype-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-anfall-anfallstype-vs"
      },
      "name" : "Anfall: Anfallstype",
      "description" : "Gyldige svar for feltet anfallstype i malen Anfall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-anfall-anfallstype.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-anfall-anfallstype"
      },
      "name" : "Anfall: Anfallstype",
      "description" : "Svaralternativene for feltet anfallstype i malen Anfall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-anfall-bevissthet-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-anfall-bevissthet-vs"
      },
      "name" : "Anfall: Bevissthet under anfall",
      "description" : "Gyldige svar for feltet bevissthet i malen Anfall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-anfall-bevissthet.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-anfall-bevissthet"
      },
      "name" : "Anfall: Bevissthet under anfall",
      "description" : "Svaralternativene for feltet bevissthet i malen Anfall.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-dobesok-konsistens-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-dobesok-konsistens-vs"
      },
      "name" : "Dobesøk: Konsistens (Bristol 1-7)",
      "description" : "Gyldige svar for feltet konsistens i malen Dobesøk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-dobesok-konsistens.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-dobesok-konsistens"
      },
      "name" : "Dobesøk: Konsistens (Bristol 1-7)",
      "description" : "Svaralternativene for feltet konsistens i malen Dobesøk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-dobesok-mengde-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-dobesok-mengde-vs"
      },
      "name" : "Dobesøk: Mengde",
      "description" : "Gyldige svar for feltet mengde i malen Dobesøk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-dobesok-mengde.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-dobesok-mengde"
      },
      "name" : "Dobesøk: Mengde",
      "description" : "Svaralternativene for feltet mengde i malen Dobesøk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-dobesok-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-dobesok-type-vs"
      },
      "name" : "Dobesøk: Type",
      "description" : "Gyldige svar for feltet type i malen Dobesøk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-dobesok-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-dobesok-type"
      },
      "name" : "Dobesøk: Type",
      "description" : "Svaralternativene for feltet type i malen Dobesøk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-ernaering-konsistens-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-ernaering-konsistens-vs"
      },
      "name" : "Ernæring: Matkonsistens",
      "description" : "Gyldige svar for feltet konsistens i malen Ernæring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-ernaering-konsistens.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-ernaering-konsistens"
      },
      "name" : "Ernæring: Matkonsistens",
      "description" : "Svaralternativene for feltet konsistens i malen Ernæring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-ernaering-mengde-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-ernaering-mengde-vs"
      },
      "name" : "Ernæring: Mengde spist",
      "description" : "Gyldige svar for feltet mengde i malen Ernæring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-ernaering-mengde.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-ernaering-mengde"
      },
      "name" : "Ernæring: Mengde spist",
      "description" : "Svaralternativene for feltet mengde i malen Ernæring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-ernaering-maltid-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-ernaering-maltid-vs"
      },
      "name" : "Ernæring: Måltid",
      "description" : "Gyldige svar for feltet maltid i malen Ernæring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-ernaering-maltid.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-ernaering-maltid"
      },
      "name" : "Ernæring: Måltid",
      "description" : "Svaralternativene for feltet maltid i malen Ernæring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-hendelsesfelt.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-hendelsesfelt"
      },
      "name" : "Felter i hendelser i JodaCare",
      "description" : "Feltene (key) i standardmalene. Samme key kan brukes i flere maler, og betydningen avgjøres da av hendelsestypen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse"
      },
      "name" : "Hendelse",
      "description" : "Felles grunnprofil for en registrert hendelse i hendelsesloggen i JodaCare. En hendelse gjelder én tjenestemottaker, har et tidspunkt og en person som registrerte den. Hver hendelsestype har sin egen profil som bygger på denne.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-adferd.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-adferd"
      },
      "name" : "Hendelse: Adferd / uro",
      "description" : "En hendelse av typen Adferd / uro, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-anfall.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-anfall"
      },
      "name" : "Hendelse: Anfall",
      "description" : "En hendelse av typen Anfall, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-medisin.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-medisin"
      },
      "name" : "Hendelse: Behovsmedisin",
      "description" : "En hendelse av typen Behovsmedisin, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-dobesok.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-dobesok"
      },
      "name" : "Hendelse: Dobesøk",
      "description" : "En hendelse av typen Dobesøk, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-ernaering.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-ernaering"
      },
      "name" : "Hendelse: Ernæring",
      "description" : "En hendelse av typen Ernæring, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-fall.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-fall"
      },
      "name" : "Hendelse: Fall",
      "description" : "En hendelse av typen Fall, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-humor.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-humor"
      },
      "name" : "Hendelse: Humør",
      "description" : "En hendelse av typen Humør, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-hendelse-sovn.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-hendelse-sovn"
      },
      "name" : "Hendelse: Søvn",
      "description" : "En hendelse av typen Søvn, med feltene fra standardmalen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-hendelsestype-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-hendelsestype-vs"
      },
      "name" : "Hendelsestyper i JodaCare",
      "description" : "Alle hendelsestypene i standardmalene.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-hendelsestype.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-hendelsestype"
      },
      "name" : "Hendelsestyper i JodaCare",
      "description" : "De åtte standardmalene i hendelsesloggen i JodaCare. Et tjenestested kan i tillegg lage egne hendelsestyper.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-humor-energi-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-humor-energi-vs"
      },
      "name" : "Humør: Energinivå",
      "description" : "Gyldige svar for feltet energi i malen Humør.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-humor-energi.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-humor-energi"
      },
      "name" : "Humør: Energinivå",
      "description" : "Svaralternativene for feltet energi i malen Humør.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-humor-sosial-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-humor-sosial-vs"
      },
      "name" : "Humør: Sosial",
      "description" : "Gyldige svar for feltet sosial i malen Humør.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-humor-sosial.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-humor-sosial"
      },
      "name" : "Humør: Sosial",
      "description" : "Svaralternativene for feltet sosial i malen Humør.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-humor-stemning-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-humor-stemning-vs"
      },
      "name" : "Humør: Stemning",
      "description" : "Gyldige svar for feltet stemning i malen Humør.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-humor-stemning.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-humor-stemning"
      },
      "name" : "Humør: Stemning",
      "description" : "Svaralternativene for feltet stemning i malen Humør.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-Proveniens-Anfall-1.html"
      }],
      "reference" : {
        "reference" : "Provenance/Proveniens-Anfall-1"
      },
      "name" : "Hvem registrerte anfallet",
      "description" : "Sporbarhet for hendelsen: hvem som registrerte den og når. En endring innen 24 timer gir en ny Provenance.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-Tjenestemottaker-Ida.html"
      }],
      "reference" : {
        "reference" : "Patient/Tjenestemottaker-Ida"
      },
      "name" : "Ida Testvik",
      "description" : "Oppdiktet tjenestemottaker, 13 år, som har avlastning i Solsiden avlastningsbolig i Fjordvik kommune.",
      "exampleCanonical" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-tjenestemottaker"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Hendelse-Sovn-1.html"
      }],
      "reference" : {
        "reference" : "Observation/Hendelse-Sovn-1"
      },
      "name" : "Natten etter anfallet",
      "description" : "Søvnregistrering for samme natt. Søvn har ingen alvorlighetsgrad.",
      "exampleCanonical" : "https://kristilerla.github.io/jodacare-hendelseslogg-fhir/StructureDefinition/jodacare-hendelse-sovn"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-jodacare-svar-sovn-kvalitet-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/jodacare-svar-sovn-kvalitet-vs"
      },
      "name" : "Søvn: Søvnkvalitet",
      "description" : "Gyldige svar for feltet kvalitet i malen Søvn.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-jodacare-svar-sovn-kvalitet.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/jodacare-svar-sovn-kvalitet"
      },
      "name" : "Søvn: Søvnkvalitet",
      "description" : "Svaralternativene for feltet kvalitet i malen Søvn.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-jodacare-tjenestemottaker.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/jodacare-tjenestemottaker"
      },
      "name" : "Tjenestemottaker",
      "description" : "Personen hendelsen gjelder. Bygger på pasientprofilen i no-basis.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
