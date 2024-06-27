//
//  AccE2e.swift
//  DataModelSDK
//
//  Created by dong jun park on 6/14/24.
//

import Foundation

public struct AccE2e: Jsonable {
    public var publicKey: String
    public var iv: String
    public var proof: Proof

    public init(publicKey: String, iv: String, proof: Proof) {
        self.publicKey = publicKey
        self.iv = iv
        self.proof = proof
    }
}
