//
//  ContentView.swift
//  guessWhov2
//
//  Created by Apprenant 77 on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isKnocked = "🚪TOC! TOC! TOC!🚪"
    private var guests = ["👻 Casper","🧛‍♂️ Dracula","🎅🏻 Le Père Noël","🕵️‍♂️ Sherlock HOLMES","👨‍🔬 Bruce BANNER","👨🏼‍🎨 Léonard DE VINCI", "👨🏻‍💻 Mark ZUCKERBERG"]
    var body: some View {
        ZStack {
            if(isKnocked == "🚪TOC! TOC! TOC!🚪"){
                Image("whoIsAtTheDoor")
            } else {
                Image("welcome")
            }
           
            VStack {
                Text("❓Devine qui vient dîner❓")
                    .font(.largeTitle)
                    .padding()
                        
                Text(isKnocked)
                    .font(.title)
                    .padding()
                    .bold()
                
                Spacer()
                
                Button {
                    if(isKnocked == "🚪TOC! TOC! TOC!🚪"){
                        isKnocked = guests.randomElement()!
                    }else{
                        isKnocked = "🚪TOC! TOC! TOC!🚪"
                    }
                } label: {
                    Text("Qui est là?")
                        .font(.title)
                }
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                Spacer()
                
                Text("Made by Sabrina AUGUSTY")
                    .font(.footnote)
                    .foregroundColor(.cyan)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
