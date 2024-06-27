//
//  AttestedDidDoc.swift
//  DataModelSDK
//
//  Created by dong jun park on 6/19/24.
//

import Foundation

public struct AttesstedDidDoc: Jsonable {
    public var walletId: String
    public var ownerDidDoc: String
    public var provider: Provider
    public var nonce: String
    public var proof: Proof
    
    public init(walletId: String, ownerDidDoc: String, provider: Provider, nonce: String, proof: Proof) {
        self.walletId = walletId
        self.ownerDidDoc = ownerDidDoc
        self.provider = provider
        self.nonce = nonce
        self.proof = proof
    }
}
