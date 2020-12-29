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
    
    let fifty = [
        NipponWord(jp: "あ", en: "a"),
        NipponWord(jp: "い", en: "i"),
        NipponWord(jp: "う", en: "u"),
        NipponWord(jp: "え", en: "e"),
        NipponWord(jp: "お", en: "o")
    ]
    
    var body: some View {
        Text(fifty.first!.jp)
            .font(.system(size: 100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
