//
//  Provider.swift
//  WalletSDK
//
//  Created by dong jun park on 5/17/24.
//

import Foundation

public struct Provider: Jsonable {
    var did: String
    var certVcRef: String   // url
    
    public init(did: String, certVcRef: String) {
        self.did = did
        self.certVcRef = certVcRef
    }
    
    enum CodingKeys: String, CodingKey {
        case did
        case certVcRef
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(did, forKey: .did)
        try container.encode(certVcRef, forKey: .certVcRef)
    }
}
