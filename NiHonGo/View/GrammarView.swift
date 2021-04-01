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
            List(verbs) { word in
                Text(word.hiraganas)
            }.navigationBarTitle("文法")
        }
    }
}

struct GrammarView_Previews: PreviewProvider {
    static var previews: some View {
        GrammarView(searchText: .constant(""))
    }
}
