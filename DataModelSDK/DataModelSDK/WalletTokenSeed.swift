//
//  WalletTokenData.swift
//  WalletSDK
//
//  Created by dong jun park on 5/8/24.
//

import Foundation

public struct WalletTokenSeed: Jsonable {
    public var purpose: WalletTokenPurposeEnum
    public var pkgName: String
    public var nonce: String
    public var validUntil: String
    
    public init(purpose: WalletTokenPurposeEnum, pkgName: String, nonce: String, validUntil: String) {
        self.purpose = purpose
        self.pkgName = pkgName
        self.nonce = nonce
        self.validUntil = validUntil
    }
}
