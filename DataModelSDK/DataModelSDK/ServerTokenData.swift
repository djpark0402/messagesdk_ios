//
//  ServerTokenData.swift
//  WalletSDK
//
//  Created by dong jun park on 6/7/24.
//

import Foundation

public enum ServerTokenPurposeEnum: Int, Jsonable {
    case CREATE_DID = 5
    case UPDATE_DID
    case ISSUE_VC
    case REMOVE_VC
    case PRESENT_VP
    case LIST_VC
    case DETAIL_VC
    case CREATE_DID_AND_ISSUE_VC
}


public struct ServerTokenData: Jsonable {
    public var purpose: ServerTokenPurposeEnum
    public var walletId: String
    public var caAppId: String
    public var validUntil: String
    public var provider: Provider
    public var nonce: String
    public var proof: Proof
    
    public init(purpose: ServerTokenPurposeEnum, walletId: String, caAppId: String, validUntil: String, provider: Provider, nonce: String, proof: Proof) {
        self.purpose = purpose
        self.walletId = walletId
        self.caAppId = caAppId
        self.validUntil = validUntil
        self.provider = provider
        self.nonce = nonce
        self.proof = proof
    }
}


