//
//  SignedWalletInfo.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct SignedWalletInfo: Jsonable {
    private var wallet: Wallet
    private var nonce: String
    private var proof: Proof
    
    public init(wallet: Wallet, nonce: String, proof: Proof) {
        self.wallet = wallet
        self.nonce = nonce
        self.proof = proof
    }
}
