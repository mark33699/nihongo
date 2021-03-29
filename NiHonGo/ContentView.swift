//
//  ContentView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2020/12/29.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        
        for (index, word) in NiHonSyllabary.allCases.enumerated() {
            let idx = index+1
            print("\(idx).\(word.rawValue) = \(word.hiragana)_\(word.column)_\(word.row)")
            if idx % 5 == 0 {
                print("==================")
            }
        }
    }
    
    var body: some View {
        TabView() {
//            FiftyView()
//                .tabItem {
//                    Text("五十音")
//                    Image(systemName: "icloud")
//                }
            
            GrammarView(searchText: .constant(""))
                .tabItem {
                    Text("文法機")
                    Image(systemName: "icloud")
                }
            
            QuizView()
                .tabItem {
                    Text("小測驗")
                    Image(systemName: "icloud")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
