---
layout: page
title: Security Model
permalink: /security-model/
nav_order: 5
---

# Security Model

The Open Source Secure Element (OSSE) implements a comprehensive security model designed to protect cryptographic keys and sensitive operations against various threats.

## Threat Model

The OSSE is designed to protect against the following threats:

### Physical Attacks

- **Invasive attacks**: Microprobing, circuit modification
- **Semi-invasive attacks**: Fault injection, side-channel analysis
- **Non-invasive attacks**: Power analysis, electromagnetic analysis, timing attacks

### Software Attacks

- **Malicious host software**: Attempts to extract keys or manipulate operations
- **Firmware attacks**: Attempts to exploit vulnerabilities in the secure element firmware
- **Supply chain attacks**: Compromised components or manufacturing processes

## Defense Mechanisms

<div class="notice info">
  <strong>Note:</strong> The security mechanisms described here are implemented in both hardware and firmware.
</div>

### Physical Security

The OSSE implements multiple layers of physical security:

1. **Active Shield**: Mesh of conductive traces that detect physical tampering
2. **Environmental Sensors**: Detect abnormal operating conditions (temperature, voltage, clock)
3. **Memory Encryption**: All sensitive data in memory is encrypted
4. **Secure Storage**: Keys are stored in tamper-resistant memory

### Cryptographic Security

The cryptographic architecture includes:

1. **Key Hierarchy**:
   - Root keys stored in hardware-protected memory
   - Derived keys for specific operations
   - Session keys for temporary operations

2. **Secure Key Generation**:
   - True random number generator (TRNG)
   - Post-processing to ensure entropy quality
   - Key generation entirely within the secure boundary

3. **Secure Operations**:
   - All cryptographic operations performed within secure boundary
   - Side-channel resistant implementations of algorithms
   - Constant-time operations to prevent timing attacks

## Security Boundaries

The OSSE establishes clear security boundaries:

```
+--------------------------------------------------+
|                  Host System                     |
|                                                  |
|  +------------------------------------------+    |
|  |              OSSE Device                 |    |
|  |                                          |    |
|  |  +----------------------------------+    |    |
|  |  |        Secure Boundary           |    |    |
|  |  |                                  |    |    |
|  |  |  +-------------+  +-----------+  |    |    |
|  |  |  | Secure Core |  | Secure    |  |    |    |
|  |  |  |             |  | Memory    |  |    |    |
|  |  |  +-------------+  +-----------+  |    |    |
|  |  |                                  |    |    |
|  |  +----------------------------------+    |    |
|  |                                          |    |
|  +------------------------------------------+    |
|                                                  |
+--------------------------------------------------+
```

## Security Certification

The OSSE is designed to meet the following security certifications:

| Standard | Target Level | Status |
|----------|--------------|--------|
| FIPS 140-3 | Level 3 | Planned |
| Common Criteria | EAL 5+ | Planned |
| EMVCo Security Evaluation | Level 1 | Planned |

## Security Verification

The OSSE security is verified through multiple approaches:

### Formal Verification

Critical components of the OSSE are formally verified:

- Secure boot sequence
- Memory protection mechanisms
- Cryptographic algorithm implementations

### Independent Security Audits

The OSSE undergoes regular security audits:

- Hardware design review
- Firmware code review
- Penetration testing

### Open Source Advantage

As an open-source project, the OSSE benefits from:

- Community review of all code and designs
- Transparent security processes
- No security through obscurity

## Reporting Security Issues

If you discover a security vulnerability in the OSSE:

1. **Do not** disclose it publicly on forums or social media
2. Send details to [contact@etherisc.com](mailto:contact@etherisc.com)

Our security team will acknowledge your report within 48 hours and work with you on addressing the issue. 