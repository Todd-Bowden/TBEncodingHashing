//
//  Array+hash.swift
//
//
//  Created by Todd Bowden on 9/23/23.
//

import Foundation

public extension Array where Element == String {
    
    func hash(length: Int? = nil) throws -> String {
        var concat = ""
        for string in self.sorted() {
            concat += string
        }
        return try concat.hash(length: length)
    }
    
}
