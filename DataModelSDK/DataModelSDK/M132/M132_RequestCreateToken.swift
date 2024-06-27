//
//  M132_RequestCreateToken.swift
//  WalletSDK
//
//  Created by dong jun park on 5/24/24.
//

import Foundation

public struct M132_RequestCreateToken: Jsonable {
    public var id: String
    public var txId: String
    public var seed: ServerTokenSeed
    
    public init(id: String, txId: String, seed: ServerTokenSeed) {
        self.id = id
        self.txId = txId
        self.seed = seed
    }
}

public struct _M132_RequestCreateToken: Jsonable {
    
    public var txId: String
    public var iv: String
    public var encStd: String
    
    public init(txId: String, iv: String, encStd: String) {
        self.txId = txId
        self.iv = iv
        self.encStd = encStd
    }
}
