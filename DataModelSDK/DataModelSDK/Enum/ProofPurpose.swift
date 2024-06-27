//
//  ProofPurpose.swift
//  WalletSDK
//
//  Created by dong jun park on 5/17/24.
//

import Foundation

public enum ProofPurpose: String, Jsonable {
    case AssertionMethod = "assertionMethod"
    case Authentication = "authentication"
    case KeyAgreement = "keyAgreement"
    case CapabilityInvocation = "capabilityInvocation"
    case CapabilityDelegation = "capabilityDelegation"
}
