//
//  M132_ProposeRegisterUser.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct M132_ProposeRegisterUser: Jsonable {
    public var id: String
    
    public  init(id: String) {
        self.id = id
    }
}

public struct _M132_ProposeRegisterUser: Jsonable {
    public var txId: String
    
    public init(txId: String) {
        self.txId = txId
    }
}
