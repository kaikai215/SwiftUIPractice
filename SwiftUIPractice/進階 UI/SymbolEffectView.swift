//
//  SymbolEffectView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct SymbolEffectView: View {
    @State private var isActive = false
    
    var body: some View {
        Button {
            isActive.toggle()
        } label: {
            Image(systemName: "heart")
                .font(.largeTitle)
                //當isActive的值發生變化時，SF Symbol 就會播放 .bounce 動畫。
                .symbolEffect(.bounce, value: isActive)
        }
    }
}

#Preview {
    SymbolEffectView()
}
