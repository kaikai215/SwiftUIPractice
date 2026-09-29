//
//  ScrollTransitionView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// View 隨著 ScrollView 滾動位置改變外觀

import SwiftUI

struct ScrollTransitionView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                ForEach(1...10, id: \.self) { number in
                    Text("項目 \(number)")
                        .font(.largeTitle)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.3)
                        }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrollTransitionView()
}
