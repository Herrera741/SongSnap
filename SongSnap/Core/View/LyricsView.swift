//
//  LyricsView.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/9/24.
//

import SwiftUI

struct LyricsView: View {
    @EnvironmentObject var lyricsVM: LyricsVM
    let noLyricsMessage: String = "Sorry, either these lyrics are not in the database or check the spelling for artist and song"
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.mint.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 15) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(lyricsVM.song.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("By \(lyricsVM.song.artist)")
                        .font(.headline)
                }
                
                Text(lyricsVM.song.lyrics.isEmpty ? noLyricsMessage : lyricsVM.song.lyrics)
                
                Spacer()
            } // end VStack
            .padding(.horizontal, 8)
            .onAppear(perform: {
                Task {
                    do {
                        lyricsVM.songLyrics = try await lyricsVM.fetchData()
                        lyricsVM.song.lyrics = lyricsVM.songLyrics?.lyrics.removeLyricsPrefix() ?? ""
                    } catch NetworkError.invalidURL {
                        print("bad url")
                    } catch NetworkError.invalidData {
                        print("bad data")
                    } catch {
                        print("unexpected error")
                    }
                }
            })
        } // end ZStack
    }
}

#Preview {
    NavigationStack {
        LyricsView()
            .environmentObject(LyricsVM())
    }
}
