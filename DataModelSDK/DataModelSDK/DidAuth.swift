//
//  DidAuth.swift
//  DataModelSDK
//
//  Created by dong jun park on 6/14/24.
//

import Foundation

public struct DidAuth: Jsonable {
    public var did: String
    public var authNonce: String
    public var proof: Proof

    public init(did: String, authNonce: String, proof: Proof) {
        self.did = did
        self.authNonce = authNonce
        self.proof = proof
    }
}
