//
//  ContentView.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var artist: String = ""
    @State private var song: String = ""
    
    var body: some View {
        
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
                    TextField("Enter name of artist", text: $artist)
                        .padding()
                        .background()
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                    
                    TextField("Enter name of song", text: $song)
                        .padding()
                        .background()
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                    
                    Button(action: {
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
                    
                } // end VStack
                .padding(.top, 30)
            } // end VStack
            .padding()
        } // end ZStack
    }
}

#Preview {
    ContentView()
}
