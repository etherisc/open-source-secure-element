---
layout: page
title: API Reference
permalink: /api-reference/
nav_order: 6
has_children: true
---

# API Reference

This section provides detailed documentation for the OSSE API, which allows developers to integrate the Open Source Secure Element into their applications.

## API Overview

The OSSE API is organized into several functional areas:

- **Device Management**: Initialize, configure, and manage the OSSE device
- **Key Management**: Generate, import, export, and manage cryptographic keys
- **Cryptographic Operations**: Perform encryption, decryption, signing, and verification
- **Secure Storage**: Store and retrieve sensitive data
- **Attestation**: Verify the authenticity and integrity of the OSSE device

## C API

The core C API provides low-level access to all OSSE functionality.

### Device Management

```c
// Initialize the OSSE device
osse_result_t osse_init(osse_context_t* ctx);

// Configure the OSSE device
osse_result_t osse_configure(osse_context_t ctx, const osse_config_t* config);

// Get device information
osse_result_t osse_get_device_info(osse_context_t ctx, osse_device_info_t* info);

// Close the connection to the OSSE device
osse_result_t osse_deinit(osse_context_t ctx);
```

### Key Management

```c
// Generate a new key pair
osse_result_t osse_generate_keypair(
    osse_context_t ctx,
    const char* key_id,
    osse_key_type_t key_type,
    osse_key_attributes_t* attributes,
    uint8_t* public_key,
    size_t* public_key_size
);

// Import an existing key
osse_result_t osse_import_key(
    osse_context_t ctx,
    const char* key_id,
    osse_key_type_t key_type,
    const uint8_t* key_data,
    size_t key_data_size,
    osse_key_attributes_t* attributes
);

// Export a public key
osse_result_t osse_export_public_key(
    osse_context_t ctx,
    const char* key_id,
    uint8_t* key_data,
    size_t* key_data_size
);

// Delete a key
osse_result_t osse_delete_key(
    osse_context_t ctx,
    const char* key_id
);
```

### Cryptographic Operations

```c
// Sign data with a private key
osse_result_t osse_sign(
    osse_context_t ctx,
    const char* key_id,
    osse_algorithm_t algorithm,
    const uint8_t* data,
    size_t data_size,
    uint8_t* signature,
    size_t* signature_size
);

// Verify a signature with a public key
osse_result_t osse_verify(
    osse_context_t ctx,
    const char* key_id,
    osse_algorithm_t algorithm,
    const uint8_t* data,
    size_t data_size,
    const uint8_t* signature,
    size_t signature_size
);

// Encrypt data
osse_result_t osse_encrypt(
    osse_context_t ctx,
    const char* key_id,
    osse_algorithm_t algorithm,
    const uint8_t* plaintext,
    size_t plaintext_size,
    uint8_t* ciphertext,
    size_t* ciphertext_size
);

// Decrypt data
osse_result_t osse_decrypt(
    osse_context_t ctx,
    const char* key_id,
    osse_algorithm_t algorithm,
    const uint8_t* ciphertext,
    size_t ciphertext_size,
    uint8_t* plaintext,
    size_t* plaintext_size
);
```

## Python API

The Python API provides a high-level, Pythonic interface to the OSSE functionality.

```python
from osse import OSSE, KeyType, Algorithm

# Initialize the OSSE
osse = OSSE()

# Generate a key pair
public_key = osse.generate_keypair(
    key_id="my_key",
    key_type=KeyType.EC_SECP256K1
)

# Sign data
message = b"Hello, OSSE!"
signature = osse.sign(
    key_id="my_key",
    algorithm=Algorithm.ECDSA_SHA256,
    data=message
)

# Verify signature
is_valid = osse.verify(
    key_id="my_key",
    algorithm=Algorithm.ECDSA_SHA256,
    data=message,
    signature=signature
)

print(f"Signature valid: {is_valid}")
```

## JavaScript API

The JavaScript API is designed for web applications and Node.js environments.

```javascript
import { OSSE, KeyType, Algorithm } from 'osse-js';

// Connect to the OSSE device
async function useOSSE() {
  const osse = await OSSE.connect();
  
  try {
    // Generate a key pair
    const publicKey = await osse.generateKeypair({
      keyId: 'my_key',
      keyType: KeyType.EC_SECP256K1
    });
    
    // Sign data
    const message = new TextEncoder().encode('Hello, OSSE!');
    const signature = await osse.sign({
      keyId: 'my_key',
      algorithm: Algorithm.ECDSA_SHA256,
      data: message
    });
    
    // Verify signature
    const isValid = await osse.verify({
      keyId: 'my_key',
      algorithm: Algorithm.ECDSA_SHA256,
      data: message,
      signature: signature
    });
    
    console.log(`Signature valid: ${isValid}`);
  } finally {
    // Close the connection
    await osse.disconnect();
  }
}
```

## Error Handling

All API functions return a result code indicating success or failure:

| Result Code | Description |
|-------------|-------------|
| `OSSE_SUCCESS` | Operation completed successfully |
| `OSSE_ERROR_INVALID_PARAMETER` | Invalid parameter provided |
| `OSSE_ERROR_COMMUNICATION` | Communication error with the device |
| `OSSE_ERROR_DEVICE_NOT_FOUND` | OSSE device not found |
| `OSSE_ERROR_PERMISSION_DENIED` | Permission denied to access the device |
| `OSSE_ERROR_KEY_NOT_FOUND` | Specified key not found |
| `OSSE_ERROR_BUFFER_TOO_SMALL` | Output buffer too small |
| `OSSE_ERROR_CRYPTO` | Cryptographic operation failed |
| `OSSE_ERROR_STORAGE` | Storage operation failed |

## API Versioning

The OSSE API follows semantic versioning:

- **Major version**: Incompatible API changes
- **Minor version**: Backwards-compatible functionality additions
- **Patch version**: Backwards-compatible bug fixes

<div class="notice warning">
  <strong>Warning:</strong> The API is currently in beta (v0.x) and may change without maintaining backward compatibility.
</div>

## Further Documentation

For more detailed information about specific API functions, see the following pages:

- [Device Management API](/api-reference/device-management/)
- [Key Management API](/api-reference/key-management/)
- [Cryptographic Operations API](/api-reference/crypto-operations/)
- [Secure Storage API](/api-reference/secure-storage/)
- [Attestation API](/api-reference/attestation/) 