//
//  VpOfferPayload.swift
//  WalletSDK
//
//  Created by dong jun park on 6/4/24.
//

import Foundation

public struct VpOfferWrapper: Jsonable {
    public var txId: String?
    public var payload: VpOfferPayload
    
    public init(txId: String? = nil, payload: VpOfferPayload) {
        self.txId = txId
        self.payload = payload
    }
}

public struct VpOfferPayload: Jsonable {
    public var offerId: String
    public var type: OfferTypeEnum
    public var mode: PresentModeEnum
    public var device: String
    public var service: String
    public var endpoints: [String]
    public var validUntil: String
    public var locked: Bool = false
    
    public init(offerId: String, type: OfferTypeEnum, mode: PresentModeEnum, device: String, service: String, endpoints: [String], validUntil: String, locked: Bool) {
        self.offerId = offerId
        self.type = type
        self.mode = mode
        self.device = device
        self.service = service
        self.endpoints = endpoints
        self.validUntil = validUntil
        self.locked = locked
    }
}
