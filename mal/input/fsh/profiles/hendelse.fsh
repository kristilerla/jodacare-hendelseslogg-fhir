// Generert fra feltlisten i standardmalene. Rediger gjerne for hånd.

Profile:     JodaCareHendelse
Id:          jodacare-hendelse
Parent:      Observation
Title:       "Hendelse"
Description: "Felles grunnprofil for en registrert hendelse i hendelsesloggen i JodaCare. En hendelse gjelder én tjenestemottaker, har et tidspunkt og en person som registrerte den. Hver hendelsestype har sin egen profil som bygger på denne."
* ^status = #draft
* ^experimental = true
* status MS
* code MS
* code from JodaCareHendelsestypeVS (extensible)
* code ^short = "Hendelsestypen (malen)"
* subject 1..1 MS
* subject only Reference(JodaCareTjenestemottaker)
* subject ^short = "Tjenestemottakeren (patient_id)"
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Når hendelsen skjedde (occurred_at), eventuelt med slutt (ended_at)"
* performer 1..* MS
* performer only Reference(Practitioner or PractitionerRole or RelatedPerson)
* performer ^short = "Hvem som registrerte hendelsen (logged_by)"
* note MS
* note ^short = "Fritekst (notes og feltet notater)"
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Feltene i hendelsen skilles fra hverandre på koden, som er feltets key i malen."
* component contains alvorlighetsgrad 0..1 MS
* component[alvorlighetsgrad].code = JodaCareHendelsesfelt#alvorlighetsgrad
* component[alvorlighetsgrad].value[x] 1..1
* component[alvorlighetsgrad].value[x] only CodeableConcept
* component[alvorlighetsgrad] ^short = "Alvorlighetsgrad (severity). Nivåene avhenger av hendelsestypen."

Profile:     JodaCareHendelseAnfall
Id:          jodacare-hendelse-anfall
Parent:      JodaCareHendelse
Title:       "Hendelse: Anfall"
Description: "En hendelse av typen Anfall, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#anfall
* component[alvorlighetsgrad].valueCodeableConcept from JodaCareAlvorlighetsgradAnfallVS (required)
* component contains
    anfallstype 1..1 MS and
    varighet_minutter 1..1 MS and
    bevissthet 1..1 MS and
    nodmedisin_gitt 0..1 MS and
    hvilken_medisin 0..1 MS and
    hva_skjedde_for 0..1 MS and
    hva_skjedde_etter 0..1 MS
* component[anfallstype].code = JodaCareHendelsesfelt#anfallstype
* component[anfallstype] ^short = "Anfallstype"
* component[anfallstype].value[x] only CodeableConcept
* component[anfallstype].valueCodeableConcept from JodaCareSvarAnfallAnfallstypeVS (required)
* component[varighet_minutter].code = JodaCareHendelsesfelt#varighet_minutter
* component[varighet_minutter] ^short = "Varighet (minutter)"
* component[varighet_minutter].value[x] only Quantity
* component[varighet_minutter].valueQuantity.system = "http://unitsofmeasure.org"
* component[varighet_minutter].valueQuantity.code = #min
* component[bevissthet].code = JodaCareHendelsesfelt#bevissthet
* component[bevissthet] ^short = "Bevissthet under anfall"
* component[bevissthet].value[x] only CodeableConcept
* component[bevissthet].valueCodeableConcept from JodaCareSvarAnfallBevissthetVS (required)
* component[nodmedisin_gitt].code = JodaCareHendelsesfelt#nodmedisin_gitt
* component[nodmedisin_gitt] ^short = "Nødmedisin gitt?"
* component[nodmedisin_gitt].value[x] only boolean
* component[hvilken_medisin].code = JodaCareHendelsesfelt#hvilken_medisin
* component[hvilken_medisin] ^short = "Hvilken medisin"
* component[hvilken_medisin].value[x] only string
* component[hva_skjedde_for].code = JodaCareHendelsesfelt#hva_skjedde_for
* component[hva_skjedde_for] ^short = "Hva skjedde før anfallet"
* component[hva_skjedde_for].value[x] only string
* component[hva_skjedde_etter].code = JodaCareHendelsesfelt#hva_skjedde_etter
* component[hva_skjedde_etter] ^short = "Hva skjedde etter anfallet"
* component[hva_skjedde_etter].value[x] only string

Profile:     JodaCareHendelseAdferd
Id:          jodacare-hendelse-adferd
Parent:      JodaCareHendelse
Title:       "Hendelse: Adferd / uro"
Description: "En hendelse av typen Adferd / uro, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#adferd
* component[alvorlighetsgrad].valueCodeableConcept from JodaCareAlvorlighetsgradAdferdVS (required)
* component contains
    type 1..1 MS and
    hva_skjedde_for 0..1 MS and
    beskrivelse 1..1 MS and
    hva_skjedde_etter 0..1 MS and
    varighet_minutter 0..1 MS and
    tiltak 0..1 MS and
    tiltak_notater 0..1 MS
* component[type].code = JodaCareHendelsesfelt#type
* component[type] ^short = "Type adferd"
* component[type].value[x] only CodeableConcept
* component[type].valueCodeableConcept from JodaCareSvarAdferdTypeVS (required)
* component[hva_skjedde_for].code = JodaCareHendelsesfelt#hva_skjedde_for
* component[hva_skjedde_for] ^short = "Hva skjedde før (antecedent)"
* component[hva_skjedde_for].value[x] only string
* component[beskrivelse].code = JodaCareHendelsesfelt#beskrivelse
* component[beskrivelse] ^short = "Beskriv hendelsen (behavior)"
* component[beskrivelse].value[x] only string
* component[hva_skjedde_etter].code = JodaCareHendelsesfelt#hva_skjedde_etter
* component[hva_skjedde_etter] ^short = "Hva skjedde etter (consequence)"
* component[hva_skjedde_etter].value[x] only string
* component[varighet_minutter].code = JodaCareHendelsesfelt#varighet_minutter
* component[varighet_minutter] ^short = "Varighet (minutter)"
* component[varighet_minutter].value[x] only Quantity
* component[varighet_minutter].valueQuantity.system = "http://unitsofmeasure.org"
* component[varighet_minutter].valueQuantity.code = #min
* component[tiltak].code = JodaCareHendelsesfelt#tiltak
* component[tiltak] ^short = "Tiltak"
* component[tiltak].value[x] only CodeableConcept
* component[tiltak].valueCodeableConcept from JodaCareSvarAdferdTiltakVS (required)
* component[tiltak_notater].code = JodaCareHendelsesfelt#tiltak_notater
* component[tiltak_notater] ^short = "Tiltak-notater"
* component[tiltak_notater].value[x] only string

Profile:     JodaCareHendelseDobesok
Id:          jodacare-hendelse-dobesok
Parent:      JodaCareHendelse
Title:       "Hendelse: Dobesøk"
Description: "En hendelse av typen Dobesøk, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#dobesok
* component[alvorlighetsgrad] 0..0
* component contains
    type 1..1 MS and
    mengde 0..1 MS and
    konsistens 0..1 MS and
    uhell 0..1 MS
* component[type].code = JodaCareHendelsesfelt#type
* component[type] ^short = "Type"
* component[type].value[x] only CodeableConcept
* component[type].valueCodeableConcept from JodaCareSvarDobesokTypeVS (required)
* component[mengde].code = JodaCareHendelsesfelt#mengde
* component[mengde] ^short = "Mengde"
* component[mengde].value[x] only CodeableConcept
* component[mengde].valueCodeableConcept from JodaCareSvarDobesokMengdeVS (required)
* component[konsistens].code = JodaCareHendelsesfelt#konsistens
* component[konsistens] ^short = "Konsistens (Bristol 1-7)"
* component[konsistens].value[x] only CodeableConcept
* component[konsistens].valueCodeableConcept from JodaCareSvarDobesokKonsistensVS (required)
* component[uhell].code = JodaCareHendelsesfelt#uhell
* component[uhell] ^short = "Inkontinens/uhell"
* component[uhell].value[x] only boolean

Profile:     JodaCareHendelseFall
Id:          jodacare-hendelse-fall
Parent:      JodaCareHendelse
Title:       "Hendelse: Fall"
Description: "En hendelse av typen Fall, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#fall
* component[alvorlighetsgrad].valueCodeableConcept from JodaCareAlvorlighetsgradFallVS (required)
* component contains
    sted 1..1 MS and
    aktivitet 0..1 MS and
    skade 0..1 MS and
    tiltak 0..1 MS and
    lege_kontaktet 0..1 MS and
    parorende_varslet 0..1 MS
* component[sted].code = JodaCareHendelsesfelt#sted
* component[sted] ^short = "Hvor skjedde fallet"
* component[sted].value[x] only string
* component[aktivitet].code = JodaCareHendelsesfelt#aktivitet
* component[aktivitet] ^short = "Hva gjorde personen"
* component[aktivitet].value[x] only string
* component[skade].code = JodaCareHendelsesfelt#skade
* component[skade] ^short = "Skadebeskrivelse"
* component[skade].value[x] only string
* component[tiltak].code = JodaCareHendelsesfelt#tiltak
* component[tiltak] ^short = "Tiltak utført"
* component[tiltak].value[x] only string
* component[lege_kontaktet].code = JodaCareHendelsesfelt#lege_kontaktet
* component[lege_kontaktet] ^short = "Lege kontaktet"
* component[lege_kontaktet].value[x] only boolean
* component[parorende_varslet].code = JodaCareHendelsesfelt#parorende_varslet
* component[parorende_varslet] ^short = "Pårørende varslet"
* component[parorende_varslet].value[x] only boolean

Profile:     JodaCareHendelseSovn
Id:          jodacare-hendelse-sovn
Parent:      JodaCareHendelse
Title:       "Hendelse: Søvn"
Description: "En hendelse av typen Søvn, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#sovn
* component[alvorlighetsgrad] 0..0
* component contains
    la_seg 0..1 MS and
    sovnet 0..1 MS and
    oppvakninger 0..1 MS and
    stod_opp 0..1 MS and
    kvalitet 0..1 MS
* component[la_seg].code = JodaCareHendelsesfelt#la_seg
* component[la_seg] ^short = "La seg"
* component[la_seg].value[x] only time
* component[sovnet].code = JodaCareHendelsesfelt#sovnet
* component[sovnet] ^short = "Sovnet ca."
* component[sovnet].value[x] only time
* component[oppvakninger].code = JodaCareHendelsesfelt#oppvakninger
* component[oppvakninger] ^short = "Antall oppvåkninger"
* component[oppvakninger].value[x] only integer
* component[stod_opp].code = JodaCareHendelsesfelt#stod_opp
* component[stod_opp] ^short = "Stod opp"
* component[stod_opp].value[x] only time
* component[kvalitet].code = JodaCareHendelsesfelt#kvalitet
* component[kvalitet] ^short = "Søvnkvalitet"
* component[kvalitet].value[x] only CodeableConcept
* component[kvalitet].valueCodeableConcept from JodaCareSvarSovnKvalitetVS (required)

Profile:     JodaCareHendelseErnaering
Id:          jodacare-hendelse-ernaering
Parent:      JodaCareHendelse
Title:       "Hendelse: Ernæring"
Description: "En hendelse av typen Ernæring, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#ernaering
* component[alvorlighetsgrad] 0..0
* component contains
    maltid 1..1 MS and
    mengde 1..1 MS and
    drikke_ml 0..1 MS and
    konsistens 0..1 MS
* component[maltid].code = JodaCareHendelsesfelt#maltid
* component[maltid] ^short = "Måltid"
* component[maltid].value[x] only CodeableConcept
* component[maltid].valueCodeableConcept from JodaCareSvarErnaeringMaltidVS (required)
* component[mengde].code = JodaCareHendelsesfelt#mengde
* component[mengde] ^short = "Mengde spist"
* component[mengde].value[x] only CodeableConcept
* component[mengde].valueCodeableConcept from JodaCareSvarErnaeringMengdeVS (required)
* component[drikke_ml].code = JodaCareHendelsesfelt#drikke_ml
* component[drikke_ml] ^short = "Drikke (ml)"
* component[drikke_ml].value[x] only Quantity
* component[drikke_ml].valueQuantity.system = "http://unitsofmeasure.org"
* component[drikke_ml].valueQuantity.code = #mL
* component[konsistens].code = JodaCareHendelsesfelt#konsistens
* component[konsistens] ^short = "Matkonsistens"
* component[konsistens].value[x] only CodeableConcept
* component[konsistens].valueCodeableConcept from JodaCareSvarErnaeringKonsistensVS (required)

Profile:     JodaCareHendelseBehovsmedisin
Id:          jodacare-hendelse-medisin
Parent:      JodaCareHendelse
Title:       "Hendelse: Behovsmedisin"
Description: "En hendelse av typen Behovsmedisin, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#medisin
* component[alvorlighetsgrad] 0..0
* component contains
    medikament 1..1 MS and
    dose 1..1 MS and
    grunn 1..1 MS and
    effekt 0..1 MS and
    tid_til_effekt 0..1 MS
* component[medikament].code = JodaCareHendelsesfelt#medikament
* component[medikament] ^short = "Medikament"
* component[medikament].value[x] only string
* component[dose].code = JodaCareHendelsesfelt#dose
* component[dose] ^short = "Dose"
* component[dose].value[x] only string
* component[grunn].code = JodaCareHendelsesfelt#grunn
* component[grunn] ^short = "Grunn for medisinering"
* component[grunn].value[x] only string
* component[effekt].code = JodaCareHendelsesfelt#effekt
* component[effekt] ^short = "Observert effekt"
* component[effekt].value[x] only string
* component[tid_til_effekt].code = JodaCareHendelsesfelt#tid_til_effekt
* component[tid_til_effekt] ^short = "Tid til effekt (min)"
* component[tid_til_effekt].value[x] only Quantity
* component[tid_til_effekt].valueQuantity.system = "http://unitsofmeasure.org"
* component[tid_til_effekt].valueQuantity.code = #min

Profile:     JodaCareHendelseHumor
Id:          jodacare-hendelse-humor
Parent:      JodaCareHendelse
Title:       "Hendelse: Humør"
Description: "En hendelse av typen Humør, med feltene fra standardmalen."
* ^status = #draft
* ^experimental = true
* code = JodaCareHendelsestype#humor
* component[alvorlighetsgrad] 0..0
* component contains
    stemning 1..1 MS and
    energi 0..1 MS and
    sosial 0..1 MS
* component[stemning].code = JodaCareHendelsesfelt#stemning
* component[stemning] ^short = "Stemning"
* component[stemning].value[x] only CodeableConcept
* component[stemning].valueCodeableConcept from JodaCareSvarHumorStemningVS (required)
* component[energi].code = JodaCareHendelsesfelt#energi
* component[energi] ^short = "Energinivå"
* component[energi].value[x] only CodeableConcept
* component[energi].valueCodeableConcept from JodaCareSvarHumorEnergiVS (required)
* component[sosial].code = JodaCareHendelsesfelt#sosial
* component[sosial] ^short = "Sosial"
* component[sosial].value[x] only CodeableConcept
* component[sosial].valueCodeableConcept from JodaCareSvarHumorSosialVS (required)

