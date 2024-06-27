//
//  AttestedAppInfo.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct AttestedAppInfo: Jsonable {
    public var appId: String
    public var provider: Provider
    public var nonce: String
    public var proof: Proof
    
    public init(appId: String, provider: Provider, nonce: String, proof: Proof) {
        self.appId = appId
        self.provider = provider
        self.nonce = nonce
        self.proof = proof
    }
}
