//
//  MatchedGeometryView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓兩個畫面中的相同 View，看起來像「從這裡移動到那裡」

import SwiftUI

struct MatchedGeometryView: View {
    @Namespace private var namespace
    @State private var isExpanded = false
    
    
    var body: some View {
        VStack {
            if isExpanded {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .matchedGeometryEffect(id: "box", in: namespace)
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
                    .frame(width: 80, height: 80)
                    .matchedGeometryEffect(id: "box", in: namespace)
            }
            
            Button("切換") {
                withAnimation {
                    isExpanded.toggle()
                }
            }
        }
    }
}

#Preview {
    MatchedGeometryView()
}
