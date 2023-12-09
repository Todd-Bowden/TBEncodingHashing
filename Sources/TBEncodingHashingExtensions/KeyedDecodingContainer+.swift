//
// KeyedDecodingContainer+.swift
//
//
//  Created by Todd Bowden on 9/24/23.
//

import Foundation

extension KeyedDecodingContainer {
    
    func decodeString(key: Key, default: String = "") -> String {
        (try? self.decodeIfPresent(String.self, forKey: key)) ?? `default`
    }
    
    func decodeInt(key: Key, default: Int = 0) -> Int {
        (try? self.decodeIfPresent(Int.self, forKey: key)) ?? `default`
    }
    
    func decodeDate(key: Key, default: Date = Date(timeIntervalSince1970: 0)) -> Date {
        (try? self.decodeIfPresent(Date.self, forKey: key)) ?? `default`
    }
    
    func decodeLanguage(key: Key, default: Locale.LanguageCode = .english) -> Locale.LanguageCode {
        (try? self.decodeIfPresent(Locale.LanguageCode.self, forKey: key)) ?? `default`
    }
    
}
