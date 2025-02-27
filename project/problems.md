---
layout: default
title: Problems Addressed
parent: Project Overview
nav_order: 1
---

# Problems Being Addressed

The Open Source Secure Element project addresses several critical challenges in the cryptocurrency ecosystem:

## Lack of Transparency in Hardware Wallets

**Problem**: Most hardware wallets use proprietary secure elements with closed-source designs, making it impossible to fully audit their security.

**Need**: A hardware wallet with a secure element based on an open framework, like [OpenTitan](https://opentitan.org/), with fully documented and inspectable components to ensure trust and transparency.

## Inadequate Supply Chain Documentation

Current solutions fail to provide verifiable documentation of the hardware supply chain, making it difficult to detect tampering or interference during production and distribution. This lack of visibility undermines the security of the hardware.

## Absence of Insurable Non-Custodial Wallets

While custodial wallets and providers may offer insurance, non-custodial wallets, which are essential for decentralization and user autonomy, are largely uninsurable due to a lack of enforceable compliance mechanisms and transparent designs.

## Security and Usability Gaps

Existing solutions often involve blind signing of transactions, which exposes users to phishing and fraud. Additionally, they fail to provide the secure and user-friendly experience needed to meet the expectations of mainstream crypto adopters.

## Research Questions and Needs

### Problem: Lack of Open and Transparent Hardware Wallets
**Research Question**: How can we design a secure, open-source hardware wallet that adheres to the highest security standards while remaining fully transparent and verifiable?

**Need**: A hardware wallet with a secure element based on an open framework, like OpenTitan, with fully documented and inspectable components to ensure trust and transparency.

### Problem: Unverifiable Supply Chains in Hardware Production
**Research Question**: How can blockchain technology be used to document the hardware supply chain and ensure its security and transparency?

**Need**: A blockchain-based system to track the origin and manufacturing processes of hardware components, preventing tampering and ensuring provenance.

### Problem: Limited Insurance Options for Non-Custodial Wallets
**Research Question**: What design and compliance mechanisms are required to enable insurance for non-custodial wallets without compromising user autonomy?

**Need**: Integration of features like address whitelisting, social recovery, and transaction monitoring to ensure insurability while retaining the decentralized nature of the wallet.

### Problem: Security Vulnerabilities and Usability Issues in Existing Wallets
**Research Question**: How can the wallet incorporate advanced security features, such as EIP-712-compliant transaction signing, to mitigate risks while enhancing usability?

**Need**: Secure and user-friendly features, such as displaying transaction details on-device, to eliminate blind signing and reduce phishing risks.

### Problem: Lack of Affordable and Accessible Non-Custodial Solutions
**Research Question**: Can an affordable hardware wallet be developed using open-source technology without sacrificing security or functionality?

**Need**: A cost-effective design using off-the-shelf components, making secure hardware wallets accessible to a broader audience.

These research questions and needs aim to address critical gaps in transparency, security, insurability, and usability, fostering broader adoption of decentralized finance tools. 