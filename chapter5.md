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
- Bob compares, if they match, Ismelk  knows that he can trust that no one tampered with the message.

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


## 5.4 Database Integrity Enforcement

## 5.5 Summary





-- <br/>
<sup>~ Written by Cedric De Witte - For any inquiries or suggestions, please send an e-mail to info@cedricdewitte.be - Happy Studying! ~</sup>