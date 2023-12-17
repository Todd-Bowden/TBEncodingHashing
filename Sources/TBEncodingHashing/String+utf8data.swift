//
//  String+utf8data.swift
//  
//
//  Created by Todd Bowden on 10/29/22.
//

import Foundation

public extension String {
    
    func utf8data() throws -> Data {
        guard let data = self.data(using: .utf8) else {
            throw TBEncodingHashingError.utf8EncodingError
        }
        return data
    }
    
}
