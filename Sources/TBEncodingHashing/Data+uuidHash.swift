//
//  Data+uuidHash.swift
//  
//
//  Created by Todd Bowden on 12/15/22.
//

import Foundation

public extension Data {
    
    var uuidHash: String {
        self.sha256.uuidString
    }
    
    var uuidString: String {
        var data = [UInt8](self)
        while data.count < 16 { data.append(0) }
        data[6] = data[6] | 0b01000000
        data[6] = data[6] & 0b01001111
        data[8] = data[8] | 0b10000000
        data[8] = data[8] & 0b10111111
        return
            Data(data[0...3]).hex + "-" +
            Data(data[4...5]).hex + "-" +
            Data(data[6...7]).hex + "-" +
            Data(data[8...9]).hex + "-" +
            Data(data[10...15]).hex
        
    }
    
}
