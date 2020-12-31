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
    @State var input = ""
    
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
                .frame(height: 100)
                .font(.system(size: 100))
                .background(Color.red)
            
            Spacer().frame(height: 100)
            
            Button(action: {
                index += 1
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
            })
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            
            Spacer().frame(height: 100)
            
            TextField("", text: $input)
                .frame(height: 100)
                .foregroundColor(.green)
                .background(Color.white)
            
        }.frame(width: 100, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
