# Beveilig van cybersecurity domains
## Defending Systems and Devices
### Verharding van het systeem
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

### Antimalware

Het is belangrijk om computers en mobiele apparaten te beschermen met behulp van betrouwbare antimalware-software. De volgende typen antimalware-programma's zijn beschikbaar:

- Antivirusbescherming - Programma controleert continu op virussen. Wanneer het een virus detecteert, waarschuwt het programma de gebruiker en probeert het het virus in quarantaine te plaatsen of te verwijderen, zoals weergegeven in Afbeelding 1.
- Adware-bescherming - Het programma zoekt voortdurend naar programma's die reclame op een computer weergeven.
- Phishing-beveiliging - Programma blokkeert de IP-adressen van bekende phishing-websites en waarschuwt de gebruiker voor verdachte sites.
- Bescherming tegen spyware - Programmeer scans op keyloggers en andere spyware.
- Vertrouwde / niet-vertrouwde bronnen - Programma waarschuwt de gebruiker over onveilige programma's die proberen websites te installeren of onveilig te maken voordat een gebruiker ze bezoekt.
Het kan verschillende programma's en meerdere scans vereisen om alle kwaadwillende software volledig te verwijderen. Voer slechts één malwarebeschermingsprogramma tegelijk uit.

### Patch Management

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

### Firewalls en inbraakdetectiesystemen (Intrusion Detection Systems) voor het host systeeem

#### firewalls

Een softwarefirewall is een programma dat op een computer wordt uitgevoerd om verkeer tussen de computer en andere verbonden computers toe te staan of te weigeren. De softwarefirewall past een reeks regels toe op gegevenstransmissies door inspectie en filtering van datapakketten

#### Inbraakdetectiesystemen

HIDS (host intrusion detection system ) controleert
- systeemaanroepen en bestandssysteemtoegang om ervoor te zorgen dat de verzoeken niet het resultaat zijn van kwaadwillige activiteiten.
- Het kan ook de instellingen van het systeemregister controleren.
- Het register onderhoudt configuratie-informatie over de computer.
- Het kan ook van invloed zijn op de systeemprestaties.
- Kan geen netwerkverkeer monitoren dat het hostsysteem niet bereikt
- bewaakt wel het besturingssysteem en kritieke systeemprocessen die specifiek zijn voor die host.

### Beveiliging in commincatie
Bij verbinding met het lokale netwerk en het delen van bestanden blijft de communicatie tussen computers binnen dat netwerk.
Om te communiceren en bronnen te delen via een netwerk dat niet beveiligd is, gebruiken gebruikers een Virtual Private Network (VPN).
Een VPN is een privaat netwerk dat externe sites of gebruikers samen verbindt via een openbaar netwerk, zoals internet.
Wanneer verbonden met het zakelijke privé-netwerk, worden gebruikers een deel van dat netwerk en hebben toegang tot alle services en bronnen alsof ze fysiek verbonden zijn met het bedrijfs-LAN.
Externe-toegangsgebruikers moeten een VPN-client op hun computers hebben geïnstalleerd om een veilige verbinding met het privé-bedrijfsnetwerk te vormen. De VPN-clientsoftware codeert gegevens voordat deze via internet naar de VPN-gateway op het bedrijfsnetwerk worden verzonden. VPN-gateways maken, beheren en besturen VPN-verbindingen, ook wel bekend als VPN-tunnels.

#### WEP
Wired Equivalent Privacy (WEP) is een van de eerste en meest gebruikte Wi-Fi-beveiligingsstandaarden. De WEP-standaard biedt verificatie- en codebeveiliging.
 De WEP-standaard werd een Wi-Fi-beveiligingsstandaard in 1999, toen draadloze communicatie net aansloeg. Ondanks herzieningen van de standaard en een toegenomen sleutelgrootte, ondervond WEP talrijke beveiligingszwakheden. Cybercriminelen kunnen WEP-wachtwoorden binnen enkele minuten kraken met behulp van vrij beschikbare software. Ondanks verbeteringen blijft WEP zeer kwetsbaar en moeten gebruikers systemen upgraden die afhankelijk zijn van WEP.
 
 #### WPA/WPA2
 Wi-Fi Protected Access (WPA) was het antwoord van de computerindustrie op de zwakte van de WEP-standaard. De meest voorkomende WPA-configuratie is WPA-PSK (Pre-Shared Key). De sleutels die worden gebruikt door WPA zijn 256-bits, een aanzienlijke toename ten opzichte van de 64-bits en 128-bits sleutels die worden gebruikt in het WEP-systeem.

De WPA-standaard zorgde voor verschillende beveiligingsverbeteringen. Ten eerste leverde WPA berichtintegriteitscontroles (MIC) die konden detecteren of een aanvaller gegevens had vastgelegd en gewijzigd die werden doorgegeven tussen het draadloze toegangspunt en een draadloze client. Een andere belangrijke beveiligingsverbetering was het Temporal Key Integrity Protocol (TKIP). De TKIP-standaard bood de mogelijkheid om coderingssleutels beter te verwerken, te beschermen en te wijzigen. Advanced Encryption Standard (AES) vervangt TKIP voor een nog beter beheer van sleutels en encryptie.

WPA bevatte, net als zijn vorige WEP, een aantal breed erkende kwetsbaarheden. Als gevolg daarvan vond de release van de Wi-Fi Protected Access II (WPA2) -standaard in 2006 plaats. Een van de belangrijkste beveiligingsverbeteringen van WPA naar WPA2 was het verplichte gebruik van AES-algoritmen en de introductie van de Counter Cipher-modus met Block Chaining Message Authentication Code Protocol (CCM) als vervanging voor TKIP.

#### Kwetsbaarheiden
grote kwetsbaarheden van draadloze netwerken is het gebruik van frauduleuze toegangspunten
De bedrieger kan verbindingsverzoeken ontvangen, de gegevens in het verzoek kopiëren en de gegevens doorsturen naar het geautoriseerde netwerktoegangspunt. Dit type man-in-the-middle-aanval is erg moeilijk te detecteren en kan leiden tot gestolen inloggegevens en verzonden gegevens. Om rouge-toegangspunten te voorkomen, ontwikkelde de computerindustrie wederzijdse authenticatie. Wederzijdse authenticatie, ook wel tweewegverificatie genoemd, is een proces of technologie waarbij beide entiteiten in een communicatieverbinding zich aan elkaar authenticeren. In een draadloze netwerkomgeving verifieert de client het toegangspunt en verifieert het toegangspunt de client. Met deze verbetering konden clients rouge-toegangspunten detecteren voordat ze verbinding maakten met het niet-geautoriseerde apparaat.
