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

![](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/RAID.PNG)

![](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/RAID2.PNG)

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

### Incident Response Phase

**preparation**

When an incident occurs, the organization must know how to respond. An organization needs to develop an incident response plan: a Computer Security Incident Response Team (CSIRT) to manage the response.

- maintain incident response plan
- ensure members are knowledgeable about the plan
- test the plan
- get management approval of the plan

The CSIRT can be an established group within the organization or an ad hoc one. The team follows the steps, non are skipped. National CSIRTs oversee incident handling for a country.

**Detection and Analysis**

Detection starts when someone discovers the incident. When buying a detection system is important that you have someone monitoring the logs and alert, otherwise the system is useless. Incident analysis helps to identify the source, extent, impact, and details of a data breach. 
Detection and analysis includes the following:

- Alerts and notifications
- Monitoring and follow-up

**Containment and Eradication And Recovery**

Containment efforts include the immediate actions performed such as disconnecting a system from the network to stop the information leak. Containing and eradicating a breach may require additional downtime for systems. 
Recovery: resolve the breach and restoring the system(s) involved.

**Post-Incident Follow-Up**

Look at the cause of the incident and ask the following questions:

1. What actions will prevent the incident from reoccurring?
2. What preventive measures need strengthening?
3. How can it improve system monitoring?
4. How can it minimize downtime during the containment, eradication, and recovery phases?
5. How can management minimize the impact to the business?

![](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/6.3.1.5.PNG)

### Incident Response Technologies

**Network Admission Control (NAC)**

Authorized users with compliant systems can access to the network. A compliant system meets all of the policy requirements of the organization. (for example: a laptop you take from a home wireless network may not access the network).
NAC evaluates incoming devices against the policies of the network, also quarantining the systems that do not comply.
A NAC framework can use the existing network infrastructure and third-party software, or control network access, evaluate compliance, and enforces security policy. 

what NAC checks:

- Updated virus detection
- Operating system patches and updates
- complex password enforcement

**Intrusion Detection Systems (IDSs)**

passively monitor traffic on a network. copies the traffic stream and analyzes the copied traffic rather than the actual forwarded packets. compare traffic to known malicious signatures, this happens offline meaning:

- IDS works passively - meaning it does not take any action
- IDS device is physically positioned in the network so that traffic must be mirrored in order to reach it.
- Network traffic does not pass through the IDS unless it is mirrored.

Advantage: does not negatively affect the flow of forwarded traffic.
Disadvantage: cannot stop malicious single-packet attacks from reaching the target. 

an IDS often requires assistance from another network device.

**Intrusion Prevention Systems (IPS)**

Builds upon IDS technology, however an IPS operates in inline mode (incoming and outgoing traffic must flow through it for processing). Can immediately detect and address a network problem. 
Some systems use a blend of detection technologies, including signature-based, profile-based, and protocol analysis-based intrusion detection. This deeper analysis enables the IPS to identify, stop, and block attacks that would pass through a traditional firewall device.

Advantage: can stop single-packet attacks from reaching the target system.
Disadvantage: a poorly configured IPS can negatively affect the packet flow of the forwarded traffic.

**NetFlow and IPFIX**

NetFlow is a Cisco IOS technology that provides statistics on packets (router / multilayer switch). 

Internet Engineering Task Force (IETF) used Cisco's NetFlow Version 9 as basis for IP Flow Information Export (IPFIX). IPFIX is a format for exporting this data. 

Applications that support IPFIX can display statistics from any router that supports the standard. Collecting, storing, and analyzing the aggregated information provided by IPFIX supported devices provides the following benefits:

- Secures the network against internal and external threats

- Troubleshoots network failures quickly and precisely

- Analyzes network flows for capacity planning

**Advanced Threat Intelligence**

Organizations may be able to detect indicators of attack in its logs and system reports for the following security alerts:

- Account lockouts

- All database events

- Asset creation and deletion

- Configuration modification to systems

Advanced threat intelligence is a type of event or profile data that can contribute to security monitoring and response.

![](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/6.3.2.5.PNG)

## 6.4 Disaster Recovery

### Disasters Recovery Planning

**Types of Disasters**

- Natural Disasters: differ depending on location, some events difficult to predict. 
  1. Geological Disasters (earthquakes, tsunamis,..)
  2. Meteorological Disasters (Hurricanes, snow storms, lightning,...)
  3.  Health Disasters (Widespread illnesses, pandemics,.. ) 
  4. Miscellaneous Disasters (fires, floods, solar storms, avalanches)
- Human-Caused Disasters: involve people or organizations.
  1. Labor events (strikes, walkouts and slowdowns)
  2. Social-political events (vandalism, blockades, protest, sabotage, terrorism and war)
  3. Materials event (hazardous spills and fires)
  4. Utilities disruptions (power failures, communication outages, fuel shortages and radioactive fallout)

**Disaster Recovery Plan**

Put into action when the disaster is ongoing. The DRP includes the activities the organization takes to assess, salvage, repair, and restore damaged facilities or assets.

- Who is responsible for this process?
- What does the individual need to perform the process?
- Where does the individual perform this process?
- What is the process?
- Why is the process critical?

**Implementing Disaster Recovery Controls**

1. Preventive Controls
   - Keeping data backed up
   - Keeping data backups off-site
   - Using surge protectors
   - Installing generators
2. Detective Controls
   - Using up-to-date antivirus software
   - Installing server and network monitoring software
3. Corrective Controls
   - Keeping critical documents in the disaster recovery plan

### Business Continuity Planning

**Need for Business Continuity**

impossible to predict/protect yourself from every possible scenario. but it is important for companies to have plans in place that ensure business continuity regardless of what may occur. Personnel continue to perform all business processes in an alternate manner until normal operations resume.

**Business Continuity Considerations**

Organizations need employees to properly configure and operate systems. Data can be useless until it provides information. An organization should look at the following:

- Getting the right people to the right places

- Documenting configurations

- Establishing alternate communications channels for both voice and data

- Providing power

- Identifying all dependencies for applications and processes so that they are properly understood

- Understanding how to carry out automated tasks manually

**Business Continuity Best Practices**

the National Institute of Standards and Technology (NIST) developed the following best practices:

1. Write a policy that provided guidance to develop the business continuity plan and assigns roles to carry out the tasks.

2. Identify critical systems and processes and prioritize them based on necessity.

3. Identify vulnerabilities, threats, and calculate risks.

4. Identify and implement controls and countermeasures to reduce risk.

5. Devise methods to bring back critical systems quickly.

6. Write procedures to keep the organization functioning in a chaotic state.

7. Test the plan.

8. Update the plan regularly.

## 6.5 Summary
