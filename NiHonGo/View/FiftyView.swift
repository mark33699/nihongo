//
//  FiftyView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2021/3/29.
//

import SwiftUI

struct FiftyView: NiHonGoView {
    let colors: [Color] = [.red, .green, .yellow, .blue, .orange]
    let row: [GridItem] =
        Array(repeating: .init(.flexible(), alignment: .center), count: 5)
    var fifty: [NiHonSyllabary?] {
        var array: [NiHonSyllabary?] = Array(NiHonSyllabary.allCases[0...40])
        array.append(nil)
        array.append(NiHonSyllabary.allCases[41]) //yu
        array.append(nil)
        array.append(NiHonSyllabary.allCases[42]) //yo
        array.append(NiHonSyllabary.allCases[43]) //wa
        array.append(nil)
        array.append(nil)
        array.append(nil)
        array.append(NiHonSyllabary.allCases[44]) //wo
        array.append(NiHonSyllabary.allCases[45]) //n
        return array
    }
    
    var body: some View {
        
        let sv = ScrollView {
            LazyVGrid(columns: row, //橫的明明就是Row
                      spacing: 20, //垂直間隔
                      pinnedViews: [.sectionHeaders]) {
                
                Section(header: getSectionHeader("清音")) {
                    ForEach(0...fifty.count-1, id: \.self) { index in
                        getGridItem(string: fifty[index]?.hiragana.rawValue ?? "",
                                    color: colors[index % colors.count])
                    }
                }
                
                Section(header: getSectionHeader("濁音/半濁音")) {
                    ForEach(51...NiHonSyllabary.allCases.count-1, id: \.self) { index in
                        getGridItem(string: NiHonSyllabary.allCases[index].hiragana.rawValue,
                                    color: colors[((index-1) % colors.count)])
                    }
                }
            }
        }.navigationTitle("50")
        
        NavigationView {
            sv
        }
    }
    
    @ViewBuilder func getSectionHeader(_ titile: String) -> some View {
        Text(titile)
            .frame(width: 999, height: 40) //.infinity會報錯...
            .background(Color.white)
    }
    
    @ViewBuilder func getGridItem(string: String, color: Color) -> some View {
        Text(string)
            .multilineTextAlignment(.center)
            .frame(width: 50, height: 50) //馬的試了半天還是無法自動平均分配
            .background(color)
            .cornerRadius(10)
    }
}

struct FiftyView_Previews: PreviewProvider {
    static var previews: some View {
        FiftyView()
    }
}
