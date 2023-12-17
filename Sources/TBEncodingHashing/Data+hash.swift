//
//  Data+hash.swift
//  
//
//  Created by Todd Bowden on 11/5/22.
//

import Foundation
import CryptoKit

public extension Data {
    
    var sha256: Data {
        Data(SHA256.hash(data: self))
    }

    func hash(length: Int? = nil) -> String {
        let string = self.sha256.hex
        if let length = length {
            return String(string.prefix(length))
        } else {
            return string
        }
    }

}
