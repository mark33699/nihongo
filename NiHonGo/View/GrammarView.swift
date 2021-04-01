//
//  GrammarView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2021/3/29.
//

import SwiftUI

struct GrammarView: NiHonGoView {
    @State var partsOfSpeechIndex = 1
    @State var listSelection = Set<String>()
    @State private var showingSheet = false

    var body: some View {

        NavigationView {
            VStack {
                Picker("", selection: $partsOfSpeechIndex, content: {
                    Text("動詞").tag(0)
                    Text("形容詞").tag(1)
                    Text("名詞").tag(2)
                }).pickerStyle(SegmentedPickerStyle())

                List(verbs, selection: $listSelection ) { word in
                    Button(word.hiraganas) {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        SheetView()
                    }
                    
                }
                .navigationBarTitle("文法")
            }
        }
    }
}

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
    }
}

struct GrammarView_Previews: PreviewProvider {
    static var previews: some View {
        GrammarView()
    }
}
