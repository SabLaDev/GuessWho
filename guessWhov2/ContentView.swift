//
//  ContentView.swift
//  guessWhov2
//
//  Created by Apprenant 77 on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isKnocked = "🚪Toc! Toc! Toc!🚪"
    private var guests = ["👻 Casper","🧛‍♂️ Dracula","🎅🏻 Père Noël","🕵️‍♂️ Sherlock HOLMES","👨‍🔬 Bruce BANNER","👨🏼‍🎨 Léonard DE VINCI", "👨🏻‍💻 Mark ZUCKERBERG"]
    
    
    var body: some View {
        ZStack{
//            Image("questionmark")
//                .resizable(capInsets: EdgeInsets(top: 10.0, leading: 38.0, bottom: 23.0, trailing: 17.0), resizingMode: .tile)
//                .scaledToFill()
//                .aspectRatio(contentMode: .fill)
//                .ignoresSafeArea()
            
            if(isKnocked == "🚪Toc! Toc! Toc!🚪"){
                Image("whoIsAtTheDoor")
                    .resizable()
                    .scaledToFill()
                    //.frame(width: 200, height: 250)
                    //.padding()
                    //.cornerRadius(25)
            } else {
                Image("welcome")
                    .resizable()
                    .scaledToFill()
                    //.frame(width: 200, height: 250)
                    //.padding()
                    //.cornerRadius(15)
            }

            
            VStack(alignment: .center, spacing: 10) {
              
                Text("Devine qui vient dîner")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding(.top, 20.0)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                Text(isKnocked)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.all, 26.0)
                    //.bold()
                    .background()
                    .cornerRadius(15)

                Spacer()
                Button {
                    if(isKnocked == "🚪Toc! Toc! Toc!🚪"){
                        isKnocked = guests.randomElement()!
                            
                    }else{
                        isKnocked = "🚪Toc! Toc! Toc!🚪"
                    }

                } label: {
                    if(isKnocked == "🚪Toc! Toc! Toc!🚪" ){
                        Text("Qui est là?").font(.title)
                    } else {
                        Text("Bienvenue\n \(isKnocked)")
                            .font(.title)
                            .multilineTextAlignment(.center)
                    }
                    
                }
             
                .padding(.all, 21.0)
                .background(.brown)
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
