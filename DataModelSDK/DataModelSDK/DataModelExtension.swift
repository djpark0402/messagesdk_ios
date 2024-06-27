//
//  DataModelExtension.swift
//  DataModelSDK
//
//  Created by dong jun park on 6/12/24.
//

import Foundation

public protocol Jsonable : Codable
{
    init(from jsonData: Data) throws
    init(from jsonString: String) throws
    func toJsonData(isPretty: Bool) throws -> Data
    func toJson(isPretty: Bool) throws -> String
}

public extension Jsonable
{
    init(from jsonData: Data) throws {
        do
        {
            self = try JSONDecoder().decode(Self.self, from: jsonData)
        }
//        catch let e
//        {
//            throw OdiError.genError2(code:JsonError.failToDecode, message: e.localizedDescription)
//        }
    }
    
    init(from jsonString: String) throws {
        let data = jsonString.data(using: .utf8)!
//        else
//        {
//            throw OdiError.genError2(code:JsonError.failToData)
//        }
        
        try self.init(from: data)
    }
    
    func toJsonData(isPretty: Bool = false) throws -> Data {
        var formatting : JSONEncoder.OutputFormatting = [.sortedKeys, .withoutEscapingSlashes]
        if isPretty
        {
            formatting.insert(.prettyPrinted)
        }
        
        let jsonEncoder = JSONEncoder()
        jsonEncoder.outputFormatting = formatting
        
        do
        {
            let data = try jsonEncoder.encode(self)
            return data
        }
//        catch let e
//        {
//            throw OdiError.genError2(code:JsonError.failToEncode,message: e.localizedDescription)
//        }
    }
    
    func toJson(isPretty: Bool = false) throws -> String {
        return String(data: try toJsonData(isPretty: isPretty), encoding: .utf8)!
    }
    
}
