//
//  M210_RequestEcdh.swift
//  WalletSDK
//
//  Created by dong jun park on 5/28/24.
//

import Foundation
public struct M210_RequestEcdh: Jsonable {
    public var id: String
    public var txId: String
    public var reqEcdh: ReqEcdh
    
    public init(id: String, txId: String, reqEcdh: ReqEcdh) {
        self.id = id
        self.txId = txId
        self.reqEcdh = reqEcdh
    }
}

public struct _M210_RequestEcdh: Jsonable {
    public var txId: String
    public var accEcdh: AccEcdh
    
    public init(id: String, txId: String, accEcdh: AccEcdh) {
        self.txId = txId
        self.accEcdh = accEcdh
    }
}
