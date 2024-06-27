//
//  EcdhReqData.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation
import OpenDID_DataModel

//public struct ReqEcdhBuilder {
//    private var reqEcdh = ReqEcdh()
//    
//    func withClient(_ client: String) -> Self {
//        reqEcdh.client = client
//        return self
//    }
//    
//    func withClientNonce(_ clientNonce: String) -> Self {
//        reqEcdh.clientNonce = clientNonce
//        return self
//    }
//    
//    func build() -> ReqEcdh {
//        return reqEcdh
//    }
//}

public struct ReqEcdh: Jsonable {
    var client: String
    var clientNonce: String
    var publicKey: String
    var curve: EllipticCurveType
//    public var candidate: Int
        
    public init(client: String, clientNonce: String, publicKey: String, curve: EllipticCurveType) {
        self.client = client
        self.clientNonce = clientNonce
        self.publicKey = publicKey
        self.curve = curve
    }
}
