# Chapter 5: The art of Ensuring Integrity
## 5.1 Types of Data Integrity Controls
### 5.1.1 Hashing Algorithms

**What is Integrity?**
- Ensures that data remains unchanged and trustworthy by anyone or anything over its entire life cycle.
- Critical component to the design, implementation and usage of any system that stores, processes, or transmits data.

_Having a well-controlled and well-defined data integrity system increases the stability, performance, and maintainability of a database system._

### 5.1.1.1 What is hashing?

- Hashing is a tool that ensures data integrity by taking binary data (the message) and producing a fixed-length representation called the hash value or message digest.
- Hash functions replace clear text password or encryption keys because hash functions are one-way functions.
- Every time the data is changed or altered, the hash value also changes. Because of this, cryptographic hash values are often called digital fingerprints. They can detect duplicate data files, file version changes, and similar applications.

### 5.1.1.2 Hashing Properties

Hashing is a one-way mathematical function that is relatively easy to compute, but significantly harder to reverse. (Think about grinding coffee beans; impossible to get back to the beans)

**Cryptographic hash function**

- The input can be any length.
- The output has a fixed length.
- The hash function is one way and is not reversible.
- Two different input values will almost never result in the same hash values.

### 5.1.1.3 Hashing Algorithms

- Hash functions are helpful to ensure that a user/communication error does not change the data accidentally.

**Simple Hash Algorithm (8-bit Checksum)**

- The 8-bit checksum is one of the first hashing algorithms, and it is the simplest form of a hash function.

### 5.1.1.4 Modern Hashing Algorithms

_Two most popular are:_

**Message Digest 5 (MD5) Algorithm**

- MD5 is a one-way function that makes it easy to compute a hash from the given input data but makes it very difficult to compute input data given only a hash value.

**Secure Hash Algorithm (SHA)**

- SHA-2 is a stronger algorithm, and it is replacing MD5.

### 5.1.1.5 Hashing Files and Digital Media

Hashing media helps to answer the following questions:
- Does the examiner have the files he expects?
- Is the data corrupted or changed?
- Can the examiner prove that the files are not corrupt?
-> by comparing the hash of the original media with the copy

### 5.1.1.6 Hashing passwords

Servers store passwords in a hashed way (I hope so). When a user enters his credentials, the system compares this password to the stored hash. Match? Access granted!

### 5.1.1.7 Applications

_Use cryptographic hash functions in the following situations:_

:white_check_mark:	To provide proof of authenticity when it is used with a symmetric secret authentication key, such as IP Security (IPsec) or routing protocol authentication

:white_check_mark:	To provide authentication by generating one-time and one-way responses to challenges in authentication protocols

:white_check_mark:	To provide message integrity check proof, such as those used in digitally signed contracts, and public key infrastructure (PKI) certificates, like those accepted when accessing a secure site using a browser

**ATTENTION!** While hashing can detect accidental changes, it cannot guard against deliberate changes. There is no unique identifying information from the sender in the hashing procedure. This means that anyone can compute a hash for any data, as long as they have the correct hash function. 
**vulnerable to man-in-the-middle attacks and does not provide security to transmitted data.**

### 5.1.1.8 Cracking hashes

To crack a hash, an attacker must guess the password.
How?
- Using dictionary
- Brute-force attacks

### 5.1.1.9 Activity
![Solution 5.1.1.9"](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/C5-001.png "Solution 5.1.1.9")


## 5.2 Digital Signatures
### 5.2.1 Signatures and the law
### 5.2.1.1 What is a Digital Signature

Digital signatures prove authorship of the contents of a document. Unprotected documents can be easily changed.
It helps to establish **authenticity, integrity, and non-repudiation**. It cannot be repudiated, it's not reusable, it's unalterable and authentic.

### 5.2.1.2 Non-Repudiation

Non-repudiation is a way to ensure that the sender of a message or document cannot deny having sent the message or document and that the recipient cannot deny having received the message or document.

### 5.2.2 How Digital Signature Technology Works
### 5.2.2.1 Processes of Creating a Digital Signature

Asymmetric cryptography is the basis for digital signatures. A public key algorithm like RSA generates two keys: one **private** and the other public.

Procedure:

_Alice wants to send **Ismelk:heart:** an email with really important information_
- Alice creates message with a digest of the message
- She encrypts it with her private key, and bundles it with the public key.
- Alice sends it to Ismelk
- Ismelk receives it. To ensure authenticity, he creates a message digest of the message.
- He takes the encrypted message digest received from Alice, and decrypts it using her public key.
- Ismelk compares, if they match, Ismelk  knows that he can trust that no one tampered with the message.

### 5.2.2.2 Using digital signatures

- Code signing - Used to verify the integrity of executable files downloaded from a vendor website. Code signing also uses signed digital certificates to authenticate and verify the identity of the site (Figure 1).

- Digital certificates - Used to verify the identity of an organization or individual to authenticate a vendor website and establish an encrypted connection to exchange confidential data (Figure 2).

### 5.2.2.3 Comparing Digital Signature Algorithms

The three common digital signature algorithms are:
- Digital Signature Algorithm (DSA)
- Rivest-Shamir-Adleman (RSA)
- Elliptic Curve Digital Signature Algorithm (ECDSA). 
_All three generate and verify digital signatures._

### 5.2.2.4 Lab - Using Digital Signatures
DIY

## 5.3 Certificates
### 5.3.1 The Basics of Digital Certificates
### 5.3.1.1 What is a Digital Certificate?

A digital certificate is equivalent to an **electronic passport**. They enable users, hosts, and organizations to exchange information securely over the Internet. Specifically, a digital certificate **authenticates and verifies** that users sending a message are who they claim to be.

### 5.3.1.2 Using Digital Certificates

Ismelk is confirming an order with Alice. Alice's web server uses a digital certificate to **ensure the transaction**.

- Step 1: Ismelk browses to Alice’s website. A browser designates a secure connection by displaying a lock icon in the security status bar.

- Step 2: Alice’s web server sends a digital certificate to Ismelk’s browser.

- Step 3: Ismelk’s browser checks the certificate stored in the browser settings. Only trusted certificates permit the transaction to go forward.

- Step 4: Ismelk still needs to authenticate and provide a password. This creates a secure session in the background between Ismelk’s computer and Alice’s web server.

- Step 5: Ismelk’s web browser creates a unique, one-time session key.

- Step 6: Ismelk’s browser uses the web server’s public key on its certificate to encrypt the session. The result is that only Alice’s web server can read the transactions sent from Ismelk’s browser.

### 5.3.1.3 What is a Certificate Authority?

The CA issues digital certificates that authenticate the identity of organizations and users.

### 5.3.2 Constructing a Digital Certificate
### 5.3.2.1 What is Inside a Digital Certificate?

_X.509 is a standard for a public key infrastructure (PKI) to manage digital certificates_
Following pieces are inside a digital certificate:
- Version Number
- Serial Number
- Certificate Algorithm Identifier
- Issuer Name
- Validity Period
- Subject Name
- Subject Public Key Information
- Issuer Unique Identifier
- Subject Unique Identifier
- Extension
- CA's Digital Signature

### 5.3.2.2 The Validation Process

Browsers & application perform a validation check before they trust a certificate.
- **Certificate Discovery** validates the certification path by checking each certificate starting at the beginning with the root CA’s certificate
- **Path Validation** selects a certificate of the issuing CA for each certificate in the chain
- **Revocation** determines whether the certificate was revoked and why

### 5.3.2.3 The Certificate Path

An individual gets a certificate for a public key from a commercial CA. The certificate belongs to a chain of certificates called the chain of trust. The number of certificates in the chain depends on the hierarchical structure of the CA.

There is an offline Root CA and an online subordinate CA. The reason for the two-tier structure is that X.509 signing allows for easier recovery in the event of a compromise. If there is an offline CA, it can sign the new online CA certificate. If there is not an offline CA, a user has to install a new root CA certificate on every client machine, phone, or tablet.

!["Illustration Path"](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/C5-002.png "Illustration Path")

### 5.3.2.4 Activity - Order the steps in the Digital Certificate Process

!["Activity 3"](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/C5-003.png "Activity 3")


## 5.4 Database Integrity Enforcement
### 5.4.1 Database Integrity
### 5.4.1.1 Data Integrity

Data integrity refers to the accuracy, consistency, and reliability of data stored in a database.

_The four data integrity rules or constraints are as follows:_

- **Entity Integrity:** All rows must have a unique identifier called a Primary Key (Figure 1).

- **Domain Integrity:** All data stored in a column must follow the same format and definition (Figure 2).

- **Referential Integrity:** Table relationships must remain consistent. Therefore, a user cannot delete a record which is related to another one (Figure 3).

- **User-defined Integrity:** A set of rules defined by a user which does not belong to one of the other categories. For example, a customer places a new order. The user first checks to see if this is a new customer. If it is, the user adds the new customer to the customers table.

### 5.4.1.2 Data Entry Controls

Data entry involves inputting data to a system. A set of controls ensures that users enter the correct data.

- Have dropdowns in your application (like Country, ...)
- Data Field Validation; set up rules
    - Mandatory input
    - Input Masks
    - Positive amounts
    - Data Ranges
    - Mandatory second approval (for big transactions f.e.)
    - Maximum Record Modification Trigger
    - Unusual Activity Trigger

### 5.4.2 Database Validation
### 5.4.2.1 Validation Rules

A validation rule checks that data falls within the parameters defined by the database designer. A validation rule helps to ensure the completeness, accuracy and consistency of data. The criteria used in a validation rule include the following:
- Size
- Format
- Consistency
- Range
- Check Digit

### 5.4.2.2 Data Type Validation

Data type validation is the simplest data validation and verifies that a user entering data is consistent with the type of characters expected. 
_For example, a phone number would not contain alpha characters._

### 5.4.2.3 Input Validation

One of the most vulnerable aspects of database integrity management is controlling the data input process. Many well-known attacks run against a database and insert malformed data. (SQL Injection)

### 5.4.2.4 Anomaly Verification

**Anomaly detection** refers to identifying patterns in data that do not conform to expected behavior.
Anomaly verification requires verification data requests or modifications when a system detects unusual or surprising patterns.

_Example: credit card with two transactions in vastly different request locations in a short time._

### 5.4.2.5 Activity - Identify the Database Integrity Controls

**_GAAP, ZO EASY_**

!["Activity 4"](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/C5-004.png "Activity 4")


### 5.4.3 Database Integrity Requirements
### 5.4.3.1 Entity Integrity

 In order to maintain the integrity of the database filing system, users must follow certain rules. Entity integrity is an integrity rule, which states that every table must have a primary key and that the column or columns chosen to be the primary key must be unique and not NULL.

 **It enables proper organization of data**

### 5.4.3.2 Referential Integrity

Relationships. The basis of referential integrity is foreign keys. A foreign key in one table references a primary key in a second table. 

### 5.4.3.3 Domain Integrity

Domain integrity ensures that all the data items in a column fall within a defined set of valid values.
It can be as simple as choosing the correct data type, length and or format for a column.

**Example:** 
E-mailaddress:
- Must have no more than 128 chars
- Format xxx@xxx.xxx
- Entered or modified by customer only
- validated by activation mail

### 5.4.3.4 Lab - Remote Access

DIY; Playing around with Telnet and SSH. FUN!

## 5.5 Summary

Having a well-controlled and well-defined data integrity system increases the stability, performance, and maintainability of a database system.
How can I do this then, Cedric?
Well, read my summary of this chapter again. Any concerns, doubts, hard feelings, please give a shout.


-- <br/>
<sup>~ Written by Cedric De Witte - For any inquiries or suggestions, please send an e-mail to info@cedricdewitte.be - Happy Studying! ~</sup>