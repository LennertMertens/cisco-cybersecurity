# Chapter 2: The Cybersecurity Cube
## 2.1 The three Dimensions of the Cybersecurity Cube
### 2.1.1 The Principles of Security (Introduction)
#### Firt dimension
- Goals to protect cyberspace
  
- Confidentiality
- Integrity
- Availability
=> Provide focus and enable the cybersecurity specialist to prioritize actions when protecting networked systems

**CIA**
<dl>
  <dt>Confidentiality</dt>
  <dd>Prevents the disclosure of information to unauthorized people, recources or processes</dd>
  <dt>Integrity</dt>
  <dd>Accuracy, consistency, trustworthiness of data</dd>
  <dt>Availability</dt>
  <dd>Ensures that information is accesible by authorized users when needed</dd>
</dl>

### 2.1.2 The States of Data
- Cybersecurity focus on protecting data
#### Second dimension
- Goal to protect all kinds of data in cyberspace
**Three possible states**
- Data in transit
- Data at rest/in storage
- Data in process

### 2.1.3 Cybersecurity Safeguards
#### Third dimension
- Defines skills and disciplines available for protecting data in cyberspace

- Technologies
- Policies and Practice
- People
  
## 2.2 CIA Triad
### 2.2.1 Confidentiality
= Privacy
- Prevents the disclosure of information to unauthorized people and processes

**Methods to ensure confidentiality:**
  - Data encryption
  - Authentication
  - Acces control

#### Protecting Data Privacy
Sensitive vs. non-sensitive data

**Types of sensitive information**
- `Personal information`: Social security number, Medical records; Credit card numbers, Financial records
- `Business information`: Trade secrets, Acquisition plans, Financial data, Customer information
- `Classified`: Top secret, Secret, Confidential, Restricted
  
#### Controlling Acces
`Authentication`: 
  - Something you know (password)
  - Something you have (token or card)
  - Something you have (fingerprint)

`Authorization`: user permissions

`Accounting`: policies

```
Example: Credit Card
Authentication: -> Authorization            -> Accounting:
Who are you?       How much can you spend?     What did you spend it on?
```

### 2.2.2 Integrity
= Quality
- Acccuracy of data
- Consistency of data
- Trustworthiness of data

Methods to ensure data integrity: hashing, validation checks, data consistency checks, acces control

**The need for data integrity**
`Critical level`: Healthcare & Emergency services
  - All data is validated and tested
  - Data verified to provide trustworthiness
`High level`: Ecommerce & Analytics
  - All data is validated
  - Data is checked to provide trustwrthiness
`Mid level`: Online sales & Search engines
  - Litlle verification
  - Not completely trustworthy
`Low level`: Blogs & Personal posting sites
  - Data may not be verified
  - Low level of trust in content
  
**Integrity Checks**
- Measure consistency of a data collection
  - Hash function
  - Backups
  - Version control

### 2.2.3 Availability
= Need to maintain the availability of data at all times

**Methods to ensure availability:**
- Redundancy
- Backups
- Resiliency
- Equipment
- Updates
- Recovery

**Dangers for interrupting availability**
- Denial of service
- Malicious attacks
- equipment failures
- Natural disaster

#### Five Nines
= Refers to 99,999% up-time; less than 5,26 minutes downtime/year

<dl>
  <dt>High availability</dt>
  <dd>Systems are designed to avoid downtime, ensures a level of performance for a higher than normal period</dd>
</dl>

**High availability design principles:**
| Principle | Solutions |
| :-------- | :-------- |
| Eliminate single points of failure | hot standby devices, redundancy                        | 
| Provide for a reliable crossover   | redundant power supply, backup, communications systems |
| Detect failures as they occur      | Monitoring systems                                     |

#### Ensuring availability
Organizations can ensure availability by implementing:
- Equipment maintenance
- OS and system updates
- Backup testing
- Disaster planning
- New Technology implementations
- Unusual activity monitoring
- Availability testing

## 2.3 States of Data
### 2.3.1 Data at Rest
#### Types of Data
`Stored data` = data at rest

`Data at rest` = a type of storage device retains the data when no user or process is using it.

`Direct-attached storage (DAS)` = storage connected to a computer. A hard drive or USB flash drive is an example of direct-attached storage.

`Redundant Array of Independant Disks (RAID)` = uses multiple hard drives in an array, which is a method of combining multiple disks so that the operating system sees them as a single disk.

`Network Attached Storage (NAS)` =  a storage device connected to a network that allows storage and retrieval of data from a centralized location by authorized network users.

`Storage Area Network (SAN)` = network based storage system architecture. Ability to connect multiple servers to a centralized disk storage repository.

`Cloud storage` = remote storage option that uses space on a data center provider and is accessible from any computer with Internet access

### 2.3.2 Data in Transit
#### Methods of transmitting Data
`Data transmission`= sending information from one device to another

- `Sneaker net`: uses removable media to physically move data from one computer to another
- `Wired networks`: uses cables to transmit data
- `Wireless networks`: uses radio waves to transmit data

#### Challenges of protecting Data In-Transit
- `Protecting data confidentiality`: cyber criminals can capture, save and steal data in-transit. Cyber professionals must take steps to counter these actions.
- `Protecting data Integrity`: cyber criminals can intercept and alter data in-transit.
- `Protecting data Availability`: cyber criminals can use rogue or unauthorized devices to interrupt availability.

#### Countermeasures
- VPN
- SSL
- IPsec
- Encryption, decryption, hashing
- Redundancy, hot standby

### 2.3.3 Data in Process
#### Forms of Data processing and Computation
`Data in process`= data during initial input, modification, computation and output

#### Challenges of protecting Data In-Process
Cybersecurity professionals design policies and procedures that require testing, maintaining annd updating systems to keep them operating with the least amount of errors.

#### Countermeasures
- Acces control
- Data validation
- Data duplication

## 2.4 Cybersecurity Countermeasures
### 2.4.1 Technologies
#### Software-based Technology Safeguards
Software safeguards include programs and services that protect operating systems, databases, and other services operating on workstations, portable devices, and servers.

- Software firewalls control remote acces to a system
- Network and port scanners discoverand monitor open ports on a host
- Protocol analyzers
- Vulnerability scanners
- Host-based intrusion detection systems (IDS)

#### Hardware-based Technology Safeguards
- Firewall appliances block unwanted traffic
- Dedicated Intrusion Detection Systems (IDS) detect signs of attacks or unusual traffic on a network and send an alert
- Intrusion Prevention Systems (IPS)
- Content filtering services control access

#### Network-based Technology Safeguards
- `Virtual Private Network (VPN)`: secure virtual network that uses the public network
- `Network access control (NAC) `: requires a set of checks before allowing a device to connect to a network
- `Wireless access point security`: includes the implementation of authentication and encryption.

#### Cloud-based Technology Safeguards
- `Software as a Service (SaaS)`: allows users to gain access to application software and databases. Cloud providers manage the infrastructure
- `Infrastructure as a Service (IaaS)`: provides virtualized computing resources over the Internet
- `Platform as a Service (PaaS)`: provides access to the development tools and services used to deliver the applications

### 2.4.3 Policies and Procedures
`Security policy` = set of security objectives for a company that includes rules of behavior for users and administrators and specifies system requirements

`Standards` = provide the technologies that specific users or programs need in addition to any program requirements or criteria that an organization must follow

`Guidelines` = list of suggestions on how to do things more efficiently and securely

`Procedures`= Include implementations details that usually contain step-by-step instructions and graphics


## 2.5 IT Security Management Framework
### 2.5.1 The ISO Cybersecurity Model

ISO/EIC 27000 is an information security standard

#### Cybersecurity Domains

- `Risk Assesment` = determines the risk related to a specific situation
- `Security Policy` = speciffies how data can be accesed and by whom
- `Organization of information Security` = governance model set out by an organization for information assets
- `Asset Management` = inventory of and classification schema for information assets
- `Human recources Security` = address securoty procedures relating to employees joining, moving and leaving organizations
- `Physical and Environmental Security` = describes the protection of the computer facilities within an organization
- `Communications and Operations Management` = management of technical security controls
- `Information System Acquisition Development and Maintenance` = describes integration of security into applications
- `Acces Control` = restriction of acces rights to networks, systems, applications, functions and data
- `Information Security Incident Management` = describes how to anticipate and respond to information security breaches
- `Business Continuity Management` = describes the protection, maintenance and recovery of business critical processes and systems
- `Compliance` =  describes the proces of ensuring conformance with information security policies, standards and regulations 
