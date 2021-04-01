//
//  ContentView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2020/12/29.
//

import SwiftUI

struct ContentView: View {

    @Binding var tabViewIndex: Int
    
    var body: some View {
        TabView(selection: $tabViewIndex) {
            FiftyView()
                .tabItem {
                    Text("五十音")
                    Image(systemName: "table")
                }.tag(0)
            
            GrammarView(searchText: .constant(""))
                .tabItem {
                    Text("文法機")
                    Image(systemName: "personalhotspot")
                }.tag(1)
            
            QuizView()
                .tabItem {
                    Text("小測驗")
                    Image(systemName: "square.and.pencil")
                }.tag(2)
        }
        //加了這句就不能切換了...而且印出來的數字也不對= =
//        .onTapGesture {
//            print(self.tabViewIndex)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewIndex: .constant(0))
            .preferredColorScheme(.dark)
    }
}
