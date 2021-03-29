//
//  GrammarView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2021/3/29.
//

import SwiftUI

struct GrammarView: NiHonGoView {
    @Binding var searchText: String
    
    var body: some View {
        
        NavigationView {
            VStack {
                SearchBar(text: $searchText).padding(8)
                
                List(NiHonSyllabary.allCases, id: \.self) { syllabary in
                    Text(syllabary.hiragana.rawValue)
                }.navigationBarTitle("請搜尋")
            }.padding(-16)
        }
    }
}

struct GrammarView_Previews: PreviewProvider {
    static var previews: some View {
        GrammarView(searchText: .constant(""))
    }
}
