//
//  NiHonGoView.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2021/3/29.
//

import SwiftUI

protocol NiHonGoView: View {}
extension NiHonGoView {
    
    var defaultBody: some View {
        Text("Hello, NiHonGo!")
    }
}
