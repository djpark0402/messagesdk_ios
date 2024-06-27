//
//  M210_RequestIssueVc.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct M210_RequestIssueVc: Jsonable {
    public var id: String
    public var txId: String
    public var serverToken: String
    public var didAuth: DidAuth
    public var accE2e: AccE2e
    public var encReqVc: String
    
    public init(id: String, txId: String, serverToken: String, didAuth: DidAuth, accE2e: AccE2e, encReqVc: String) {
        self.id = id
        self.txId = txId
        self.serverToken = serverToken
        self.didAuth = didAuth
        self.accE2e = accE2e
        self.encReqVc = encReqVc
    }
}

public struct E2E: Jsonable {
    // E2E 암복호화 IV, byte_length(16)
    public var iv: String
    // multibase (enc(vc))
    public var encVc: String
    
    public init(iv: String, encVc: String) {
        self.iv = iv
        self.encVc = encVc
    }
}

public struct _M210_RequestIssueVc: Jsonable {
    
    public var txId: String
    public var e2e: E2E
    
    public init(txId: String, e2e: E2E) {
        self.txId = txId
        self.e2e = e2e
    }
}
