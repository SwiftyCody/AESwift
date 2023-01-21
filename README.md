# AESwift

🥸 Data and NSData Extension made for **AES encryption/decryption** only with Swift.
😏 There is no need to depend on a large library that provides various encryption/decryption methods for AES encryption/decryption. It just uses **Swift's CommonCrypto**.

## Usage

### Encryption
If type is not specified, encryption is performed with AES256 by default.

```swift
    let originString = "Let's AES Encrypt with Swift!"
    let key = "12345678901234567890123456789012"
    let iv = "1234567890123456"
    
    let aeswift256EncryptedString = originString.data(using: .utf8)?.aesEncrypt(key: key, iv: iv, type: .aes256)?.base64EncodedString()
    
    print(aeswift256EncryptedString)
    // 2mDdqEH0vyuq1JeoYHNUJhJ8WtGnDEg4eW/9HSDigNA=
```

### Decryption
If type is not specified, decryption is performed with AES256 by default.

```swift
    let encryptedString = "2mDdqEH0vyuq1JeoYHNUJhJ8WtGnDEg4eW/9HSDigNA="
    let key = "12345678901234567890123456789012"
    let iv = "1234567890123456"
    
    let aeswift256DecryptedString = String(decoding: Data(base64Encoded: aeswift256EncryptedString)?.aesDecrypt(key: key, iv: iv, type: .aes256) ?? Data(), as: UTF8.self)
    
    print(aeswift256DecryptedString)
    // Let's AES Encrypt with Swift!
```

## Installation


### Swift Package Manager
```swift
    dependencies: [
        .package(url: "", .upToNextMajor(from: "1.0"))
    ]
```

## License

**AESwift** is under MIT license.
