//
//  ScrollViewReaderView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 可以控制 ScrollView 滾到哪一個位置

import SwiftUI

struct ScrollViewReaderView: View {
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(1...30, id: \.self) { number in
                        //是在幫每個項目設定 ID
                        Text("項目 \(number)")
                            .id(number)
                    }
                }
                .padding()
            }
            
            Button("跳到第30項") {
                withAnimation {
                    //把 ScrollView 滾到 ID 是 30 的 View
                    proxy.scrollTo(30)
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderView()
}
