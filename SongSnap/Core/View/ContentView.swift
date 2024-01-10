//
//  ContentView.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/8/24.
//

import SwiftUI

enum FocusedField {
    case artist, songTitle
}

struct ContentView: View {
    @State private var artistText: String = ""
    @State private var songText: String = ""
    @State private var showLyrics: Bool = false
    @FocusState private var focusedField: FocusedField?
    
    @EnvironmentObject var lyricsVM: LyricsVM
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.mint.ignoresSafeArea()
                
                VStack {
                    HStack(spacing: 20) {
                        Image(systemName: "music.quarternote.3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                        
                        Text("SongSnap")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Image(systemName: "music.quarternote.3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    } // end HStack
                    
                    VStack(spacing: 15) {
                        TextField("Enter name of artist", text: $artistText)
                            .focused($focusedField, equals: .artist)
                            .autocorrectionDisabled()
                            .padding()
                            .background()
                            .clipShape(
                                RoundedRectangle(cornerRadius: 10)
                            )
                        
                        TextField("Enter title of song", text: $songText)
                            .focused($focusedField, equals: .songTitle)
                            .autocorrectionDisabled()
                            .padding()
                            .background()
                            .clipShape(
                                RoundedRectangle(cornerRadius: 10)
                            )
                        
                        Button(action: {
                            lyricsVM.song.artist = artistText.formatSongText()
                            lyricsVM.song.title = songText.formatSongText()
                            showLyrics = true
                            print("searching lyrics")
                        }, label: {
                            Text("Search Lyrics")
                                .padding()
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(.blue)
                                .foregroundStyle(.white)
                                .font(.headline)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                        })
                        .padding(.top, 20)
                        .navigationDestination(isPresented: $showLyrics) {
                            LyricsView()
                        }
                    } // end VStack
                    .padding(.top, 30)
                    .onSubmit {
                        focusedField = .artist
                    }
                } // end VStack
                .padding()
            } // end ZStack
        } // end NavStack
    } // end body
}

#Preview {
    ContentView()
        .environmentObject(LyricsVM())
}
