//
//  SignedDidDoc.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct SignedDidDoc: Jsonable {
    private var ownerDidDoc: String
    private var wallet: Wallet
    private var nonce: String
    private var proof: Proof
    
    public init(ownerDidDoc: String, wallet: Wallet, nonce: String, proof: Proof) {
        self.ownerDidDoc = ownerDidDoc
        self.wallet = wallet
        self.nonce = nonce
        self.proof = proof
    }
}
