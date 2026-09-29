//
//  ScrollViewView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓內容可以滑動


//List
//→ 本身就是列表元件
//→ 有列表的系統樣式
//
//ScrollView
//→ 本身只負責「可以滑動」
//→ 裡面可以放 VStack、HStack、LazyVStack...

import SwiftUI

struct ScrollViewView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(1...20, id: \.self) { number in
                    Text("項目\(number)")
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
    ScrollViewView()
}
