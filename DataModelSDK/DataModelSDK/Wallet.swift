//
//  Wallet.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct Wallet: Jsonable {
    private var id: String
    private var did: String
    
    public init(id: String, did: String) {
        self.id = id
        self.did = did
    }
}
