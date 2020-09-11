//
//  NSData+SHA.swift
//  SwiftyRSA iOS
//
//  Created by Hung Nguyen on 9/11/20.
//  Copyright © 2020 Scoop. All rights reserved.
//

import Foundation
import CommonCrypto

extension NSData {
    func swiftyRSASHA1() -> NSData {
        let length = Int(CC_SHA1_DIGEST_LENGTH)
        var digest = [UInt8](repeating: 0, count: length)
        CC_SHA1(self.bytes, CC_LONG(self.length), &digest)
        return NSData(bytes: digest, length: length)
    }
    func swiftyRSASHA224() -> NSData {
        let length = Int(CC_SHA224_DIGEST_LENGTH)
        var digest = [UInt8](repeating: 0, count: length)
        CC_SHA224(self.bytes, CC_LONG(self.length), &digest)
        return NSData(bytes: digest, length: length)
    }
    func swiftyRSASHA256() -> NSData {
        let length = Int(CC_SHA256_DIGEST_LENGTH)
        var digest = [UInt8](repeating: 0, count: length)
        CC_SHA256(self.bytes, CC_LONG(self.length), &digest)
        return NSData(bytes: digest, length: length)
    }
    func swiftyRSASHA384() -> NSData {
        let length = Int(CC_SHA384_DIGEST_LENGTH)
        var digest = [UInt8](repeating: 0, count: length)
        CC_SHA384(self.bytes, CC_LONG(self.length), &digest)
        return NSData(bytes: digest, length: length)
    }
    func swiftyRSASHA512() -> NSData {
        let length = Int(CC_SHA512_DIGEST_LENGTH)
        var digest = [UInt8](repeating: 0, count: length)
        CC_SHA512(self.bytes, CC_LONG(self.length), &digest)
        return NSData(bytes: digest, length: length)
    }
}
