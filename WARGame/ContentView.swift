//
//  ContentView.swift
//  WarCardGame
//
//  Created by Drake Wright on 2/17/23.
//

import SwiftUI

struct ContentView: View {

    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    
    var body: some View {
        ZStack {
            Image("background")
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                   
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)

                    if (playerRandom > cpuRandom){
                        playerScore = playerScore + 1
                    } else if (playerRandom < cpuRandom) {
                        cpuScore = cpuScore + 1
                    }

                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)

                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)

                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
