//
//  InvokedDidDoc.swift
//  DataModelSDK
//
//  Created by dong jun park on 6/19/24.
//

import Foundation

public struct InvokedDidDoc: Jsonable {
    public var didDoc: String
    public var controller: Provider
    public var nonce: String
    public var proof: Proof
    
    public init(didDoc: String, controller: Provider, nonce: String, proof: Proof) {
        self.didDoc = didDoc
        self.controller = controller
        self.nonce = nonce
        self.proof = proof
    }
}
