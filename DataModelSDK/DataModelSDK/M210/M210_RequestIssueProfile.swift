//
//  M210_RequestIssueProfile.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation
import OpenDID_DataModel

public struct M210_RequestIssueProfile: Jsonable {
    
    // messageId
    public var id: String
    // uuid
    public var txId: String
    // multibase
    public var serverToken: String
    
    public init(id: String, txId: String, serverToken: String) {
        self.id = id
        self.txId = txId
        self.serverToken = serverToken
    }
}

public struct _M210_RequestIssueProfile: Jsonable {
    // uuid
    public var txId: String
    // multibase
    public var authNonce: String
    // IssuerProfile
    public var profile: IssueProfile
    
    public init(txId: String, authNonce: String, profile: IssueProfile) {
        self.txId = txId
        self.authNonce = authNonce
        self.profile = profile
    }
}
