# Beveilig van cybersecurity domains
## Defending Systems and Devices
### 1. Verharding van het systeem
Het besturingssysteem kan worden aangavallen daarom is het belangrijk dat je dit daarom uitbrijd/aanpast zodat het systeem veiliger is.
Dit bestaat uit
1. verwijderen van onnodige programma's en services
2. Beveiligingspatches en updates te instaleren

**Microsoft Baseline Security Analyzer (MBSA)**
beoordeelt ontbrekende beveiligingsupdates en beveiligingsfoutconfiguraties in Microsoft Windows. MBSA controleert:
- blanco, eenvoudige of niet-bestaande wachtwoorden
- firewallinstellingen, gastaccountstatus
- beheerdersaccountgegevens
- onnodige services
- netwerkshares en registerinstellingen
Nadat het besturingssysteem is verhard door MBSA, veranderd de beheerder het beleid en de procedures om het beveiligingsniveau hoog te houden in de toekomst.

#### Antimalware

De volgende typen antimalware-programma's zijn beschikbaar:

- Antivirusbescherming - Programma controleert continu op virussen.Verwijderd indien nodig
- Adware-bescherming - Het programma zoekt naar programma's die reclame op een computer weergeven.
- Phishing-beveiliging - Programma blokkeert de IP-adressen van bekende phishing-websites en waarschuwt de gebruiker voor verdachte sites.
- Bescherming tegen spyware - Programmeer scans op keyloggers en andere spyware.
- Vertrouwde / niet-vertrouwde bronnen - Programma waarschuwt de gebruiker over onveilige programma's die proberen websites te installeren of onveilig te maken voordat een gebruiker ze bezoekt.

#### Patch Management

Patches zijn code-updates die fabrikanten aanbieden om te voorkomen dat een pas ontdekt virus of worm een succesvolle aanval uitvoert. Soms combineren fabrikanten patches en upgrades dat noemt een servicepack.
In sommige bedrijven worden de patches eerst lokaal gestet alsvoorens geïmplementeerd in de hele organisatie.
De voordelen hiervan is:

- Beheerders kunnen updates goedkeuren/weigeren, forceren voor een specifieke datum,rapporten opvragen
- Computer's hebben geen verbinding met internet nodig (een systeem krijgt de update van een lokale server)
-Gebruikers kunnen updates niet uitschakelen of omzeilenµ

#### Firewalls en inbraakdetectiesystemen (Intrusion Detection Systems) voor het host systeeem

##### firewalls

Een softwarefirewall is een programma dat verkeer tussen de computer en andere verbonden computers toestaat of te weigerd. De softwarefirewall past een reeks regels toe op gegevenstransmissies door inspectie en filtering van datapakketten

##### Inbraakdetectiesystemen

HIDS (host intrusion detection system) controleert
- systeemaanroepen en bestandssysteemtoegang om ervoor te zorgen dat de verzoeken niet het resultaat zijn van kwaadwillige activiteiten.
- Het kan ook de instellingen van het systeemregister controleren.
- Het kan ook van invloed zijn op de systeemprestaties.
- bewaakt het besturingssysteem en kritieke systeemprocessen die specifiek zijn voor die host.
- Kan geen netwerkverkeer monitoren dat het hostsysteem niet bereikt

#### Beveiliging in commincatie

Om te communiceren en via een netwerk dat niet beveiligd is, gebruiken gebruikers een Virtual Private Network (VPN).
Een VPN is een privaat netwerk dat externe sites of gebruikers samen verbindt via een openbaar netwerk, zoals internet.
Wanneer verbonden met het zakelijke privé-netwerk, worden gebruikers een deel van dat netwerk en hebben toegang tot alle services en bronnen alsof ze fysiek verbonden zijn met het bedrijfs-LAN.

### 2. Internet beveiliging

##### WEP
Wired Equivalent Privacy (WEP) is een van de eerste en meest gebruikte Wi-Fi-beveiligingsstandaarden. De WEP-standaard biedt verificatie- en codebeveiliging. Cybercriminelen kunnen WEP-wachtwoorden binnen enkele minuten kraken met behulp van vrij beschikbare software. Ondanks verbeteringen blijft WEP zeer kwetsbaar en moeten gebruikers systemen upgraden die afhankelijk zijn van WEP.
 
 ##### WPA/WPA2
 Wi-Fi Protected Access (WPA) is beter als WEP. De meest voorkomende WPA-configuratie is WPA-PSK (Pre-Shared Key). De sleutels die worden gebruikt door WPA zijn 256-bits, terwijl WEP 64-bits en 128-bits sleutels hadden.

De WPA-standaard zorgde voor verschillende beveiligingsverbeteringen.
- WPA berichtintegriteitscontroles (MIC) die konden detecteren of een aanvaller gegevens had vastgelegd.
- De Temporal Key Integrity Protocol (TKIP-standaard) bood de mogelijkheid om coderingssleutels te verbeter.
- Advanced Encryption Standard (AES) vervangt TKIP voor een nog beter beheer van sleutels en encryptie.

Door WPA kwetsbaarheden kwam Wi-Fi Protected Access II (WPA2).

beveiligingsverbeteringen tussen WPA en WPA2:
- Verplichte gebruik van AES-algoritmen
- Counter Cipher-modus met Block Chaining Message Authentication Code Protocol (CCM) als vervanging voor TKIP.

##### Mutual Authentication
Het gebruik van frauduleuze toegangspunten:

Dit type man-in-the-middle-aanval is erg moeilijk te detecteren en kan leiden tot gestolen inloggegevens en verzonden gegevens. Om rouge-toegangspunten te voorkomen, ontwikkelde de computerindustrie wederzijdse authenticatie. Wederzijdse authenticatie.

![Mutual Authentication](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/C7-001.png "Mutual Authentication")

### 3. File toegang
#### Machten

##### Principe van Least Privilege
Dit betekend dat je de gebruiker enkel toegang geeft tot een deel van de schijf. Door de toegang tot bronnen te beperken, voorkomt u ook dat schadelijke programma's toegang krijgen tot bronnen die gevoelig liggen.

##### Gebruikersrechten beperken
Als een beheerder machtigingen een persoon of een groep weigert, heeft deze weigering voorrang boven eventuele andere machtigingsinstellingen.
Als machtigingen voor bovenliggende mappen zijn ingesteld, nemen kinder mappen en bestanden de machtigingen van de bovenliggende map over.

**Soorten machten**
- volledige controle = Je hebt de vollige controle op deze file, je kan bewerken, lezen ,uitvoeren, enz...
- bewerken = je kan files verwijderen,wijzen maar niet aanmaken
- lezen en uitvoeren = je kan alleen maar zaken lezen, en programmas in deze map uitvoeren
- lezen = Je kan enkel lezen
- schrijven = je kan aanpassingen maken in al bestaander files, maar je kan er ook nieuwe maken, cool e ?

#### File Encryption

Encryptie is een hulpmiddel dat wordt gebruikt om gegevens te beschermen. Encryptie transformeert gegevens met behulp van een ingewikkeld algoritme om het onleesbaar te maken.

**Encrypting File System (EFS)**
De Windows-implementatie van EFS koppelt het rechtstreeks aan een specifiek gebruikersaccount. Alleen de gebruiker die de gegevens versleuteld heeft, heeft toegang tot de gecodeerde bestanden of mappen.

**BitLocker**
De volledige harde schijf in Windows versleutelen kan met BitLocker. BitLocker maakt gebruik van Trusted Platform Module (TPM) inschakelen in het BIOS. (TPM chip en slaat informatie op die specifiek is voor het hostsysteem zoals coderingssleutels, digitale certificaten en wachtwoorden).

**BitLocker To Go**
BitLocker To Go codeert verwisselbare stations. BitLocker To Go gebruikt geen TPM-chip.

**System en Data Backups**

Gegevensback-ups worden meestal offsite opgeslagen
Dit zijn enkele overwegingen voor gegevensback-ups:

- Frequentie - back up maandelijks/ weekenlijks, bespaard veel tijd
- Opslag - transporteer u back-ups naar een goedgekeurde offsite opslaglocatie.
- Beveiliging - Bescherm back-ups met wachtwoorden
- Validatie - Valideer altijd back-ups om de integriteit van de gegevens te waarborgen.

### 4. Inhoudscontrole en blokkering

Contentbeheersoftware kan sites blokkeren die bepaalde soorten materiaal bevatten, zoals pornografie of controversiële religieuze
volgende typen filters kunnen worden toegepast:

- Browsergebaseerde filters via een externe browserextensie
- E-mailfilters via een client- of servergebaseerd filter
- Filters aan de clientzijde geïnstalleerd op een specifieke computer
- Op router gebaseerde contentfilters die voorkomen dat verkeer het netwerk binnendringt
- Op apparaten gebaseerde contentfiltering vergelijkbaar met op router gebaseerd
- Op cloud gebaseerde contentfiltering

**Disk Cloning**

Schijf klonen kopieert de inhoud van de harde schijf van de computer naar een afbeeldingbestand. Dit zorgt ervoor dat je als je computer zou kapot gaan het gewoon kan brengen naar de staat wanneer de afbeelding is genomen!

**Deep Freeze**
Deep Freeze bevriest de harde schijf partitie. Wanneer een gebruiker het systeem opnieuw opstart, keert het systeem terug naar de bevroren configuratie.
Als de beheerder de configuratie van het systeem moet wijzigen, moet ze eerst de beschermde partitie "ontdooien" door Deep Freeze uit te schakelen.

### 5. fysieke bescherming

#### hardware
- Gebruik kabelsloten met apparatuur
- Houd telecommunicatiekamers op slot.
- Gebruik veiligheidskooien rond apparatuur.

#### uitlog klokken

Een medewerker staat op en verlaat zijn computer om een pauze te nemen. Een organisatie kan de volgende maatregelen nemen om ongeoorloofde toegang te voorkomen:

**Idle Time-out en schermvergrendeling**

De beste beveiligingsmethode om een niet-actieve timer te configureren die de gebruiker automatisch uitlogt en het scherm vergrendelt na een bepaalde periode.

##### Aanmeldtijden

Hierbij kunnen medewerkers op bepaalde uren willen laten inloggen, bijvoorbeeld van 07.00 tot 18.00 uur. Het systeem blokkeert aanmeldingen tijdens de uren die buiten de toegestane inloguren vallen.

#### Voorraad en RFID-tags
Radiofrequentie-identificatie (RFID) maakt gebruik van radiogolven om objecten te identificeren en te volgen. RFID-inventarissystemen gebruiken tags die zijn gekoppeld aan alle items die een organisatie wil volgen. De tags bevatten een geïntegreerd circuit dat verbinding maakt met een antenne. RFID-tags zijn klein en vereisen zeer weinig stroom, dus ze hebben geen batterij nodig om informatie op te slaan om met een lezer uit te wisselen. RFID kan het bijhouden van activa helpen automatiseren of elektronische apparaten draadloos vergrendelen, ontgrendelen of configureren.


## Verharding van het server

### 1. Secure Remote Access

#### Remote desktop

Externe toegang verwijst naar elke combinatie van hardware en software waarmee gebruikers op afstand toegang hebben tot een lokaal intern netwerk.

Met het Windows-besturingssysteem kunnen technici Remote Desktop en Hulp op afstand gebruiken om computers te repareren en te upgraden.
Het installatieproces van Windows schakelt standaard geen extern bureaublad in. Als u deze functie inschakelt, wordt poort 3389 geopend en dit kan leiden tot een beveiligingslek als een gebruiker deze service niet nodig heeft.

#### Telnet, SSH, and SCP

Secure Shell (SSH) is een protocol dat zorgt voor een veilige (versleutelde) beheerverbinding met een apparaat op afstand. SSH zou Telnet moeten vervangen voor beheerverbindingen. Telnet is een ouder protocol dat onbeveiligde gewone tekstoverdracht gebruikt van zowel de aanmeldingsverificatie (gebruikersnaam en wachtwoord) als de gegevens die worden verzonden tussen de communicerende apparaten. SSH biedt beveiliging voor externe verbindingen door sterke codering te bieden wanneer een apparaat authenticeert (gebruikersnaam en wachtwoord) en om gegevens te verzenden tussen de communicerende apparaten. SSH gebruikt TCP-poort 22. Telnet gebruikt TCP-poort 23.
Secure Copy (SCP) brengt veilig computerbestanden over tussen twee externe systemen. SCP gebruikt SSH voor gegevensoverdracht (inclusief het authenticatie-element), dus SCP zorgt voor de authenticiteit en vertrouwelijkheid van de gegevens die onderweg zijn.

### 2. Administratieve maatregelen

#### Poorten en services beveiligen

Cybercriminelen maken misbruik van de services die op een systeem worden uitgevoerd, omdat ze weten dat de meeste apparaten meer services of programma's uitvoeren dan ze nodig hebben.
Een eenvoudige methode die veel beheerders gebruiken om het netwerk te beveiligen tegen ongeautoriseerde toegang, is door alle ongebruikte poorten op een switch uit te schakelen. Daarbij moet een beheerder moet elke service bekijken om de noodzaak ervan te verifiëren en het risico ervan te evalueren. Verwijder alle onnodige services.

#### Bevoorrechte accounts
Cybercriminelen gebruiken bevoorrechte accounts omdat ze de krachtigste accounts in de organisatie zijn. Privileged accounts hebben de inloggegevens om toegang tot systemen te krijgen en ze bieden een verhoogde, onbeperkte toegang.

De organisatie moet de volgende aanbevolen procedures volgen voor het beveiligen van vertrouwelijke accounts:

- Identificeer en verminder het aantal geprivilegieerde accounts
- Dwing het principe van het minste privilege af
- Stel een proces in voor het herroepen van rechten wanneer werknemers hun baan verlaten of van baan veranderen
- Elimineer gedeelde accounts met wachtwoorden die niet verlopen
- Veilige wachtwoordopslag
- Elimineer gedeelde referenties voor meerdere beheerders
- Wijzig automatisch privileged account wachtwoorden om de 30 of 60 dagen
- Registreer geprivilegieerde sessies
- Implementeer een proces om ingesloten wachtwoorden voor scripts en serviceaccounts te wijzigen
- Log alle gebruikersactiviteiten in
- Genereer meldingen voor ongewoon gedrag
- Schakel inactieve bevoorrechte accounts uit
- Gebruik multi-factor authenticatie voor alle administratieve toegang
- Implementeer een gateway tussen de eindgebruiker en gevoelige assets om de netwerkblootstelling aan malware te beperken
- Het vergrendelen van geprivilegieerde accounts is essentieel voor de beveiliging van de organisatie. Het beveiligen van deze accounts moet een continu proces zijn. Een organisatie moet dit proces evalueren om de vereiste aanpassingen aan te brengen om de beveiliging te verbeteren.

Soorten van Bevoorrechte accounts moeten nog worden aangevult

#### Logboeken en waarschuwingen inschakelen

Een logboek registreert alle gebeurtenissen terwijl ze zich voordoen.
In een controlelogboek worden bijvoorbeeld pogingen voor gebruikersverificatie bijgehouden en een toegangslogboek biedt alle details over aanvragen voor specifieke bestanden op een systeem.

##### Logboeken van besturingssystemen
Logboeken van besturingssystemen registreren gebeurtenissen die optreden vanwege operationele acties die door het besturingssysteem worden uitgevoerd.vb
- Clientaanvragen en serverreacties zoals succesvolle gebruikersauthenticaties
- Gebruiksinformatie die het aantal en de omvang van transacties in een bepaalde periode bevat

##### Beveiligingsapplicaties
Organisaties gebruiken op het netwerk of op het systeem gebaseerde beveiligingssoftware om schadelijke activiteiten te detecteren.

### 3. Physical Protection of Servers

#### Power

Een continue toevoer van elektrische stroom is van cruciaal belang in de enorme faciliteiten voor server- en gegevensopslag van vandaag. Hier zijn enkele algemene regels voor het bouwen van effectieve elektrische voedingssystemen:

- Datacenters moeten op een andere stroomvoorziening van de rest van het gebouw staan
Redundante voedingsbronnen: twee of meer feeds afkomstig van twee of meer elektrische onderstations
- Vermogen conditionering
- Back-upvermogenssystemen zijn vaak vereist
- UPS moet beschikbaar zijn om systemen fraai af te sluiten
Een organisatie moet zichzelf beschermen tegen verschillende problemen bij het ontwerpen van haar elektrische voedingssystemen.

##### Power Excess

Spike: kortstondige hoogspanning
Overspanning: langdurige hoogspanning

##### Stroomuitval

Storing: kortstondig vermogensverlies
Blackout: volledig vermogensverlies

##### Vermogensbeperking

Sag / dip: tijdelijke lage spanning
Brownout: langdurige lage spanning
Inschakelstroom: initiële stroomstoot

####  Verwarming, ventilatie en airconditioning

HVAC-systemen (Heating, Ventilation, and Air Conditioning ) regelen de omgeving (temperatuur, vochtigheid, luchtstroom en luchtfiltering) en moeten worden gepland en gebruikt in combinatie met andere datacentercomponenten, zoals computerhardware, bekabeling, gegevensopslag, brandbeveiliging, fysieke beveiligingssystemen en stroomvoorziening.
Commerciële HVAC-systemen en andere gebouwbeheersystemen maken nu verbinding met internet voor bewaking en besturing op afstand. Recente gebeurtenissen hebben aangetoond dat dergelijke systemen (vaak "slimme systemen" genoemd) ook grote veiligheidsimplicaties met zich meebrengen.
Een van de risico's verbonden aan slimme systemen is dat de personen die toegang hebben tot en het systeem beheren werken voor een aannemer of een externe leverancier

#### Hardware Monitoring

Hardware-monitoring is vaak te vinden in grote server farms. Een server farm is een faciliteit die honderden of duizenden servers huisvest voor bedrijven. Google heeft over de hele wereld veel server farms om optimale services te bieden.
Hardwarebewakingssystemen worden gebruikt om de gezondheid van deze systemen te bewaken en om downtime van servers en applicaties te minimaliseren. Moderne hardwarebewakingssystemen maken gebruik van USB- en netwerkpoorten om de conditie van de CPU-temperatuur, voedingsstatus, ventilatorsnelheid en temperatuur, geheugenstatus, schijfruimte en netwerkkaartstatus te verzenden.

### 5. Netwerk verharding

#### Operation Centers

##### Network Operation Center (NOC)
- oplossen van netwerkproblemen
- bestaat uit een of meer locaties met de hulpprogramma's die beheerders

#### Security Operation Center (SOC)
- speciale site die de informatiesystemen van de organisatie zoals websites, applicaties, databases, bewaakt, beoordeelt en verdedigt.

Beide entiteiten gebruiken een hiërarchische laagstructuur om gebeurtenissen af te handelen.
Laag 1 eerste behandelt alle gebeurtenissen en escaleert elke gebeurtenis die niet kan worden verwerkt naar de tweede laag. Laag 2 beoordeelt het evenement in detail om het op te lossen.
Laag 3 zijn de deskundigen en lossen problemen op die laag 2 niet kon oplossen

Dit testen gebuerd door simulatie-oefening

##### Switches, Routers, and Network Appliances

- verander standaart wachtwoord

###### Switches
####### gevaren
- ARP
- STP
####### oplossingen
-poort beveiliging (aantal geldige MAC-adressen dat is toegestaan op een poort)

###### VLAN's
####### gevaren( valt buiten de curus) 
####### oplossingen
- regelmatige systeempatching en updates van de IOS.

###### Firewalls

Een firewall filtert ongeoorloofd of mogelijk gevaarlijk verkeer van het netwerk. Een eenvoudige firewall biedt basisfuncties voor verkeersfiltering met behulp van toegangscontrolelijsten (ACL's)

###### Routers

Fysieke beveiliging, geavanceerde configuratie-instellingen, gebruik van veilige routeringsprotocollen met authenticatie en gepaste systeemupdates en patches indien nodig.

###### Wireless and Mobile Devices

De beste manier om een draadloos netwerk te beveiligen, is door gebruik te maken van verificatie en codering. De oorspronkelijke draadloze standaard, 801.11, introduceerde twee soorten authenticatie :

1.Open systeemverificatie - Elk draadloos apparaat kan verbinding maken met het draadloze netwerk. Gebruik deze methode in situaties waar beveiliging geen probleem is.

2.Gedeelde sleutelverificatie - biedt mechanismen voor het verifiëren en coderen van gegevens tussen een draadloze client en AP of draadloze router.
- WEP
- WPA
- WPA2

##### Network and Routing Services

###### Rip beveiliging
- filter van packeten gestuurd van source/distination  
- bekijk log'
- check routes voor je zz kan accpeteren

###### NTP
De juiste tijd hebben binnen netwerken is belangrijk. Correcte tijdstempels volgen nauwkeurig netwerkgebeurtenissen zoals beveiligingsovertredingen. Bovendien is kloksynchronisatie van cruciaal belang voor de juiste interpretatie van gebeurtenissen in syslog-gegevensbestanden en voor digitale certificaten.
Network Time Protocol (NTP) is een protocol dat de klokken van computersystemen synchroniseert via gegevensnetwerken. Met NTP kunnen netwerkapparaten hun tijdsinstellingen synchroniseren met een NTP-server.
Cybercriminelen vallen timeservers aan om beveiligde communicatie te onderbreken die afhankelijk is van digitale certificaten en om aanvalsinformatie te verbergen, zoals nauwkeurige tijdstempels.

#### Voice and Video Equipment

Voice over IP (VoIP) maakt gebruik van netwerken zoals internet om telefoongesprekken te voeren en te ontvangen.
Er zijn verschillende opties beschikbaar voor de telefoonset:
- Een traditionele telefoon met een adapter (de adapter fungeert als een hardware-interface tussen een traditionele, analoge telefoon en een digitale VoIP-lijn)
- Een VoIP-compatibele telefoon
- VoIP-software op een computer geïnstalleerd

Voer de volgende tegenmaatregelen uit om VoIP te beveiligen:

- Versleutel stemberichtpakketten om te beschermen tegen afluisteren.
- Gebruik SSH om gateways en switches te beveiligen.
- Wijzig alle standaardwachtwoorden.
- Gebruik een inbraakdetectiesysteem om aanvallen zoals ARP-vergiftiging te detecteren.
- Gebruik sterke authenticatie om spoofing bij registratie te beperken (cybercriminelen leiden alle inkomende oproepen door naar het slachtoffer), proxy imiteren (bedriegt het slachtoffer in communicatie met een frauduleuze proxy die is opgezet door de cybercriminelen) en roep kaping (de oproep wordt onderschept en omgeleid naar een ander pad voordat de bestemming wordt bereikt).
- Implementeer firewalls die VoIP herkennen om streams te monitoren en abnormale signalen te filteren.

#### Netwerk- en IoT-sensoren

Bedrijven gebruiken deze apparaten om inventaris, voertuigen en personeel bij te houden. IoT-apparaten bevatten geospatiale sensoren. Een gebruiker kan omgevingsvariabelen zoals temperatuur, vochtigheid en belichting globaal lokaliseren, bewaken en besturen. De IoT-industrie vormt een enorme uitdaging voor professionals in de informatiebeveiliging omdat veel IoT-apparaten gevoelige informatie vastleggen en verzenden. Cybercriminelen richten zich op deze systemen om gegevens te onderscheppen of om de prestaties en beschikbaarheid te beïnvloeden.

### Physical Access Control

Fysieke barrières bestaan meestal uit
- Omheiningsheksysteem
- Beveiliging poortsysteem
- Bolderpalen
- Biometrische authenticatiesystemen omvatten metingen van het gezicht, vingerafdrukken, handgeometrie, iris, retina, handtekening en stem. (De CER (Crossover Error Rate) is de snelheid waarbij de foutieve afkeuringsfrequentie en de foutieve acceptatiesnelheid gelijk zijn, zoals weergegeven in de figuur.)
- Badges
- wachters
- Video bewaking
- Radio-frequency identification (identificatie met radiogolven, RFID)
