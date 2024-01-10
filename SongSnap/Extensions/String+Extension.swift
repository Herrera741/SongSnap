//
//  String+Extension.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/9/24.
//

import Foundation

extension String {
    func formatToEndpointText() -> String {
        return self.lowercased().replacingOccurrences(of: " ", with: "-")
    }
    
    func formatSongText() -> String {
        return self.trimmingCharacters(in: .whitespaces).capitalized
    }
    
    func removeLyricsPrefix() -> String {
        if let startIndex = self.firstIndex(of: "\n") {
            return String(self.suffix(from: startIndex))
        } else {
            return self
        }
    }
}
