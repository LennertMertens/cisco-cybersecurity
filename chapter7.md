# Beveilig van cybersecurity domains
## Defending Systems and Devices
### 1. Verharding van het systeem
Het besturingssysteem speelt een cruciale rol in de werking van een computersysteem en is het doelwit van vele aanvallen.
Het is belangrijk dat je daarom je systeem uitbruik/aanpast zodat het systeem veiliger is.
Dit bestaat uit
1. verwijderen van onnodige programma's en services
2. Beveiligingspatches en updates te instaleren

**Microsoft Baseline Security Analyzer (MBSA)** beoordeelt ontbrekende beveiligingsupdates en beveiligingsfoutconfiguraties in Microsoft Windows. MBSA controleert:
- blanco, eenvoudige of niet-bestaande wachtwoorden
- firewallinstellingen, gastaccountstatus
- beheerdersaccountgegevens
- audit van beveiligingsgebeurtenissen
- onnodige services
- netwerkshares en registerinstellingen
Nadat het besturingssysteem is verhard door MBSA, veranderd de beheerder het beleid en de procedures om het beveiligingsniveau hoog te houden in de toekomst.

#### Antimalware

Het is belangrijk om computers en mobiele apparaten te beschermen met behulp van betrouwbare antimalware-software. De volgende typen antimalware-programma's zijn beschikbaar:

- Antivirusbescherming - Programma controleert continu op virussen. Wanneer het een virus detecteert, waarschuwt het programma de gebruiker en probeert het het virus in quarantaine te plaatsen of te verwijderen, zoals weergegeven in Afbeelding 1.
- Adware-bescherming - Het programma zoekt voortdurend naar programma's die reclame op een computer weergeven.
- Phishing-beveiliging - Programma blokkeert de IP-adressen van bekende phishing-websites en waarschuwt de gebruiker voor verdachte sites.
- Bescherming tegen spyware - Programmeer scans op keyloggers en andere spyware.
- Vertrouwde / niet-vertrouwde bronnen - Programma waarschuwt de gebruiker over onveilige programma's die proberen websites te installeren of onveilig te maken voordat een gebruiker ze bezoekt.
Het kan verschillende programma's en meerdere scans vereisen om alle kwaadwillende software volledig te verwijderen. Voer slechts één malwarebeschermingsprogramma tegelijk uit.

#### Patch Management

Patches zijn code-updates die fabrikanten aanbieden om te voorkomen dat een pas ontdekt virus of worm een succesvolle aanval uitvoert. Van tijd tot tijd combineren fabrikanten patches en upgrades in een uitgebreide updateprogramma genaamd een servicepack.
Sommige organisaties willen misschien een patch testen voordat deze in de hele organisatie wordt geïmplementeerd. De organisatie zou een service gebruiken om patches lokaal te beheren in plaats van de online updateservice van de leverancier te gebruiken. De voordelen van het gebruik van een geautomatiseerde update-patchservice omvatten het volgende:

Beheerders kunnen updates goedkeuren of weigeren
Beheerders kunnen de update van systemen forceren voor een specifieke datum
Beheerders kunnen rapporten opvragen over de update die elk systeem nodig heeft
Elke computer hoeft geen verbinding te maken met de service van de leverancier om patches te downloaden; een systeem krijgt de update van een lokale server
Gebruikers kunnen updates niet uitschakelen of omzeilen
Een geautomatiseerde patchservice biedt beheerders een meer gecontroleerde instelling.
De voordelen hiervan zijn
- Beheerders kunnen updates goedkeuren of weigeren
- Beheerders kunnen de update van systemen forceren voor een specifieke datum
- Beheerders kunnen rapporten opvragen over de update die elk systeem nodig heeft
- Elke computer hoeft geen verbinding te maken met de service van de leverancier om patches te downloaden; een systeem krijgt de update van een lokale server
- Gebruikers kunnen updates niet uitschakelen of omzeilen

#### Firewalls en inbraakdetectiesystemen (Intrusion Detection Systems) voor het host systeeem

##### firewalls

Een softwarefirewall is een programma dat op een computer wordt uitgevoerd om verkeer tussen de computer en andere verbonden computers toe te staan of te weigeren. De softwarefirewall past een reeks regels toe op gegevenstransmissies door inspectie en filtering van datapakketten

##### Inbraakdetectiesystemen

HIDS (host intrusion detection system ) controleert
- systeemaanroepen en bestandssysteemtoegang om ervoor te zorgen dat de verzoeken niet het resultaat zijn van kwaadwillige activiteiten.
- Het kan ook de instellingen van het systeemregister controleren.
- Het register onderhoudt configuratie-informatie over de computer.
- Het kan ook van invloed zijn op de systeemprestaties.
- Kan geen netwerkverkeer monitoren dat het hostsysteem niet bereikt
- bewaakt wel het besturingssysteem en kritieke systeemprocessen die specifiek zijn voor die host.

#### Beveiliging in commincatie
Bij verbinding met het lokale netwerk en het delen van bestanden blijft de communicatie tussen computers binnen dat netwerk.
Om te communiceren en bronnen te delen via een netwerk dat niet beveiligd is, gebruiken gebruikers een Virtual Private Network (VPN).
Een VPN is een privaat netwerk dat externe sites of gebruikers samen verbindt via een openbaar netwerk, zoals internet.
Wanneer verbonden met het zakelijke privé-netwerk, worden gebruikers een deel van dat netwerk en hebben toegang tot alle services en bronnen alsof ze fysiek verbonden zijn met het bedrijfs-LAN.
Externe-toegangsgebruikers moeten een VPN-client op hun computers hebben geïnstalleerd om een veilige verbinding met het privé-bedrijfsnetwerk te vormen. De VPN-clientsoftware codeert gegevens voordat deze via internet naar de VPN-gateway op het bedrijfsnetwerk worden verzonden. VPN-gateways maken, beheren en besturen VPN-verbindingen, ook wel bekend als VPN-tunnels.

### 2. internet beveiliging

##### WEP
Wired Equivalent Privacy (WEP) is een van de eerste en meest gebruikte Wi-Fi-beveiligingsstandaarden. De WEP-standaard biedt verificatie- en codebeveiliging.
 De WEP-standaard werd een Wi-Fi-beveiligingsstandaard in 1999, toen draadloze communicatie net aansloeg. Ondanks herzieningen van de standaard en een toegenomen sleutelgrootte, ondervond WEP talrijke beveiligingszwakheden. Cybercriminelen kunnen WEP-wachtwoorden binnen enkele minuten kraken met behulp van vrij beschikbare software. Ondanks verbeteringen blijft WEP zeer kwetsbaar en moeten gebruikers systemen upgraden die afhankelijk zijn van WEP.
 
 ##### WPA/WPA2
 Wi-Fi Protected Access (WPA) was het antwoord van de computerindustrie op de zwakte van de WEP-standaard. De meest voorkomende WPA-configuratie is WPA-PSK (Pre-Shared Key). De sleutels die worden gebruikt door WPA zijn 256-bits, een aanzienlijke toename ten opzichte van de 64-bits en 128-bits sleutels die worden gebruikt in het WEP-systeem.

De WPA-standaard zorgde voor verschillende beveiligingsverbeteringen. Ten eerste leverde WPA berichtintegriteitscontroles (MIC) die konden detecteren of een aanvaller gegevens had vastgelegd en gewijzigd die werden doorgegeven tussen het draadloze toegangspunt en een draadloze client. Een andere belangrijke beveiligingsverbetering was het Temporal Key Integrity Protocol (TKIP). De TKIP-standaard bood de mogelijkheid om coderingssleutels beter te verwerken, te beschermen en te wijzigen. Advanced Encryption Standard (AES) vervangt TKIP voor een nog beter beheer van sleutels en encryptie.

WPA bevatte, net als zijn vorige WEP, een aantal breed erkende kwetsbaarheden. Als gevolg daarvan vond de release van de Wi-Fi Protected Access II (WPA2) -standaard in 2006 plaats. Een van de belangrijkste beveiligingsverbeteringen van WPA naar WPA2 was het verplichte gebruik van AES-algoritmen en de introductie van de Counter Cipher-modus met Block Chaining Message Authentication Code Protocol (CCM) als vervanging voor TKIP.

##### Mutual Authentication
grote kwetsbaarheden van draadloze netwerken is het gebruik van frauduleuze toegangspunten
De bedrieger kan verbindingsverzoeken ontvangen, de gegevens in het verzoek kopiëren en de gegevens doorsturen naar het geautoriseerde netwerktoegangspunt. Dit type man-in-the-middle-aanval is erg moeilijk te detecteren en kan leiden tot gestolen inloggegevens en verzonden gegevens. Om rouge-toegangspunten te voorkomen, ontwikkelde de computerindustrie wederzijdse authenticatie. Wederzijdse authenticatie, ook wel tweewegverificatie genoemd, is een proces of technologie waarbij beide entiteiten in een communicatieverbinding zich aan elkaar authenticeren. In een draadloze netwerkomgeving verifieert de client het toegangspunt en verifieert het toegangspunt de client. Met deze verbetering konden clients rouge-toegangspunten detecteren voordat ze verbinding maakten met het niet-geautoriseerde apparaat.

![Mutual Authentication](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/C7-001.png "Mutual Authentication")

### 3. File toegang
#### Machten

##### Principe van Least Privilege
Dit betekend dat je de gebruiker enkel toegang geeft tot een deel van de schijf. Door de toegang tot bronnen te beperken, voorkomt u ook dat schadelijke programma's toegang krijgen tot die bronnen als de computer van de gebruiker geïnfecteerd raakt.

##### Gebruikersrechten beperken
Als een beheerder machtigingen voor een netwerkshare voor een persoon of een groep weigert, heeft deze weigering voorrang boven eventuele andere machtigingsinstellingen.
Nadat machtigingen voor bovenliggende mappen zijn ingesteld, nemen mappen en bestanden die in de bovenliggende map zijn gemaakt, de machtigingen van de bovenliggende map over.

##### Soorten machten
- volledige controle = Je hebt de vollige controle op deze file, je kan bewerken, lezen ,uitvoeren, enz...
- bewerken = je kan files verwijderen,wijzen maar niet aanmaken
- lezen en uitvoeren = je kan alleen maar zaken lezen, en programmas in deze map uitvoeren
- lezen = Je kan enkel lezen
- schrijven = je kan aanpassingen maken in al bestaander files, maar je kan er ook nieuwe maken, cool e ?

#### File Encryption

Encryptie is een hulpmiddel dat wordt gebruikt om gegevens te beschermen. Encryptie transformeert gegevens met behulp van een ingewikkeld algoritme om het onleesbaar te maken.

##### Encrypting File System (EFS)
De Windows-implementatie van EFS koppelt het rechtstreeks aan een specifiek gebruikersaccount. Alleen de gebruiker die de gegevens versleuteld heeft, heeft toegang tot de gecodeerde bestanden of mappen.

##### BitLocker
Een gebruiker kan er ook voor kiezen om een volledige harde schijf in Windows te versleutelen met een functie genaamd BitLocker. BitLocker maakt gebruik van Trusted Platform Module (TPM) inschakelen in het BIOS. De TPM is een gespecialiseerde chip die op het moederbord is geïnstalleerd. De TPM slaat informatie op die specifiek is voor het hostsysteem, zoals coderingssleutels, digitale certificaten en wachtwoorden.

##### BitLocker To Go
BitLocker To Go codeert verwisselbare stations. BitLocker To Go gebruikt geen TPM-chip.

#### System en Data Backups

Gegevensback-ups worden meestal offsite opgeslagen om de back-upmedia te beschermen als er iets met de hoofdfaciliteit gebeurt.

Dit zijn enkele overwegingen voor gegevensback-ups:

- Frequentie - Back-ups kunnen lang duren. Soms is het eenvoudiger om maandelijks of wekelijks een volledige back-up te maken en maakt u dan vaak gedeeltelijke back-ups van alle gegevens die zijn gewijzigd sinds de laatste volledige back-up. Het hebben van veel gedeeltelijke back-ups verhoogt echter de hoeveelheid tijd die nodig is om de gegevens te herstellen.
- Opslag - Voor extra beveiliging transporteert u back-ups naar een goedgekeurde offsite opslaglocatie op een dagelijkse, wekelijkse of maandelijkse rotatie, zoals vereist door het beveiligingsbeleid.
- Beveiliging - Bescherm back-ups met wachtwoorden. De operator voert vervolgens het wachtwoord in voordat de gegevens op de back-upmedia worden hersteld.
- Validatie - Valideer altijd back-ups om de integriteit van de gegevens te waarborgen.

### 4. Inhoudscontrole en blokkering

Contentbeheersoftware kan sites blokkeren die bepaalde soorten materiaal bevatten, zoals pornografie of controversiële religieuze
Een beheerder kan de volgende typen filters implementeren:

- Browsergebaseerde filters via een externe browserextensie
- E-mailfilters via een client- of servergebaseerd filter
- Filters aan de clientzijde geïnstalleerd op een specifieke computer
- Op router gebaseerde contentfilters die voorkomen dat verkeer het netwerk binnendringt
- Op apparaten gebaseerde contentfiltering vergelijkbaar met op router gebaseerd
- Op cloud gebaseerde contentfiltering

Zoekmachines zoals Google bieden de mogelijkheid een veiligheidsfilter in te schakelen om ongepaste links uit de zoekresultaten uit te sluiten.


#### Disk Cloning

Schijf klonen kopieert de inhoud van de harde schijf van de computer naar een afbeeldingbestand. Dit zorgt ervoor dat je als je computer zou kapot gaan het gewoon kan brengen naar de staat wanneer de afbeelding is genomen!

#### Deep Freeze
Deep Freeze bevriest de harde schijf partitie. Wanneer een gebruiker het systeem opnieuw opstart, keert het systeem terug naar de bevroren configuratie.
Als de beheerder de configuratie van het systeem moet wijzigen, moet ze eerst de beschermde partitie "ontdooien" door Deep Freeze uit te schakelen.

### 5. fysieke bescherming

#### hardware
- Gebruik kabelsloten met apparatuur
- Houd telecommunicatiekamers op slot.
- Gebruik veiligheidskooien rond apparatuur.
- Veel draagbare apparaten en dure computermonitoren hebben een speciale beveiligingssleuf voor stalen beugels die is ingebouwd om te gebruiken in combinatie met kabelsloten.

#### uitlog klokken

Een medewerker staat op en verlaat zijn computer om een pauze te nemen. Als de medewerker geen actie onderneemt om zijn werkstation te beveiligen, is alle informatie over dat systeem kwetsbaar voor een ongeautoriseerde gebruiker. Een organisatie kan de volgende maatregelen nemen om ongeoorloofde toegang te voorkomen:

##### Idle Time-out en schermvergrendeling

De beste beveiligingsmethode om een niet-actieve timer te configureren die de gebruiker automatisch uitlogt en het scherm vergrendelt na een bepaalde periode.

##### Aanmeldtijden

Hierbij kunnen medewerkers op bepaalde uren willen laten inloggen, bijvoorbeeld van 07.00 tot 18.00 uur. Het systeem blokkeert aanmeldingen tijdens de uren die buiten de toegestane inloguren vallen.


