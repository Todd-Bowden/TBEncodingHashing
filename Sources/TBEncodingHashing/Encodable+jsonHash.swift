//
//  Encodable+jsonHash.swift
//  
//
//  Created by Todd Bowden on 10/23/22.
//

import Foundation

public extension Encodable {
    
    func jsonHash(length: Int? = nil) -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .sortedKeys
        guard let jsonData = try? encoder.encode(self) else { return "" }
        return jsonData.hash(length: length)
    }
    
}
