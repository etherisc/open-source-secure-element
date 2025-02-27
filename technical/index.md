---
layout: default
title: Technical Approach
nav_order: 4
has_children: true
permalink: /technical/
---

# Technical Approach

The Open Source Secure Element (OSSE) project takes a comprehensive technical approach to developing a secure, transparent, and insurable hardware wallet. This section outlines the key technical components and methodologies that will be employed throughout the project.

## OpenTitan Framework

At the core of the project is the [OpenTitan](https://opentitan.org/) framework, an open-source silicon root of trust (RoT) project that provides a transparent and secure foundation for hardware development. [OpenTitan](https://opentitan.org/) offers:

- **Open-source Hardware**: Fully transparent and auditable hardware designs
- **Security Features**: Secure boot, key management, and cryptographic operations
- **Industry Support**: Backed by Google and other major technology companies
- **RISC-V Architecture**: Based on the open RISC-V instruction set architecture

By leveraging [OpenTitan](https://opentitan.org/), the project ensures that the hardware wallet's most critical security components are transparent, auditable, and built on industry-standard security practices.

## Hardware Components

The hardware wallet will be developed using:

- **ChipWhisperer CW340 FPGA Board**: For initial prototyping and development
- **RISC-V Architecture**: For the main processor, using the Ibex core from [OpenTitan](https://opentitan.org/)
- **Secure Element**: Based on [OpenTitan](https://opentitan.org/)'s silicon RoT design
- **Display**: For showing transaction details and wallet information
- **Input Mechanism**: For user authentication and transaction approval
- **Communication Interfaces**: USB and potentially Bluetooth for device connectivity

## Software Architecture

The software architecture will include:

- **Firmware**: Low-level code running on the secure element
- **Wallet Application**: User interface and transaction management
- **Cryptographic Libraries**: For key generation, signing, and encryption
- **EIP-712 Implementation**: For secure and transparent transaction signing
- **Blockchain Integration**: For interacting with Ethereum and other blockchains

## Security Features

The wallet will incorporate several security features:

- **Secure Key Generation**: Using hardware-based random number generation
- **Encrypted Key Storage**: Protecting private keys at rest
- **Transaction Verification**: Displaying transaction details on-device
- **Address Whitelisting/Blacklisting**: For enhanced security and insurability
- **Social Recovery Options**: For key recovery in case of device loss
- **Supply Chain Documentation**: Using blockchain to verify hardware components

## Development Approach

The development will follow these methodologies:

- **Open-Source Development**: All code and hardware designs will be publicly available
- **Security-First Design**: Implementing security at every layer of the stack
- **Iterative Prototyping**: Building and testing incrementally to identify issues early
- **Community Engagement**: Involving the open-source community in development and review
- **Comprehensive Testing**: Including security audits and penetration testing

The technical approach balances security, transparency, and usability, ensuring that the final product meets the needs of both individual users and the broader Ethereum ecosystem. 