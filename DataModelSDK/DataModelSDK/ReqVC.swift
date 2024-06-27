//
//  ReqVC.swift
//  WalletSDK
//
//  Created by dong jun park on 6/10/24.
//

import Foundation

public struct ReqVcProfile: Jsonable {
    public var id: String           // issuer profile Id (uuid)
    public var issuerNonce: String  // multibase issuer nonce byte_length(16)
    
    public init(id: String, issuerNonce: String) {
        self.id = id
        self.issuerNonce = issuerNonce
    }
}

public struct ReqVC: Jsonable {
    public var refId: String
    public var profile: ReqVcProfile
    
    public init(refId: String, profile: ReqVcProfile) {
        self.refId = refId
        self.profile = profile
    }
}
