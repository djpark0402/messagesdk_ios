//
//  Proof.swift
//  WalletSDK
//
//  Created by dong jun park on 5/17/24.
//

import Foundation

public struct Proof: Jsonable {
    public var type: ProofType
    public var created: String
    public var verificationMethod: String  // did url
    public var proofPurpose: ProofPurpose
    public var proofValue: String?  // signature // mutibase
        
    public init(type: ProofType, created: String, verificationMethod: String, proofPurpose: ProofPurpose, proofValue: String? = nil) {
        self.type = type
        self.created = created
        self.verificationMethod = verificationMethod
        self.proofPurpose = proofPurpose
        self.proofValue = proofValue
    }
    
    
}
