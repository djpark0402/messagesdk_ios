//
//  M132_RequestRegisterUser.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct M132_RequestRegisterUser: Jsonable {
    public var id: String
    public var txId: String
    public var signedDidDoc: SignedDidDoc
    public var serverToken: String
    
    public init(id: String, txId: String, signedDidDoc: SignedDidDoc, serverToken: String) {
        self.id = id
        self.txId = txId
        self.signedDidDoc = signedDidDoc
        self.serverToken = serverToken
    }
}

public struct _M132_RequestRegisterUser: Jsonable {
    public var txId: String
    
    public init(txId: String) {
        self.txId = txId
    }
}
