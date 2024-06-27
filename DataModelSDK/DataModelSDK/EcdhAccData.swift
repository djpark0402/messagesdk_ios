//
//  EcdhAccData.swift
//  WalletSDK
//
//  Created by dong jun park on 5/24/24.
//

import Foundation
/*
def object EcdhAccData: "ECDH acceptance data"
{
    + did                    "did"        : "수락자의 DID"
    + multibase              "serverNonce": "E2E 대칭키 생성용 nonce", byte_length(16)
    + multibase              "publicKey"  : "E2E 암호화용 server 공개키"
    + SYMMETRIC_CIPHER_TYPE  "cipher"     : "cipher type"
    + SYMMETRIC_PADDING_TYPE "padding"    : "padding type"
}
*/
public struct AccEcdh: Jsonable {
    public var server: String
    public var serverNonce: String
    public var publicKey: String
    public var cipher: String
    public var padding: String
    public var proof: Proof?
    
    public init(server: String, serverNonce: String, publicKey: String, cipher: String, padding: String, proof: Proof? = nil) {
        self.server = server
        self.serverNonce = serverNonce
        self.publicKey = publicKey
        self.cipher = cipher
        self.padding = padding
        self.proof = proof
    }
}
