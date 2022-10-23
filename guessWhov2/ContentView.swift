//
//  ContentView.swift
//  guessWhov2
//
//  Created by Apprenant 77 on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isKnocked = "🚪TOC! TOC! TOC!🚪"
    private var guests = ["👻 Casper","🧛‍♂️ Dracula","🎅🏻 Père Noël","🕵️‍♂️ Sherlock HOLMES","👨‍🔬 Bruce BANNER","👨🏼‍🎨 Léonard DE VINCI", "👨🏻‍💻 Mark ZUCKERBERG"]
    
//    let deviceWidth = UIScreen.main.bounds.width
//    let deviceHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack {
            Image("questionmark")
                .resizable(capInsets: EdgeInsets(top: 10.0, leading: 38.0, bottom: 23.0, trailing: 17.0), resizingMode: .tile)
                .scaledToFill()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Devine qui vient dîner 🤔")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .bold()
                    //.background()
                    
                        
                Text(isKnocked)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.all, 36.0)
                    //.bold()
                    //.background()
                
                
                if(isKnocked == "🚪TOC! TOC! TOC!🚪"){
                    Image("whoIsAtTheDoor")
                        .resizable()
                        .frame(width: 200, height: 250)
                        .padding()
                        .cornerRadius(25)
                } else {
                    Image("welcome")
                        .resizable()
                        .frame(width: 200, height: 250)
                        .padding()
                        .cornerRadius(15)
                }

                Spacer()
                
                Button {
                    if(isKnocked == "🚪TOC! TOC! TOC!🚪"){
                        isKnocked = guests.randomElement()!
                            
                    }else{
                        isKnocked = "🚪TOC! TOC! TOC!🚪"
                    }

                } label: {
                    if(isKnocked == "🚪TOC! TOC! TOC!🚪" ){
                        Text("Qui est là?").font(.title)
                    } else {
                        Text("Bienvenue\n \(isKnocked)")
                            .font(.title)
                            .multilineTextAlignment(.center)
                    }
                    
                }
             
                .padding(.all, 21.0)
                .background(.pink)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                Spacer()
                
                Text("Made by Sabrina AUGUSTY")
                    .font(.footnote)
                    .foregroundColor(.black)
                    .bold()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .medium)
    }
}
