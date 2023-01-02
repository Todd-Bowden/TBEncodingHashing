//
//  Data+utf8string.swift
//  
//
//  Created by Todd Bowden on 10/29/22.
//

import Foundation

public extension Data {
    
    func utf8string() throws -> String {
        guard let string = String(data: self, encoding: .utf8) else {
            throw TBEncodingHashingExtensionsError.utf8EncodingError
        }
        return string
    }
    
}
