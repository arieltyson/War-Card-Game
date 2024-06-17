//
//  ContentView.swift
//  War Card Game
//
//  Created by Ariel Tyson on 16/6/24.
//

import SwiftUI

struct ContentView: View {
    
    // Define variables to store key values of game
    @State var playerCard = "card13"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-wood-grain")
                .resizable()
                .ignoresSafeArea()
            
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
                    deal()
                } label: {
                    Image("button")
                }
                .foregroundColor(.white)
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
        
                    VStack {
                        Text(String("CPU"))
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        // Randomize player cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize CPU cards
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue {
            // Increment player's score
            playerScore += 1
        }
        // Update CPU's score
        else if cpuCardValue > playerCardValue{
            cpuScore += 1
        }
        else {
            // Update both player and CPU's score
            playerScore += 1
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
