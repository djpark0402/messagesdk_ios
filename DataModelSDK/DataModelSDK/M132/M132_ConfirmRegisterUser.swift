//
//  M132_ConfirmRegisterUser.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

/*
 def object M132_ConfirmRegisterUser: "Confirm Register User 요청문"
 {
     //--- Common Part ---
     + messageId "id"  : "message id"
     + uuid      "txId": "transaction id"

     //--- Data Part ---
     + multibase "serverToken": "multibase(serverToken)"
 }
 */
public struct M132_ConfirmRegisterUser: Jsonable {
    public var id: String
    public var txId: String
    public var serverToken: String
    
    public init(id: String, txId: String, serverToken: String) {
        self.id = id
        self.txId = txId
        self.serverToken = serverToken
    }
}

public struct _M132_ConfirmRegisterUser: Jsonable {
    public var txId: String
    
    public init(txId: String) {
        self.txId = txId
    }
}
