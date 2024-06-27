//
//  M310_RequestVerifyProfileType1.swift
//  WalletSDK
//
//  Created by dong jun park on 6/4/24.
//

import Foundation
import OpenDID_DataModel

public struct M310_RequestProfile: Jsonable {
    public var id: String
    public var txId: String
    public var offerId: String
    
    public init(id: String, txId: String, offerId: String) {
        self.id = id
        self.txId = txId
        self.offerId = offerId
    }
}


public struct _M310_RequestProfile: Jsonable {
    public var txId: String
    public var profile: VerifyProfile
    
    public init(txId: String, profile: VerifyProfile) {
        self.txId = txId
        self.profile = profile
    }
}
