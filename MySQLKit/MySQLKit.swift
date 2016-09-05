//
//  MySQLKit.swift
//  MySQLKit
//
//  Created by Tanmay Bakshi on 2016-07-10.
//  Copyright © 2016 Tanmay Bakshi. All rights reserved.
//

import Foundation

extension Data {
    
    var asString: String {
        return String(data: self, encoding: String.Encoding.utf8)!
    }
    
}

extension String {
    
    var urlEncoded: String {
        return self.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlPathAllowed())!
    }
    
    func printSelf() -> String { print(self); return self }
    
}

class MySQLKit {
    
    var MSKHandler: String!
    
    var database: String!
    
    init(MSKHandler: String, database: String) {
        self.MSKHandler = MSKHandler
        self.database = database
    }
    
    func runRequest_DATA(query: String) -> Data {
        let url = MSKHandler + "?db=\(database.urlEncoded)&query=\(query.urlEncoded)"
        return try! Data(contentsOf: URL(string: url)!)
    }
    
}
