# Artifacts Summary - JodaCare hendelseslogg v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Hendelse](StructureDefinition-jodacare-hendelse.md) | Felles grunnprofil for en registrert hendelse i hendelsesloggen i JodaCare. En hendelse gjelder én tjenestemottaker, har et tidspunkt og en person som registrerte den. Hver hendelsestype har sin egen profil som bygger på denne. |
| [Hendelse: Adferd / uro](StructureDefinition-jodacare-hendelse-adferd.md) | En hendelse av typen Adferd / uro, med feltene fra standardmalen. |
| [Hendelse: Anfall](StructureDefinition-jodacare-hendelse-anfall.md) | En hendelse av typen Anfall, med feltene fra standardmalen. |
| [Hendelse: Behovsmedisin](StructureDefinition-jodacare-hendelse-medisin.md) | En hendelse av typen Behovsmedisin, med feltene fra standardmalen. |
| [Hendelse: Dobesøk](StructureDefinition-jodacare-hendelse-dobesok.md) | En hendelse av typen Dobesøk, med feltene fra standardmalen. |
| [Hendelse: Ernæring](StructureDefinition-jodacare-hendelse-ernaering.md) | En hendelse av typen Ernæring, med feltene fra standardmalen. |
| [Hendelse: Fall](StructureDefinition-jodacare-hendelse-fall.md) | En hendelse av typen Fall, med feltene fra standardmalen. |
| [Hendelse: Humør](StructureDefinition-jodacare-hendelse-humor.md) | En hendelse av typen Humør, med feltene fra standardmalen. |
| [Hendelse: Søvn](StructureDefinition-jodacare-hendelse-sovn.md) | En hendelse av typen Søvn, med feltene fra standardmalen. |
| [Tjenestemottaker](StructureDefinition-jodacare-tjenestemottaker.md) | Personen hendelsen gjelder. Bygger på pasientprofilen i no-basis. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Adferd / uro: Tiltak](ValueSet-jodacare-svar-adferd-tiltak-vs.md) | Gyldige svar for feltet tiltak i malen Adferd / uro. |
| [Adferd / uro: Type adferd](ValueSet-jodacare-svar-adferd-type-vs.md) | Gyldige svar for feltet type i malen Adferd / uro. |
| [Alvorlighetsgrad: Adferd / uro](ValueSet-jodacare-alvorlighetsgrad-adferd-vs.md) | Gyldige nivåer for alvorlighetsgrad i malen Adferd / uro. |
| [Alvorlighetsgrad: Anfall](ValueSet-jodacare-alvorlighetsgrad-anfall-vs.md) | Gyldige nivåer for alvorlighetsgrad i malen Anfall. |
| [Alvorlighetsgrad: Fall](ValueSet-jodacare-alvorlighetsgrad-fall-vs.md) | Gyldige nivåer for alvorlighetsgrad i malen Fall. |
| [Anfall: Anfallstype](ValueSet-jodacare-svar-anfall-anfallstype-vs.md) | Gyldige svar for feltet anfallstype i malen Anfall. |
| [Anfall: Bevissthet under anfall](ValueSet-jodacare-svar-anfall-bevissthet-vs.md) | Gyldige svar for feltet bevissthet i malen Anfall. |
| [Dobesøk: Konsistens (Bristol 1-7)](ValueSet-jodacare-svar-dobesok-konsistens-vs.md) | Gyldige svar for feltet konsistens i malen Dobesøk. |
| [Dobesøk: Mengde](ValueSet-jodacare-svar-dobesok-mengde-vs.md) | Gyldige svar for feltet mengde i malen Dobesøk. |
| [Dobesøk: Type](ValueSet-jodacare-svar-dobesok-type-vs.md) | Gyldige svar for feltet type i malen Dobesøk. |
| [Ernæring: Matkonsistens](ValueSet-jodacare-svar-ernaering-konsistens-vs.md) | Gyldige svar for feltet konsistens i malen Ernæring. |
| [Ernæring: Mengde spist](ValueSet-jodacare-svar-ernaering-mengde-vs.md) | Gyldige svar for feltet mengde i malen Ernæring. |
| [Ernæring: Måltid](ValueSet-jodacare-svar-ernaering-maltid-vs.md) | Gyldige svar for feltet maltid i malen Ernæring. |
| [Hendelsestyper i JodaCare](ValueSet-jodacare-hendelsestype-vs.md) | Alle hendelsestypene i standardmalene. |
| [Humør: Energinivå](ValueSet-jodacare-svar-humor-energi-vs.md) | Gyldige svar for feltet energi i malen Humør. |
| [Humør: Sosial](ValueSet-jodacare-svar-humor-sosial-vs.md) | Gyldige svar for feltet sosial i malen Humør. |
| [Humør: Stemning](ValueSet-jodacare-svar-humor-stemning-vs.md) | Gyldige svar for feltet stemning i malen Humør. |
| [Søvn: Søvnkvalitet](ValueSet-jodacare-svar-sovn-kvalitet-vs.md) | Gyldige svar for feltet kvalitet i malen Søvn. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Adferd / uro: Tiltak](CodeSystem-jodacare-svar-adferd-tiltak.md) | Svaralternativene for feltet tiltak i malen Adferd / uro. |
| [Adferd / uro: Type adferd](CodeSystem-jodacare-svar-adferd-type.md) | Svaralternativene for feltet type i malen Adferd / uro. |
| [Alvorlighetsgrad: Adferd / uro](CodeSystem-jodacare-alvorlighetsgrad-adferd.md) | Nivåene for alvorlighetsgrad i malen Adferd / uro. |
| [Alvorlighetsgrad: Anfall](CodeSystem-jodacare-alvorlighetsgrad-anfall.md) | Nivåene for alvorlighetsgrad i malen Anfall. |
| [Alvorlighetsgrad: Fall](CodeSystem-jodacare-alvorlighetsgrad-fall.md) | Nivåene for alvorlighetsgrad i malen Fall. |
| [Anfall: Anfallstype](CodeSystem-jodacare-svar-anfall-anfallstype.md) | Svaralternativene for feltet anfallstype i malen Anfall. |
| [Anfall: Bevissthet under anfall](CodeSystem-jodacare-svar-anfall-bevissthet.md) | Svaralternativene for feltet bevissthet i malen Anfall. |
| [Dobesøk: Konsistens (Bristol 1-7)](CodeSystem-jodacare-svar-dobesok-konsistens.md) | Svaralternativene for feltet konsistens i malen Dobesøk. |
| [Dobesøk: Mengde](CodeSystem-jodacare-svar-dobesok-mengde.md) | Svaralternativene for feltet mengde i malen Dobesøk. |
| [Dobesøk: Type](CodeSystem-jodacare-svar-dobesok-type.md) | Svaralternativene for feltet type i malen Dobesøk. |
| [Ernæring: Matkonsistens](CodeSystem-jodacare-svar-ernaering-konsistens.md) | Svaralternativene for feltet konsistens i malen Ernæring. |
| [Ernæring: Mengde spist](CodeSystem-jodacare-svar-ernaering-mengde.md) | Svaralternativene for feltet mengde i malen Ernæring. |
| [Ernæring: Måltid](CodeSystem-jodacare-svar-ernaering-maltid.md) | Svaralternativene for feltet maltid i malen Ernæring. |
| [Felter i hendelser i JodaCare](CodeSystem-jodacare-hendelsesfelt.md) | Feltene (key) i standardmalene. Samme key kan brukes i flere maler, og betydningen avgjøres da av hendelsestypen. |
| [Hendelsestyper i JodaCare](CodeSystem-jodacare-hendelsestype.md) | De åtte standardmalene i hendelsesloggen i JodaCare. Et tjenestested kan i tillegg lage egne hendelsestyper. |
| [Humør: Energinivå](CodeSystem-jodacare-svar-humor-energi.md) | Svaralternativene for feltet energi i malen Humør. |
| [Humør: Sosial](CodeSystem-jodacare-svar-humor-sosial.md) | Svaralternativene for feltet sosial i malen Humør. |
| [Humør: Stemning](CodeSystem-jodacare-svar-humor-stemning.md) | Svaralternativene for feltet stemning i malen Humør. |
| [Søvn: Søvnkvalitet](CodeSystem-jodacare-svar-sovn-kvalitet.md) | Svaralternativene for feltet kvalitet i malen Søvn. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Ahmed Testesen](Practitioner-Ansatt-Ahmed.md) | Oppdiktet ansatt i Solsiden avlastningsbolig, med i teamet rundt Ida. |
| [Anfall om natten](Observation-Hendelse-Anfall-1.md) | Ahmed registrerer et anfall Ida hadde om natten i avlastningsboligen. Foreldrene og skolen ser hendelsen neste morgen. |
| [Hvem registrerte anfallet](Provenance-Proveniens-Anfall-1.md) | Sporbarhet for hendelsen: hvem som registrerte den og når. En endring innen 24 timer gir en ny Provenance. |
| [Ida Testvik](Patient-Tjenestemottaker-Ida.md) | Oppdiktet tjenestemottaker, 13 år, som har avlastning i Solsiden avlastningsbolig i Fjordvik kommune. |
| [Natten etter anfallet](Observation-Hendelse-Sovn-1.md) | Søvnregistrering for samme natt. Søvn har ingen alvorlighetsgrad. |

