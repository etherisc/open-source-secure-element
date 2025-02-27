---
layout: page
title: FAQ
permalink: /faq/
nav_order: 7
---

# Frequently Asked Questions

## General Questions

### What is the Open Source Secure Element (OSSE)?

The Open Source Secure Element (OSSE) is a fully open-source hardware security module built around a secure element based on the [OpenTitan](https://opentitan.org/) framework. It aims to provide transparent, auditable security for cryptographic operations and key storage.

### Why is an open-source secure element important?

Traditional secure elements are closed-source "black boxes" that require users to trust the manufacturer without the ability to verify the implementation. An open-source secure element allows for:
- Complete transparency of the security implementation
- Community auditing and improvement
- Customization for specific use cases
- Elimination of potential backdoors or vulnerabilities that could exist in closed-source solutions

### How does OSSE compare to commercial secure elements?

| Feature | OSSE | Commercial Secure Elements |
|---------|------|----------------------------|
| Design transparency | Full source code and hardware designs available | Proprietary, closed designs |
| Customizability | Can be modified for specific needs | Limited to vendor specifications |
| Security certifications | Working toward FIPS 140-3, Common Criteria | Often certified to various standards |
| Supply chain verification | Blockchain-based verification | Vendor-dependent |
| Cost | Open-source, lower production costs | Typically higher licensing costs |

### Is OSSE suitable for production use?

The OSSE project is currently in development. While the design and implementation are progressing well, we recommend:
- Using OSSE in test environments
- Contributing to development and testing
- Planning for production use as the project matures and achieves security certifications

## Technical Questions

### What cryptographic algorithms does OSSE support?

OSSE supports a wide range of cryptographic algorithms:
- Symmetric: AES (128/256-bit), ChaCha20-Poly1305
- Hash: SHA-256/384/512, BLAKE2
- Asymmetric: RSA, ECDSA (secp256k1, P-256), Ed25519
- Key derivation: HKDF, PBKDF2
- Random number generation: TRNG with health tests

### How are keys protected in OSSE?

Keys in OSSE are protected through multiple mechanisms:
1. Hardware isolation of the secure core
2. Encrypted storage for keys at rest
3. Memory protection to prevent unauthorized access
4. Key usage policies that can restrict operations
5. Physical tamper detection and response

### Can OSSE be used as a hardware wallet?

Yes, OSSE is designed to function as a hardware wallet with these features:
- Support for multiple cryptocurrencies
- Implementation of BIP-32/44/39 standards
- EIP-712 structured data signing
- Secure display and input options for transaction verification

### How is the supply chain secured?

OSSE implements blockchain-based supply chain verification:
1. Each device receives a unique attestation key during manufacturing
2. Manufacturing steps are recorded on a blockchain
3. End users can verify the authenticity of their device
4. The entire manufacturing process is documented and transparent

## Development Questions

### How can I contribute to the OSSE project?

We welcome contributions in several areas:
1. Hardware design improvements
2. Firmware development
3. Host software and libraries
4. Documentation and examples
5. Security auditing and testing

See our [Contributing Guide](https://github.com/etherisc/open-source-secure-element/blob/main/CONTRIBUTING.md) for more details.

### What development environment do I need?

To work with OSSE, you'll need:
- For hardware: EDA tools like KiCad
- For firmware: GCC toolchain for RISC-V
- For host software: Depends on your platform (C/C++, Python, etc.)
- Common requirements are documented in the project repository

### Are there development boards available?

Development boards are currently in the prototype phase. We plan to make them available to developers in the near future. Sign up for our [mailing list](https://osse-project.org/mailing-list) to be notified when they become available.

### How can I test my integration without hardware?

We provide a software emulator that mimics the behavior of the OSSE hardware:
- Implements the same API as the hardware
- Allows for testing without physical devices
- Supports debugging of integration issues
- Available in our [GitHub repository](https://github.com/etherisc/open-source-secure-element)

## Support and Community

### Where can I get help with OSSE?

Support is available through several channels:
- [GitHub Issues](https://github.com/etherisc/open-source-secure-element/issues) for bug reports and feature requests
- [Discussion Forum](https://github.com/etherisc/open-source-secure-element/discussions) for general questions
- [Developer Chat](https://discord.gg/osse) for real-time discussions
- [Stack Overflow](https://stackoverflow.com/questions/tagged/osse) using the "osse" tag

### Is commercial support available?

Yes, commercial support is available through Etherisc and partner organizations. Contact [contact@etherisc.com](mailto:contact@etherisc.com) for more information about commercial support options.

### How can I stay updated on the project?

Stay informed about OSSE developments through:
- [GitHub repository](https://github.com/etherisc/open-source-secure-element) (watch/star)
- [Twitter](https://twitter.com/osse_project)
- [Monthly newsletter](https://osse-project.org/newsletter)
- [RSS feed](https://osse-project.org/feed.xml) 