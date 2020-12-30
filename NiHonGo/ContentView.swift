//
//  ContentView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2020/12/29.
//

import SwiftUI

struct NipponWord {
    let jp: String
    let en: String
}

struct ContentView: View {
    
    @State var index = 0
    
    let fifty = [
        NipponWord(jp: "あ", en: "a"),
        NipponWord(jp: "い", en: "i"),
        NipponWord(jp: "う", en: "u"),
        NipponWord(jp: "え", en: "e"),
        NipponWord(jp: "お", en: "o")
    ]
    
    var body: some View {
        VStack{
            Text(fifty[index].jp)
                .font(.system(size: 100))
                .background(Color.red)
                .padding()
            
            Button(action: {
                index += 1
                
            }, label: {
                Text("+")
                    .font(.system(size: 100))
            })
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color.white)
            .clipShape(Circle())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
