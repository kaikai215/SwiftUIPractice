//
//  LazyHStackView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//LazyVStack → 垂直排列
//LazyHStack → 水平排列
//就是「懶加載的水平排列」 通常會搭配： ScrollView(.horizontal) 形成左右滑動的內容

import SwiftUI

struct LazyHStackView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
                ForEach(1...20, id: \.self) { number in
                    Text("項目 \(number)")
                        .frame(width: 100, height: 100)
                        .background(.gray.opacity(0.2))
                }
            }
            .padding()
        }
    }
}

#Preview {
    LazyHStackView()
}
