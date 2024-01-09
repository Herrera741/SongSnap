//
//  LyricsView.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/9/24.
//

import SwiftUI

struct LyricsView: View {
    var body: some View {
        ZStack {
            Color.mint.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Times Like These")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                Text("I, i'm a one way motorway\ni'm a road that drives away and follows you back home\nI i'm a street light shining i'm a white light blinding bright burning off and on\n\nits times like these you learn to love again\nits times like these time and time again\n\nI i'm a new day rising i'm a brand new sky to hang the stars upon tonight I i'm a little divided do i stay or run away and leave it all behind\n\nits times like these you learn to live again\nits times like these you give and give again\nits times like thses you learn to love again its times like these time and time again\n\n\nits times like these you learn to live again\nits times like these you give and give again\nits times like thses you learn to love again its times like these time and time again")
            } // end VStack
        } // end ZStack
        
    }
}

#Preview {
    NavigationStack {
        LyricsView()
    }
}
