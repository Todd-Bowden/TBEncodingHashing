//
//  String+hash.swift
//  
//
//  Created by Todd Bowden on 10/9/22.
//

import Foundation

public extension String {
    
    func hash(length: Int = 32) throws -> String {
        try self.utf8data().hash(length: length)
    }
        
}
