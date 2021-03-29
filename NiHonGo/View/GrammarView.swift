//
//  GrammarView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2021/3/29.
//

import SwiftUI

struct GrammarView: NiHonGoView {
    
    @State var title: String = ""
    
    init() {
        title = "我是\(type(of: self))"
    }
    
    var body: some View {
        //Text("我是\(type(of: self))") //報錯
        //Text(title) //init會沒辦法賦值= =....
        Text("GrammarView")
    }
}

struct GrammarView_Previews: PreviewProvider {
    static var previews: some View {
        GrammarView()
    }
}
