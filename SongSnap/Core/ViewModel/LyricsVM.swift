//
//  LyricsVM.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/9/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidData
}

final class LyricsVM: ObservableObject {
    @Published var song: Song
    @Published var songLyrics: SongLyrics?
    
    init() {
        self.song = Song(title: "", 
                         artist: "",
                         lyrics: "")
    }
    
    func fetchData() async throws -> SongLyrics {
        let endpoint = "https://api.lyrics.ovh/v1/\(song.artist.formatToEndpointText())/\(song.title.formatToEndpointText())"
        guard let url = URL(string: endpoint) else {
            print("something went wrong with url")
            throw NetworkError.invalidURL
        }

        do {
            let decoder = JSONDecoder()
            let (data, _) = try await URLSession.shared.data(from: url)
            return try decoder.decode(SongLyrics.self, from: data)
        } catch {
            print("something went wrong grabbing the data")
            throw NetworkError.invalidData
        }
    }
}
