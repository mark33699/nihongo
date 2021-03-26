//
//  ContentView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2020/12/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    @State var input = ""
    @State var presentingModal = false
    @State var presentingFullScreen = false //不拆兩個變數的話, 會變成都是modal
    
    init() {
        UINavigationBar.appearance().backgroundColor = .systemPink
        
        for (index, word) in NiHonSyllabary.allCases.enumerated() {
            let idx = index+1
            print("\(idx).\(word.rawValue) = \(word.hiragana)_\(word.column)_\(word.row)")
            if idx % 5 == 0 {
                print("==================")
            }
        }
    }
    
    var body: some View {
        
        let modalBtn = Button("modal") {
            presentingModal = true
        }.sheet(isPresented: $presentingModal, content: {
            ListView()
        })
        
        VStack{
            Text(NiHonSyllabary.allCases[index].hiragana.rawValue)
                .frame(height: 100)
                .font(.system(size: 100))
                .background(Color.red)

            Spacer().frame(height: 100)
            
            Button(action: {
                if index < NiHonSyllabary.allCases.count - 1 {
                    index += 1
                }
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
            })
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            
            Spacer().frame(height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
