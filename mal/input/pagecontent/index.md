### Om denne guiden

Dette er en øvingsguide laget på Norwegian FHIR Hackathon 2026, i FHIR 101-sporet. Den beskriver hvordan hendelser fra hendelsesloggen i JodaCare kan uttrykkes i HL7 FHIR.

Guiden er et utkast. Den er ingen spesifikasjon av JodaCare slik produktet er bygget i dag. Alle personer og steder i eksemplene er oppdiktet.

### Bakgrunn

JodaCare er en plattform for samhandling rundt en tjenestemottaker, for eksempel et barn som bor hjemme, går på skole og har avlastning noen netter i uka. Hvert sted har sitt eget team, og familien er med i teamet rundt barnet.

Hendelsesloggen er stedet der de ansatte registrerer hendelser som de andre rundt tjenestemottakeren trenger å vite om. Skolen trenger for eksempel å vite at barnet hadde et anfall i avlastningsboligen i natt, slik at de kan legge til rette for en roligere skoledag.

### Aktører

| Aktør | Rolle i hendelsesloggen |
|---|---|
| Ansatt | Registrerer hendelser for tjenestemottakere i teamet sitt. Kan endre egne registreringer i 24 timer. |
| Teamleder | Ser alle hendelser i teamet og følger opp mønstre over tid. |
| Organisasjonsadministrator | Setter opp hvilke hendelsestyper tjenestestedet bruker, og velger hvilke typer pårørende får se. Har ikke innsyn i selve hendelsene. |
| Pårørende | Ser hendelsene av de typene administrator har åpnet for. |
| Ansatte på andre steder | For eksempel skolen. Ser hendelser når de er med i et team rundt den samme tjenestemottakeren. |

### Hovedbrukstilfelle: anfall om natten

1. Ida (13 år) har avlastning i Solsiden avlastningsbolig i Fjordvik kommune.
2. Kl. 02.14 får Ida et anfall som varer i tre minutter. Ahmed, som har nattevakt, legger henne i sideleie og tar tiden.
3. Kl. 02.25 registrerer Ahmed hendelsen i JodaCare: type anfall, start og slutt, anfallstype, varighet, bevissthet under anfallet, at det ikke ble gitt nødmedisin, hva som skjedde etterpå og alvorlighetsgrad moderat.
4. Neste morgen ser foreldrene og kontaktlæreren på skolen hendelsen, fordi de er med i teamet rundt Ida og anfall er en type som er delt med dem.
5. Ahmed oppdager at han skrev feil klokkeslett. Han retter det kl. 07.30, innenfor 24 timer. Endringen blir sporet.

### Krav

- En hendelse gjelder alltid én tjenestemottaker.
- En hendelse har alltid en registrert person og et tidspunkt.
- Hver hendelsestype har egne felter. Noen felter er påkrevd, andre er valgfrie.
- Tre av hendelsestypene har alvorlighetsgrad, og hver av dem har egne nivåer. Anfall: mild, moderat, alvorlig. Adferd / uro: lav, middels, høy. Fall: uskadet, lett skadet, alvorlig skadet. De andre typene har ingen alvorlighetsgrad.
- Et tjenestested kan lage egne hendelsestyper i tillegg til de åtte standardmalene.
- En hendelse kan endres av den som registrerte den i 24 timer. Etter det er den låst.
- Det skal være sporbart hvem som registrerte og endret en hendelse, og når.
- Bare medlemskap i teamet rundt tjenestemottakeren gir innsyn. Ansettelse alene gir ikke innsyn.
- Administrator bestemmer hvilke hendelsestyper pårørende ser. Delingen gjelder per hendelsestype og per pårørende, eller for alle pårørende i teamet. Den gjelder ikke per enkelthendelse.

### Hendelsestypene

De åtte standardmalene ligger i kodeverket [Hendelsestyper i JodaCare](CodeSystem-jodacare-hendelsestype.html).

| Hendelsestype | Profil | Alvorlighetsgrad | Felter |
|---|---|---|---|
| Anfall | [Hendelse: Anfall](StructureDefinition-jodacare-hendelse-anfall.html) | Mild, moderat, alvorlig | 7 |
| Adferd / uro | [Hendelse: Adferd / uro](StructureDefinition-jodacare-hendelse-adferd.html) | Lav, middels, høy | 7 |
| Dobesøk | [Hendelse: Dobesøk](StructureDefinition-jodacare-hendelse-dobesok.html) | Ingen | 4 |
| Fall | [Hendelse: Fall](StructureDefinition-jodacare-hendelse-fall.html) | Uskadet, lett skadet, alvorlig skadet | 6 |
| Søvn | [Hendelse: Søvn](StructureDefinition-jodacare-hendelse-sovn.html) | Ingen | 5 |
| Ernæring | [Hendelse: Ernæring](StructureDefinition-jodacare-hendelse-ernaering.html) | Ingen | 4 |
| Behovsmedisin | [Hendelse: Behovsmedisin](StructureDefinition-jodacare-hendelse-medisin.html) | Ingen | 5 |
| Humør | [Hendelse: Humør](StructureDefinition-jodacare-hendelse-humor.html) | Ingen | 3 |

Alle åtte er foreløpig profilert som Observation, slik at de følger samme mønster. Fall og behovsmedisin kan passe bedre som AdverseEvent og MedicationAdministration. Se de åpne spørsmålene nedenfor.

### Modell

- **Tjenestemottaker** er profilen [Tjenestemottaker](StructureDefinition-jodacare-tjenestemottaker.html), som bygger på pasientprofilen i no-basis.
- **Hendelsen** er en Observation. Den felles grunnprofilen [Hendelse](StructureDefinition-jodacare-hendelse.html) har tjenestemottaker, tidspunkt, hvem som registrerte, fritekst og alvorlighetsgrad. Hver hendelsestype får sin egen profil som bygger på denne.
- **Feltene** i hendelsen er komponenter i Observation. Koden på hver komponent er feltets key i malen, fra kodeverket [Felter i hendelser](CodeSystem-jodacare-hendelsesfelt.html).
- **Felttypene** oversettes slik: valg blir CodeableConcept med et eget kodeverk for svaralternativene, tall blir Quantity med UCUM-enhet (min, mL) eller integer for antall, ja/nei blir boolean, klokkeslett blir time, og tekst blir string.
- **Fritekst** (notater) legges i Observation.note.
- **Sporbarhet** uttrykkes med Provenance. Hver registrering og hver endring gir en ny Provenance som peker på hendelsen.

### Åpne spørsmål til hackathonet

1. Bør fall være en Observation eller en AdverseEvent, og bør behovsmedisin være en MedicationAdministration?
2. Hvordan uttrykker vi at pårørende bare skal se utvalgte hendelsestyper? Er det Consent, sikkerhetsmerking (meta.security), eller noe som hører hjemme i applikasjonen og ikke i FHIR?
3. Finnes det SNOMED CT- eller LOINC-koder vi bør bruke ved siden av våre egne koder, for eksempel for anfallstyper og Bristol-skalaen?
4. Hvordan uttrykker vi 24-timersvinduet for endringer? Er det en regel i applikasjonen, eller noe FHIR bør beskrive?
5. Hvordan skal tjenestesteder som lager egne hendelsestyper beskrives, når feltene bestemmes av administrator og ikke er kjent på forhånd?
6. Flere maler bruker samme key med ulik betydning, for eksempel konsistens (Bristol-skala i dobesøk og matkonsistens i ernæring). Er det godt nok at hendelsestypen avgjør betydningen, eller bør hver mal ha egne feltkoder?
7. Hvor bør tjenestestedet hendelsen ble registrert på uttrykkes?

### Eksempler

- [Ida Testvik](Patient-Tjenestemottaker-Ida.html), oppdiktet tjenestemottaker
- [Ahmed Testesen](Practitioner-Ansatt-Ahmed.html), oppdiktet ansatt
- [Anfall om natten](Observation-Hendelse-Anfall-1.html)
- [Natten etter anfallet](Observation-Hendelse-Sovn-1.html)
- [Hvem registrerte anfallet](Provenance-Proveniens-Anfall-1.html)
