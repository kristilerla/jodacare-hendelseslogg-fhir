// Generert fra feltlisten i standardmalene. Rediger gjerne for hånd.

CodeSystem:  JodaCareHendelsestype
Id:          jodacare-hendelsestype
Title:       "Hendelsestyper i JodaCare"
Description: "De åtte standardmalene i hendelsesloggen i JodaCare. Et tjenestested kan i tillegg lage egne hendelsestyper."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #anfall "Anfall"
* #adferd "Adferd / uro"
* #dobesok "Dobesøk"
* #fall "Fall"
* #sovn "Søvn"
* #ernaering "Ernæring"
* #medisin "Behovsmedisin"
* #humor "Humør"

ValueSet:    JodaCareHendelsestypeVS
Id:          jodacare-hendelsestype-vs
Title:       "Hendelsestyper i JodaCare"
Description: "Alle hendelsestypene i standardmalene."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareHendelsestype

CodeSystem:  JodaCareHendelsesfelt
Id:          jodacare-hendelsesfelt
Title:       "Felter i hendelser i JodaCare"
Description: "Feltene (key) i standardmalene. Samme key kan brukes i flere maler, og betydningen avgjøres da av hendelsestypen."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #alvorlighetsgrad "Alvorlighetsgrad" "Alvorlighetsgrad (severity). Hver hendelsestype har egne nivåer."
* #anfallstype "Anfallstype" "Brukes i Anfall: Anfallstype."
* #varighet_minutter "Varighet (minutter)" "Brukes i Anfall: Varighet (minutter); Adferd / uro: Varighet (minutter)."
* #bevissthet "Bevissthet under anfall" "Brukes i Anfall: Bevissthet under anfall."
* #nodmedisin_gitt "Nødmedisin gitt?" "Brukes i Anfall: Nødmedisin gitt."
* #hvilken_medisin "Hvilken medisin" "Brukes i Anfall: Hvilken medisin."
* #hva_skjedde_for "Hva skjedde før" "Brukes i Anfall: Hva skjedde før anfallet; Adferd / uro: Hva skjedde før (antecedent)."
* #hva_skjedde_etter "Hva skjedde etter" "Brukes i Anfall: Hva skjedde etter anfallet; Adferd / uro: Hva skjedde etter (consequence)."
* #type "Type" "Brukes i Adferd / uro: Type adferd; Dobesøk: Type."
* #beskrivelse "Beskriv hendelsen (behavior)" "Brukes i Adferd / uro: Beskriv hendelsen (behavior)."
* #tiltak "Tiltak" "Brukes i Adferd / uro: Tiltak; Fall: Tiltak utført."
* #tiltak_notater "Tiltak-notater" "Brukes i Adferd / uro: Tiltak-notater."
* #mengde "Mengde" "Brukes i Dobesøk: Mengde; Ernæring: Mengde spist."
* #konsistens "Konsistens" "Brukes i Dobesøk: Konsistens (Bristol 1-7); Ernæring: Matkonsistens."
* #uhell "Inkontinens/uhell" "Brukes i Dobesøk: Inkontinens/uhell."
* #sted "Hvor skjedde fallet" "Brukes i Fall: Hvor skjedde fallet."
* #aktivitet "Hva gjorde personen" "Brukes i Fall: Hva gjorde personen."
* #skade "Skadebeskrivelse" "Brukes i Fall: Skadebeskrivelse."
* #lege_kontaktet "Lege kontaktet" "Brukes i Fall: Lege kontaktet."
* #parorende_varslet "Pårørende varslet" "Brukes i Fall: Pårørende varslet."
* #la_seg "La seg" "Brukes i Søvn: La seg."
* #sovnet "Sovnet ca." "Brukes i Søvn: Sovnet ca."
* #oppvakninger "Antall oppvåkninger" "Brukes i Søvn: Antall oppvåkninger."
* #stod_opp "Stod opp" "Brukes i Søvn: Stod opp."
* #kvalitet "Søvnkvalitet" "Brukes i Søvn: Søvnkvalitet."
* #maltid "Måltid" "Brukes i Ernæring: Måltid."
* #drikke_ml "Drikke (ml)" "Brukes i Ernæring: Drikke (ml)."
* #medikament "Medikament" "Brukes i Behovsmedisin: Medikament."
* #dose "Dose" "Brukes i Behovsmedisin: Dose."
* #grunn "Grunn for medisinering" "Brukes i Behovsmedisin: Grunn for medisinering."
* #effekt "Observert effekt" "Brukes i Behovsmedisin: Observert effekt."
* #tid_til_effekt "Tid til effekt (min)" "Brukes i Behovsmedisin: Tid til effekt (min)."
* #stemning "Stemning" "Brukes i Humør: Stemning."
* #energi "Energinivå" "Brukes i Humør: Energinivå."
* #sosial "Sosial" "Brukes i Humør: Sosial."

CodeSystem:  JodaCareAlvorlighetsgradAnfall
Id:          jodacare-alvorlighetsgrad-anfall
Title:       "Alvorlighetsgrad: Anfall"
Description: "Nivåene for alvorlighetsgrad i malen Anfall."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #mild "Mild"
* #moderat "Moderat"
* #alvorlig "Alvorlig"

ValueSet:    JodaCareAlvorlighetsgradAnfallVS
Id:          jodacare-alvorlighetsgrad-anfall-vs
Title:       "Alvorlighetsgrad: Anfall"
Description: "Gyldige nivåer for alvorlighetsgrad i malen Anfall."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareAlvorlighetsgradAnfall

CodeSystem:  JodaCareAlvorlighetsgradAdferd
Id:          jodacare-alvorlighetsgrad-adferd
Title:       "Alvorlighetsgrad: Adferd / uro"
Description: "Nivåene for alvorlighetsgrad i malen Adferd / uro."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #lav "Lav"
* #middels "Middels"
* #hoy "Høy"

ValueSet:    JodaCareAlvorlighetsgradAdferdVS
Id:          jodacare-alvorlighetsgrad-adferd-vs
Title:       "Alvorlighetsgrad: Adferd / uro"
Description: "Gyldige nivåer for alvorlighetsgrad i malen Adferd / uro."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareAlvorlighetsgradAdferd

CodeSystem:  JodaCareAlvorlighetsgradFall
Id:          jodacare-alvorlighetsgrad-fall
Title:       "Alvorlighetsgrad: Fall"
Description: "Nivåene for alvorlighetsgrad i malen Fall."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #uskadet "Uskadet"
* #lett-skadet "Lett skadet"
* #alvorlig-skadet "Alvorlig skadet"

ValueSet:    JodaCareAlvorlighetsgradFallVS
Id:          jodacare-alvorlighetsgrad-fall-vs
Title:       "Alvorlighetsgrad: Fall"
Description: "Gyldige nivåer for alvorlighetsgrad i malen Fall."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareAlvorlighetsgradFall

CodeSystem:  JodaCareSvarAnfallAnfallstype
Id:          jodacare-svar-anfall-anfallstype
Title:       "Anfall: Anfallstype"
Description: "Svaralternativene for feltet anfallstype i malen Anfall."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #tonisk-klonisk "Tonisk-klonisk"
* #absens "Absens"
* #fokalt "Fokalt"
* #myoklont "Myoklont"
* #annet "Annet"

ValueSet:    JodaCareSvarAnfallAnfallstypeVS
Id:          jodacare-svar-anfall-anfallstype-vs
Title:       "Anfall: Anfallstype"
Description: "Gyldige svar for feltet anfallstype i malen Anfall."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarAnfallAnfallstype

CodeSystem:  JodaCareSvarAnfallBevissthet
Id:          jodacare-svar-anfall-bevissthet
Title:       "Anfall: Bevissthet under anfall"
Description: "Svaralternativene for feltet bevissthet i malen Anfall."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #ja "Ja"
* #nei "Nei"
* #delvis "Delvis"

ValueSet:    JodaCareSvarAnfallBevissthetVS
Id:          jodacare-svar-anfall-bevissthet-vs
Title:       "Anfall: Bevissthet under anfall"
Description: "Gyldige svar for feltet bevissthet i malen Anfall."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarAnfallBevissthet

CodeSystem:  JodaCareSvarAdferdType
Id:          jodacare-svar-adferd-type
Title:       "Adferd / uro: Type adferd"
Description: "Svaralternativene for feltet type i malen Adferd / uro."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #verbal-uro "Verbal uro"
* #fysisk-uro "Fysisk uro"
* #selvskading "Selvskading"
* #aggresjon "Aggresjon"
* #romningsforsok "Rømningsforsøk"
* #annet "Annet"

ValueSet:    JodaCareSvarAdferdTypeVS
Id:          jodacare-svar-adferd-type-vs
Title:       "Adferd / uro: Type adferd"
Description: "Gyldige svar for feltet type i malen Adferd / uro."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarAdferdType

CodeSystem:  JodaCareSvarAdferdTiltak
Id:          jodacare-svar-adferd-tiltak
Title:       "Adferd / uro: Tiltak"
Description: "Svaralternativene for feltet tiltak i malen Adferd / uro."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #avledning "Avledning"
* #tilbaketrekning "Tilbaketrekning"
* #samtale "Samtale"
* #fysisk-holding "Fysisk holding"
* #medisin "Medisin"
* #annet "Annet"

ValueSet:    JodaCareSvarAdferdTiltakVS
Id:          jodacare-svar-adferd-tiltak-vs
Title:       "Adferd / uro: Tiltak"
Description: "Gyldige svar for feltet tiltak i malen Adferd / uro."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarAdferdTiltak

CodeSystem:  JodaCareSvarDobesokType
Id:          jodacare-svar-dobesok-type
Title:       "Dobesøk: Type"
Description: "Svaralternativene for feltet type i malen Dobesøk."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #urin "Urin"
* #avforing "Avføring"
* #begge "Begge"

ValueSet:    JodaCareSvarDobesokTypeVS
Id:          jodacare-svar-dobesok-type-vs
Title:       "Dobesøk: Type"
Description: "Gyldige svar for feltet type i malen Dobesøk."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarDobesokType

CodeSystem:  JodaCareSvarDobesokMengde
Id:          jodacare-svar-dobesok-mengde
Title:       "Dobesøk: Mengde"
Description: "Svaralternativene for feltet mengde i malen Dobesøk."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #lite "Lite"
* #normalt "Normalt"
* #mye "Mye"

ValueSet:    JodaCareSvarDobesokMengdeVS
Id:          jodacare-svar-dobesok-mengde-vs
Title:       "Dobesøk: Mengde"
Description: "Gyldige svar for feltet mengde i malen Dobesøk."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarDobesokMengde

CodeSystem:  JodaCareSvarDobesokKonsistens
Id:          jodacare-svar-dobesok-konsistens
Title:       "Dobesøk: Konsistens (Bristol 1-7)"
Description: "Svaralternativene for feltet konsistens i malen Dobesøk."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "1 - Hard"
* #2 "2 - Klumpete"
* #3 "3 - Pølseformet"
* #4 "4 - Glatt"
* #5 "5 - Myk"
* #6 "6 - Grøtaktig"
* #7 "7 - Flytende"

ValueSet:    JodaCareSvarDobesokKonsistensVS
Id:          jodacare-svar-dobesok-konsistens-vs
Title:       "Dobesøk: Konsistens (Bristol 1-7)"
Description: "Gyldige svar for feltet konsistens i malen Dobesøk."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarDobesokKonsistens

CodeSystem:  JodaCareSvarSovnKvalitet
Id:          jodacare-svar-sovn-kvalitet
Title:       "Søvn: Søvnkvalitet"
Description: "Svaralternativene for feltet kvalitet i malen Søvn."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #god "God"
* #urolig "Urolig"
* #darlig "Dårlig"

ValueSet:    JodaCareSvarSovnKvalitetVS
Id:          jodacare-svar-sovn-kvalitet-vs
Title:       "Søvn: Søvnkvalitet"
Description: "Gyldige svar for feltet kvalitet i malen Søvn."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarSovnKvalitet

CodeSystem:  JodaCareSvarErnaeringMaltid
Id:          jodacare-svar-ernaering-maltid
Title:       "Ernæring: Måltid"
Description: "Svaralternativene for feltet maltid i malen Ernæring."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #frokost "Frokost"
* #lunsj "Lunsj"
* #middag "Middag"
* #kvelds "Kvelds"
* #mellommaltid "Mellommåltid"

ValueSet:    JodaCareSvarErnaeringMaltidVS
Id:          jodacare-svar-ernaering-maltid-vs
Title:       "Ernæring: Måltid"
Description: "Gyldige svar for feltet maltid i malen Ernæring."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarErnaeringMaltid

CodeSystem:  JodaCareSvarErnaeringMengde
Id:          jodacare-svar-ernaering-mengde
Title:       "Ernæring: Mengde spist"
Description: "Svaralternativene for feltet mengde i malen Ernæring."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #ingenting "Ingenting"
* #lite "Lite"
* #halvparten "Halvparten"
* #det-meste "Det meste"
* #alt "Alt"

ValueSet:    JodaCareSvarErnaeringMengdeVS
Id:          jodacare-svar-ernaering-mengde-vs
Title:       "Ernæring: Mengde spist"
Description: "Gyldige svar for feltet mengde i malen Ernæring."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarErnaeringMengde

CodeSystem:  JodaCareSvarErnaeringKonsistens
Id:          jodacare-svar-ernaering-konsistens
Title:       "Ernæring: Matkonsistens"
Description: "Svaralternativene for feltet konsistens i malen Ernæring."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #normal "Normal"
* #most "Most"
* #findelt "Findelt"
* #flytende "Flytende"

ValueSet:    JodaCareSvarErnaeringKonsistensVS
Id:          jodacare-svar-ernaering-konsistens-vs
Title:       "Ernæring: Matkonsistens"
Description: "Gyldige svar for feltet konsistens i malen Ernæring."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarErnaeringKonsistens

CodeSystem:  JodaCareSvarHumorStemning
Id:          jodacare-svar-humor-stemning
Title:       "Humør: Stemning"
Description: "Svaralternativene for feltet stemning i malen Humør."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #veldig-glad "Veldig glad"
* #glad "Glad"
* #noytral "Nøytral"
* #trist "Trist"
* #veldig-trist "Veldig trist"
* #engstelig "Engstelig"
* #sint "Sint"
* #forvirret "Forvirret"

ValueSet:    JodaCareSvarHumorStemningVS
Id:          jodacare-svar-humor-stemning-vs
Title:       "Humør: Stemning"
Description: "Gyldige svar for feltet stemning i malen Humør."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarHumorStemning

CodeSystem:  JodaCareSvarHumorEnergi
Id:          jodacare-svar-humor-energi
Title:       "Humør: Energinivå"
Description: "Svaralternativene for feltet energi i malen Humør."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #hoyt "Høyt"
* #normalt "Normalt"
* #lavt "Lavt"

ValueSet:    JodaCareSvarHumorEnergiVS
Id:          jodacare-svar-humor-energi-vs
Title:       "Humør: Energinivå"
Description: "Gyldige svar for feltet energi i malen Humør."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarHumorEnergi

CodeSystem:  JodaCareSvarHumorSosial
Id:          jodacare-svar-humor-sosial
Title:       "Humør: Sosial"
Description: "Svaralternativene for feltet sosial i malen Humør."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #utadvendt "Utadvendt"
* #normal "Normal"
* #tilbaketrukket "Tilbaketrukket"

ValueSet:    JodaCareSvarHumorSosialVS
Id:          jodacare-svar-humor-sosial-vs
Title:       "Humør: Sosial"
Description: "Gyldige svar for feltet sosial i malen Humør."
* ^status = #draft
* ^experimental = true
* include codes from system JodaCareSvarHumorSosial

