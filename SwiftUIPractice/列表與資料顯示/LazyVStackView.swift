//
//  LazyVStackView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 是可以垂直排列，而且會「需要時才建立」內容的容器

//VStack → 一開始就建立裡面的 View
//
//LazyVStack → 需要顯示時才建立

import SwiftUI

struct LazyVStackView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(1...50, id: \.self) { number in
                    Text("項目 \(number)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.gray.opacity(0.2))
                }
            }
            .padding()
        }
    }
}

#Preview {
    LazyVStackView()
}
