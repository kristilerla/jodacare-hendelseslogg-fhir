// Alle personer og steder her er oppdiktet testdata.

Instance:    Tjenestemottaker-Ida
InstanceOf:  JodaCareTjenestemottaker
Title:       "Ida Testvik"
Description: "Oppdiktet tjenestemottaker, 13 år, som har avlastning i Solsiden avlastningsbolig i Fjordvik kommune."
Usage:       #example
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "13031353453"
* name.family = "Testvik"
* name.given = "Ida"
* gender = #female
* birthDate = "2013-03-13"

Instance:    Ansatt-Ahmed
InstanceOf:  Practitioner
Title:       "Ahmed Testesen"
Description: "Oppdiktet ansatt i Solsiden avlastningsbolig, med i teamet rundt Ida."
Usage:       #example
* name.family = "Testesen"
* name.given = "Ahmed"

Instance:    Hendelse-Anfall-1
InstanceOf:  JodaCareHendelseAnfall
Title:       "Anfall om natten"
Description: "Ahmed registrerer et anfall Ida hadde om natten i avlastningsboligen. Foreldrene og skolen ser hendelsen neste morgen."
Usage:       #example
* status = #final
* code = JodaCareHendelsestype#anfall "Anfall"
* subject = Reference(Tjenestemottaker-Ida)
* effectivePeriod.start = "2026-11-08T02:14:00+01:00"
* effectivePeriod.end = "2026-11-08T02:17:00+01:00"
* performer = Reference(Ansatt-Ahmed)
* note.text = "Ida sovnet igjen kl. 02.40. Hun kan være trøtt på skolen i dag."
* component[alvorlighetsgrad].code = JodaCareHendelsesfelt#alvorlighetsgrad
* component[alvorlighetsgrad].valueCodeableConcept = JodaCareAlvorlighetsgradAnfall#moderat "Moderat"
* component[anfallstype].code = JodaCareHendelsesfelt#anfallstype
* component[anfallstype].valueCodeableConcept = JodaCareSvarAnfallAnfallstype#tonisk-klonisk "Tonisk-klonisk"
* component[varighet_minutter].code = JodaCareHendelsesfelt#varighet_minutter
* component[varighet_minutter].valueQuantity = 3 'min' "min"
* component[bevissthet].code = JodaCareHendelsesfelt#bevissthet
* component[bevissthet].valueCodeableConcept = JodaCareSvarAnfallBevissthet#nei "Nei"
* component[nodmedisin_gitt].code = JodaCareHendelsesfelt#nodmedisin_gitt
* component[nodmedisin_gitt].valueBoolean = false
* component[hva_skjedde_etter].code = JodaCareHendelsesfelt#hva_skjedde_etter
* component[hva_skjedde_etter].valueString = "Lagt i sideleie. Var urolig i ca. 10 minutter etterpå."

Instance:    Hendelse-Sovn-1
InstanceOf:  JodaCareHendelseSovn
Title:       "Natten etter anfallet"
Description: "Søvnregistrering for samme natt. Søvn har ingen alvorlighetsgrad."
Usage:       #example
* status = #final
* code = JodaCareHendelsestype#sovn "Søvn"
* subject = Reference(Tjenestemottaker-Ida)
* effectiveDateTime = "2026-11-08T07:00:00+01:00"
* performer = Reference(Ansatt-Ahmed)
* component[la_seg].code = JodaCareHendelsesfelt#la_seg
* component[la_seg].valueTime = "20:30:00"
* component[sovnet].code = JodaCareHendelsesfelt#sovnet
* component[sovnet].valueTime = "21:00:00"
* component[oppvakninger].code = JodaCareHendelsesfelt#oppvakninger
* component[oppvakninger].valueInteger = 1
* component[stod_opp].code = JodaCareHendelsesfelt#stod_opp
* component[stod_opp].valueTime = "06:45:00"
* component[kvalitet].code = JodaCareHendelsesfelt#kvalitet
* component[kvalitet].valueCodeableConcept = JodaCareSvarSovnKvalitet#urolig "Urolig"

Instance:    Proveniens-Anfall-1
InstanceOf:  Provenance
Title:       "Hvem registrerte anfallet"
Description: "Sporbarhet for hendelsen: hvem som registrerte den og når. En endring innen 24 timer gir en ny Provenance."
Usage:       #example
* target = Reference(Hendelse-Anfall-1)
* recorded = "2026-11-08T02:25:00+01:00"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent.who = Reference(Ansatt-Ahmed)
