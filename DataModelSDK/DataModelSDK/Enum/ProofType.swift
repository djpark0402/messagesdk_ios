//
//  ProofType.swift
//  WalletSDK
//
//  Created by dong jun park on 5/17/24.
//

import Foundation

public enum ProofType: String, Jsonable {
    case RSA = "RsaSignature2018"
    case SECP256K1 = "Secp256k1Signature2018"
    case SECP256R1 = "Secp256r1Signature2018"
}

public enum AlgorithmType : String, Codable
{
    case rsa       = "Rsa"
    case secp256k1 = "Secp256k1"
    case secp256r1 = "Secp256r1"
}
