import XCTest
@testable import AESwift

final class AESwiftTests: XCTestCase {
    
    let originString = "Let's AES Encrypt with Swift!"
    let key = "12345678901234567890123456789012"
    let iv = "1234567890123456"
    
    func testAES256Encrypt() throws {
        let aeswift256EncryptedString = originString.data(using: .utf8)?.aesEncrypt(key: key, iv: iv, type: .aes256)?.base64EncodedString()
        
        XCTAssertEqual(aeswift256EncryptedString, "2mDdqEH0vyuq1JeoYHNUJhJ8WtGnDEg4eW/9HSDigNA=")
    }
    
    func testAES256Decrypt() throws {
        let aeswift256EncryptedString = "2mDdqEH0vyuq1JeoYHNUJhJ8WtGnDEg4eW/9HSDigNA="
        let aeswift256DecryptedString = String(decoding: Data(base64Encoded: aeswift256EncryptedString)?.aesDecrypt(key: key, iv: iv, type: .aes256) ?? Data(), as: UTF8.self)
        
        XCTAssertEqual(aeswift256DecryptedString, originString)
    }
}
