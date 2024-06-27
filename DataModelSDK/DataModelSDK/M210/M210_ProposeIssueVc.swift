//
//  M210_ProposeIssueVc.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation

public struct M210_ProposeIssueVc: Jsonable {
    
    public var id: String
    public var vcPlanId: String
    public var issuer: String
    public var offerId: String
    
    public init(id: String, vcPlanId: String, issuer: String, offerId: String) {
        self.id = id
        self.vcPlanId = vcPlanId
        self.issuer = issuer
        self.offerId = offerId
    }
}

public struct _M210_ProposeIssueVc: Jsonable {
    public var txId: String
    public var refId: String
    
    public init(txId: String, refId: String) {
        self.txId = txId
        self.refId = refId
    }
}
