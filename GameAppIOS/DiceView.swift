//
//  DiceView.swift
//  GameAppIOS
//
//  Created by Andre Lemos on 08/07/24.
//

import SwiftUI

struct DiceView: View {
    @State private var dieOne = 0
    @State private var dieTwo = 0

    var body: some View {
        VStack(spacing: 20) {
            if dieOne != 0 {
                Image(systemName: "die.face.\(dieOne).fill")
                    .font(.system(size: 50))
            } else {
                Image("questionMark")
            }
            Text(dieOne.description)
            if dieTwo != 0 {
                Image(systemName: "die.face.\(dieTwo).fill")
                    .font(.system(size: 50))
            } else {
                Image("questionMark")
            }
            Text(dieTwo.description)

            Button("Rolar Dados") {
                dieOne = Int.random(in: 1...6)
                dieTwo = Int.random(in: 1...6)
            }
        }
    }
}

#Preview {
    DiceView()
}
