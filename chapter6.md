# Chapter 6: The Five Nines Concept
## 6.1 High Availability

The systems and services are available 99.999% of the time. This is les then 5.26 minutes a year.
Om dit te bekomen:

- eliminate the `single points of failure`
- design for reliability
- detect failures as they occur

Rnvironments that need Five Nines: Finance industry, health care facilities, public safety, retail industry and the media industry. 

**Threats to Availability:**

- `Natural Disasters`
- `Human Error`:  data entry error / drops laptop computer
- `Hardware Failure`
- `Sabotage`: attackers installs backdoor or worm that erases files
- `software attacks`
- `Software errors`: bugs
- `theft`: equipment stolen
- `Utility Interruption`: Electrical power failure / ISP fail



**Three principles:**

- `Single point of failure`: point in critical operation that causes the entire operation to fail should it fail 
- `System Resiliency`: Ability to maintain availability during disruptive events.
- `fault Tolerance`: enables a system to continue operating if one or more components fail

## 6.2 Measures to Improve Availability

### Asset Management

**Asset Identification**

the organization needs to know all the components that can be subject to security risks, including:

- every hardware system
- every operating system
- every hardware network device
- every network device operating system
- every software application
- all firmware
- all language runtime environment
- all individual libraries

It is best to choose an automatic solution to keep track of these assets in your organization.

**Asset Classification**

classify all resources of an organization in order to provide the proper handling/ treatment.

1. Asset Identification categories
   - Software Assets
   - Physical Assets
   - Services
2. Asset Accountability
   - Identify the owner for all information assets
   - Identify the owner for al application software
3. Classification Schema Criteria
   - Confidentiality
   - Value
   - Access Rights
   - Destruction
4. Classification Schema implementation
   - Adopt a uniform way of identifying information to ensure uniform protection

**Asset Standardization**

managing the lifecycle and inventory of technology assets. for example, The assets need to meet the guidelines of the organization if they don't it is eliminated. (effectively increasing security)

**Threat Identification**

`US-CERT`: United States Computer Emergency Readiness Team
`CVE`: Common vulnerabilities and exposure

make a CVE Identifier for publicly known cybersecurity vulnerabilities

- CVE Identifier number
- brief description of the security vulnerability
- important references

**Risk Analysis**

the process of analyzing the dangers posed by natural and human-caused events to the assets of an organization. this has 4 goals.

- Identify assets and their value
- Identify vulnerabilities and threats
- Quantify the probability and impact of the identified threats
- Balance the impact of the threat against the cost of the countermeasure

A quantitative analysis assigns numbers to the risk analysis process, Single Loss Expectancy (\$), Annualized Rate of Occurrence (%) and Annualized Loss Expectancy (\$)

Qualitative Risk Analysis uses opinions and scenarios. a table of Severity (Rows) x Occurrence (columns), a team then ranks the results.

  **Mitigation**

Mitigation involves reducing the severity of the loss or the likelihood of the loss from occurring.

4 common ways:

- Accept the risk and periodically re-assess
- Reduce the risk by implementing controls
- Avoid the risk by totally changing the approach
- Transfer the risk to a third party

### Defense in depth

- will not provide an impenetrable cyber shield, but it will help an organization minimize risk by keeping it one-step ahead of cyber criminals

**Layering**

If cyber criminals penetrate one layer, they still have to contend with several more layers with each layer being more complicated than the previous. Layering is creating a barrier of multiple defenses that coordinate together to prevent attacks. 

**Limiting**

restrict access to users, so they can only access the resources they need. This can be done using file permissions. But having procedures in stand that prohibits employees from removing sensitive documents from the premises, is also very useful.

**Diversity**

Layers must be different in order to make it difficult to breach the security measurements taken. Use different encryption algorithms/ authentication systems (best to use different manufacturers --> multifactor authentication). 

**Obscurity**

obscure information in order to protect valuable information, for example: what operating system is running on the machine. Error messages should not contain valuable information for the criminals. 

**Simplicity**

if you use to complex systems in order to protect your organization, it may backfire. It is necessary that the employees who manage the security understand how to properly configure it. To maintain availability, a security solution should be simple from the inside, but complex on the outside.

### Redundancy

**Single Points of failure**

point in critical operation that causes the entire operation to fail should it fail 

**N+ 1 Redundancy**

N components need at least 1 backup component, in case of failure. example: power generator that comes online when something happens to the main power source. 

**RAID**

Redundant array of independent disks, combines multiple physical hard drives into a single logical unit to provide data redundancy and improve performance.

A RAID solution can be either hardware-based or software-based. A hardware-based solution requires a specialized hardware controller on the system that contains the RAID drives. 

terms:

- Parity: detects data errors
- Striping: writes data across multiple drives
- Mirroring: Stores duplicate data on a second drive

Raid types:

![](https://github.com/LennertMertens/cisco-cybersecurity/tree/master/img/RAID.PNG)

![](https://github.com/LennertMertens/cisco-cybersecurity/tree/master/img/RAID2.PNG)

**Spanning Tree**

The spanning tree protocol addresses issues around loops and duplicate frames in a network. Makes sure there is only logical path between all destinations on the network. The redundant links can come up if another active one fails.

**Router Redundancy**

An additional router (Standby Router) connected to the internet that becomes active  in case that the active one (Forwarding router) fails.

**Router Redundancy Options**

- Hot Standby Router Protocol (HSRP): first-hop routing redundancy. high network availability. 
- Virtual Router Redundancy Protocol (VRRP): elected router is the virtual router master, others are used as back-up. always in conjunction with one or more other routers attached to the LAN.
- Gateway Load Balancing Protocol (GLBP): protect data traffic from a failed router on a circuit. Like HSRP and VRRP but also allowing load balancing.

**Location Redundancy**

3 types:

- Synchronous
  1. Synchronizes both locations in real time
  2. Requires high bandwidth
  3. Locations must be close together to reduce latency
- Asynchronous Replication
  1. Not synchronized in real time but close to it
  2. Requires less bandwidth
  3. Sites can be further apart because latency is less of an issue
- Point-in-time-Replication
  1. Updates the backup data location periodically
  2. Most bandwidth conservative because it does not require a constant connection

### System Resilience

**Resilient Design**

make the system tolerant to failure. (redundant links running STP) Resilient design is more than just adding redundancy. It is critical to understand the business needs of the organization, and then incorporate redundancy to create a resilient network.

**Application Resilience**

(1. High complexity and cost -> 3. Low complexity and cost)

1. Fault Tolerant Hardware: A system designed by building multiples of all critical components into the same computer
2. Cluster Architecture: group of servers acting like 1 system
3. Backup and restore: Copying files for the purpose of being able to restore them if data loss occurs.

**IOS Resilience**

The Interwork Operating System (IOS) for Cisco routers and switches include a resilient configuration feature.

- faster recovery
- maintains secure working copy of the router IOS image file + copy of running-config (not removeable)

commands:

- secure boot-image
- secure boot-config
- show secure bootset

## 6.3 Incident Response

## 6.4 Disaster Recovery

## 6.5 Summary
