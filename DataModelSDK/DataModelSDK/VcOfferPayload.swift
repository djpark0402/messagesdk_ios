//
//  VcOfferPayload.swift
//  DataModelSDK
//
//  Created by dong jun park on 6/13/24.
//

import Foundation

public struct VcOfferPayload: Jsonable {
    public var offerId: String
    public var type: OfferTypeEnum
    public var vcPlanId: String
    public var issuer: String
    public var validUntil: String
    
    public init(offerId: String, type: OfferTypeEnum, vcPlanId: String, issuer: String, validUntil: String) {
        self.offerId = offerId
        self.type = type
        self.vcPlanId = vcPlanId
        self.issuer = issuer
        self.validUntil = validUntil
    }
}
