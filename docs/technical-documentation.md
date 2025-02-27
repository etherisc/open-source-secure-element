---
layout: page
title: Technical Documentation
permalink: /technical-documentation/
nav_order: 3
has_children: true
---

# Technical Documentation

This section provides detailed technical information about the Open Source Secure Element (OSSE) project.

## Architecture Overview

The OSSE is built on the [OpenTitan](https://opentitan.org/) framework, which provides a transparent, high-quality reference design for silicon root of trust chips. The architecture consists of:

```
+----------------------------------+
|             OSSE                 |
+----------------------------------+
|                                  |
|  +-------------+  +------------+ |
|  | Secure Core |  | Crypto     | |
|  | (RISC-V)    |  | Accelerator| |
|  +-------------+  +------------+ |
|                                  |
|  +-------------+  +------------+ |
|  | Secure      |  | I/O        | |
|  | Storage     |  | Interfaces | |
|  +-------------+  +------------+ |
|                                  |
+----------------------------------+
```

### Secure Core

The secure core is based on the RISC-V architecture, specifically the Ibex core from lowRISC. Key features include:

- 32-bit RISC-V processor (RV32IMC)
- Secure boot process
- Memory protection unit
- Privilege separation

### Cryptographic Accelerator

The cryptographic accelerator provides hardware acceleration for:

- AES (128/256-bit)
- SHA-256/384/512
- HMAC
- RSA
- ECC (secp256k1, ed25519)

### Secure Storage

The secure storage subsystem provides:

- Tamper-resistant storage for cryptographic keys
- Secure non-volatile memory
- Anti-rollback protection
- Physical attack countermeasures

### I/O Interfaces

The OSSE supports multiple I/O interfaces:

- USB
- I2C
- SPI
- UART (for debugging)

## Hardware Implementation

The OSSE hardware implementation is designed to be:

- Manufacturable using standard processes
- Resistant to side-channel attacks
- Physically secure against tampering
- Power-efficient for mobile and embedded applications

## Firmware Architecture

The firmware architecture follows a layered approach:

1. **Hardware Abstraction Layer (HAL)** - Provides low-level access to hardware
2. **Core Services** - Implements cryptographic operations and secure storage
3. **Application Layer** - Implements specific use cases (e.g., wallet functionality)
4. **Communication Layer** - Handles external communication protocols

## Security Features

<div class="notice warning">
  <strong>Warning:</strong> Security features are still under development and subject to change.
</div>

The OSSE implements several security features:

- Secure boot with hardware root of trust
- Runtime integrity verification
- Side-channel attack countermeasures
- Physical tamper detection
- Secure firmware update mechanism
- True random number generator (TRNG)

## Standards Compliance

The OSSE is designed to comply with:

- FIPS 140-3 (target: Level 3)
- Common Criteria (target: EAL 5+)
- EMVCo Security Guidelines
- Ethereum EIP-712 and related standards 