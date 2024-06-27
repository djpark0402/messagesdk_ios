//
//  M310_RequestVpOfferType1.swift
//  WalletSDK
//
//  Created by dong jun park on 6/4/24.
//

import Foundation
import OpenDID_DataModel

public struct M310_RequestVerify: Jsonable {
    public var id: String
    public var txId: String
    public var accE2e: AccE2e
    public var encVp: String
    
    public init(id: String, txId: String, accE2e: AccE2e, encVp: String) {
        self.id = id
        self.txId = txId
        self.accE2e = accE2e
        self.encVp = encVp
    }
}


public struct _M310_RequestVerify: Jsonable {
    public var txId: String
    
    public init(txId: String) {
        self.txId = txId
    }
}
