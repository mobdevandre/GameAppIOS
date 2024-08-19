//
//  RPSGame.swift
//  GameAppIOS
//
//  Created by Andre Lemos on 19/08/24.
//

import SwiftUI

struct RPSGame: View {
    @State var resultText: String = ""
    @State var imagePC: String = "questionMark"
    
    func playPC(sendPress: Int) {
        let result = Int.random(in: 1...3)
        if result == 1 {
            imagePC = "paper"
        } else if result == 2 {
            imagePC = "rock"
        } else {
            imagePC = "scissors"
        }
        // 1 - Papel 2 - Pedra 3 - Tesoura
        if result == sendPress {
            print("Empatou")
            resultText = "Empatou"
        } else if result == 1 && sendPress == 3 {
            print("Ganhou")
            resultText = "Ganhou"
        } else if result == 2 && sendPress == 1 {
            print("Ganhou")
            resultText = "Ganhou"
        } else if result == 3 && sendPress == 2 {
            print("Ganhou")
            resultText = "Ganhou"
        } else {
            print("Perdeu")
            resultText = "Perdeu"
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            VStack{
                Button {
                    playPC(sendPress: 1)
                } label: {
                    Image("paper")
                }
                Button {
                    playPC(sendPress: 2)
                } label: {
                    Image("rock")
                }
                Button {
                    playPC(sendPress: 3)
                } label: {
                    Image("scissors")
                }
                Text("PC:")
                Image(imagePC)
                Text("RESULT:")
                Text(resultText)
            }
        }
    }
}

#Preview {
    RPSGame()
}
