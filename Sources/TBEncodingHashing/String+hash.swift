//
//  String+hash.swift
//  
//
//  Created by Todd Bowden on 10/9/22.
//

import Foundation

public extension String {
    
    static func randomHash(length: Int? = nil) -> String {
        let string = "\(UUID().uuidString)\(Date().timeIntervalSince1970)\(UInt64.random(in: 0...UInt64.max))"
        return string.hash(length: length, default: "").uppercased()
    }
    
    func hash(length: Int? = nil) throws -> String {
        try self.utf8data().hash(length: length)
    }
    
    func hash(length: Int? = nil, default: String) -> String {
        if let hash = try? self.utf8data().hash(length: length) {
            return hash
        } else {
            return `default`
        }
    }
        
}
