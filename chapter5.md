# Chapter 5: The art of Ensuring Integrity


**What is Integrity?**
- Ensures that data remains unchanged and trustworthy by anyone or anything over its entire life cycle.
- Critical component to the design, implementation and usage of any system that stores, processes, or transmits data.

_Having a well-controlled and well-defined data integrity system increases the stability, performance, and maintainability of a database system._

## 5.1.1 Hashing Algorithms

## 5.1.1.1 What is hashing?

- Hashing is a tool that ensures data integrity by taking binary data (the message) and producing a fixed-length representation called the hash value or message digest.
- Hash functions replace clear text password or encryption keys because hash functions are one-way functions.
- Every time the data is changed or altered, the hash value also changes. Because of this, cryptographic hash values are often called digital fingerprints. They can detect duplicate data files, file version changes, and similar applications.

## 5.1.1.2 Hashing Properties

Hashing is a one-way mathematical function that is relatively easy to compute, but significantly harder to reverse. (Think about grinding coffee beans; impossible to get back to the beans)

**Cryptographic hash function**

- The input can be any length.
- The output has a fixed length.
- The hash function is one way and is not reversible.
- Two different input values will almost never result in the same hash values.

## 5.1.1.3 Hashing Algorithms

- Hash functions are helpful to ensure that a user/communication error does not change the data accidentally.

**Simple Hash Algorithm (8-bit Checksum)**

- The 8-bit checksum is one of the first hashing algorithms, and it is the simplest form of a hash function.

## 5.1.1.4 Modern Hashing Algorithms

_Two most popular are:_

** Message Digest 5 (MD5) Algorithm**

- MD5 is a one-way function that makes it easy to compute a hash from the given input data but makes it very difficult to compute input data given only a hash value.
**Secure Hash Algorithm (SHA)**

- SHA-2 is a stronger algorithm, and it is replacing MD5.

## 5.1.1.5 Hashing Files and Digital Media

Hashing media helps to answer the following questions:
- Does the examiner have the files he expects?
- Is the data corrupted or changed?
- Can the examiner prove that the files are not corrupt?
-> by comparing the hash of the original media with the copy

## 5.1.1.6 Hashing passwords

Servers store passwords in a hashed way (I hope so). When a user enters his credentials, the system compares this password to the stored hash. Match? Access granted!

## 5.1.1.7 Applications

_Use cryptographic hash functions in the following situations:_

:white_check_mark:	To provide proof of authenticity when it is used with a symmetric secret authentication key, such as IP Security (IPsec) or routing protocol authentication

:white_check_mark:	To provide authentication by generating one-time and one-way responses to challenges in authentication protocols

:white_check_mark:	To provide message integrity check proof, such as those used in digitally signed contracts, and public key infrastructure (PKI) certificates, like those accepted when accessing a secure site using a browser

**ATTENTION!** While hashing can detect accidental changes, it cannot guard against deliberate changes. There is no unique identifying information from the sender in the hashing procedure. This means that anyone can compute a hash for any data, as long as they have the correct hash function. 
**vulnerable to man-in-the-middle attacks and does not provide security to transmitted data.**

## 5.1.1.8 Cracking hashes

To crack a hash, an attacker must guess the password.
How?
- Using dictionary
- Brute-force attacks

## 5.1.1.9 Activity
![Solution 5.1.1.9"](https://github.com/LennertMertens/cisco-cybersecurity/blob/master/img/C5-001.png "Solution 5.1.1.9")


<sup>Written by Cedric De Witte - For any inquiries or suggestions, please send an e-mail to info@cedricdewitte.be - Happy Studying!</sup>