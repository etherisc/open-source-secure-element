---
layout: default
title: Comparison with Similar Projects
parent: Project Overview
nav_order: 2
---

# Comparison with Similar Projects

This project sets itself apart by combining open-source hardware and software with blockchain-based supply chain transparency and tailored insurance mechanisms. Below is a detailed comparison with similar solutions, focusing on unique contributions and advances beyond the current state of the art:

## 1. Fully Open-Source Design

Unlike proprietary hardware wallets, which are opaque and rely on trust in the manufacturer, this project is built on an entirely open-source foundation, leveraging the OpenTitan framework. This transparency enables independent audits, fosters community trust, and aligns with Ethereum's open-source ethos.

## 2. Blockchain-Based Supply Chain Documentation

This project pioneers the use of blockchain to document the supply chain of hardware components. By ensuring that all critical components can be traced to their origin, the project mitigates tampering risks and builds user confidence. This approach is not seen in existing solutions.

## 3. Insurability of Non-Custodial Wallets

Currently, non-custodial wallets are largely uninsurable due to the absence of compliance-enforcing mechanisms. This project integrates features like address whitelisting, blacklisting, and social recovery to enable tailored insurance coverage. These features bridge the gap between user autonomy and financial protection, a first in the crypto space.

## 4. Collaboration with the Firefly Open Source Wallet

The Firefly wallet is another open-source initiative focused on secure cryptocurrency storage. While Firefly shares the open-source philosophy, it is primarily software-focused and does not address the hardware security layer or supply chain transparency.

This project complements and extends Firefly by providing a secure hardware component. Collaboration with the Firefly project is likely and highly synergistic. The hardware wallet developed in this project could serve as a secure signing device for Firefly, while Firefly's software innovations could enhance the wallet's usability and integration with the Ethereum ecosystem.

This partnership ensures that no duplicate development efforts are made and maximizes the impact of both projects.

## 5. Unique Features and Contributions

- **EIP-712 Support**: Unlike many existing wallets, this project prioritizes security by eliminating blind signing. Transaction details will be displayed clearly on the device, reducing phishing and fraud risks.
- **OpenTitan Framework**: By leveraging the OpenTitan silicon root of trust (RoT), this project achieves a higher standard of hardware security compared to proprietary solutions.
- **Affordable and Accessible Design**: The use of off-the-shelf components ensures that the wallet remains affordable without compromising on security or functionality.

## Other Solutions Being Worked On

### Ledger and Trezor
Both are popular proprietary hardware wallets. While secure, they lack the open-source transparency, supply chain documentation, and insurability features this project offers.

### Firefly Wallet
Focused on open-source software for cryptocurrency management but lacks a dedicated hardware layer and supply chain documentation.

## Advances Beyond the State of the Art

This project combines the best elements of existing solutions—open-source principles, cutting-edge hardware security, blockchain transparency, and insurance integration—into a single comprehensive package. By addressing the limitations of both proprietary and open-source alternatives, it establishes a new standard for secure, transparent, and insurable non-custodial crypto wallets.

## Transparency and Auditability

**Existing Solutions**: Most hardware wallets use proprietary secure elements with closed-source designs, making it impossible to fully audit their security.

**OSSE Approach**: The OSSE is built on a fully open-source foundation, leveraging the [OpenTitan](https://opentitan.org/) framework. This transparency enables independent audits, fosters community trust, and aligns with Ethereum's open-source ethos.

## Hardware Security

**Existing Solutions**: Proprietary secure elements provide strong security but lack transparency, creating a "trust the manufacturer" model.

**OSSE Approach**: 
- **[OpenTitan](https://opentitan.org/) Framework**: By leveraging the [OpenTitan](https://opentitan.org/) silicon root of trust (RoT), this project achieves a higher standard of hardware security compared to proprietary solutions. 