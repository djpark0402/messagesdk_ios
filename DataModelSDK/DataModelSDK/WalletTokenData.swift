//
//  WalletTokenData.swift
//  WalletSDK
//
//  Created by dong jun park on 5/17/24.
//

import Foundation

public struct WalletTokenData: Jsonable {
    public var seed: WalletTokenSeed
    public var sha256_pii: String
    public var provider: Provider
    public var nonce: String   // multibase
    public var proof: Proof
        
    public init(seed: WalletTokenSeed, sha256_pii: String, provider: Provider, nonce: String, proof: Proof) {
        self.seed = seed
        self.sha256_pii = sha256_pii
        self.provider = provider
        self.nonce = nonce
        self.proof = proof
    }
}
