//
//  ListView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2020/12/31.
//

import SwiftUI

struct ListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        let backBtn = Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.left")
        })
        
        NavigationView {
            Text("Good Bye, TableView 😭")
                .navigationBarTitle("ㄤㄤ", displayMode: .large)
                .navigationBarItems(leading: backBtn)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .preferredColorScheme(.dark)
    }
}
