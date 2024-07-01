//
//  ContentView.swift
//  Dicee UI
//
//  Created by Anup Saud on 2024-07-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(n: 1)
                    DiceView(n: 2)
                }.padding(.horizontal)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                }).background(Color.red)
                Spacer()
            }
        }


    }
    
}
struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
#Preview {
    ContentView()
}


