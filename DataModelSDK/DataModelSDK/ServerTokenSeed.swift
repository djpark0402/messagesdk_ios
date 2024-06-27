//
//  ServerTokenSeed.swift
//  WalletSDK
//
//  Created by dong jun park on 5/24/24.
//

import Foundation

public struct ServerTokenSeed: Jsonable {
    public var purpose: WalletTokenPurposeEnum
    public var walletInfo: SignedWalletInfo
    public var caAppInfo: AttestedAppInfo
    
    public init(purpose: WalletTokenPurposeEnum, walletInfo: SignedWalletInfo, attestedAppInfo: AttestedAppInfo) {
        self.purpose = purpose
        self.walletInfo = walletInfo
        self.caAppInfo = attestedAppInfo
    }
}
