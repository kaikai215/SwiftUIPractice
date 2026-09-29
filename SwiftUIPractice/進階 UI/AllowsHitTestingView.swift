//
//  AllowsHitTestingView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓這個 View 不參與點擊 / 手勢命中

import SwiftUI

struct AllowsHitTestingView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("按我") {
                print("按到了")
            }

            Text("這個文字不能被點擊")
                .allowsHitTesting(false)
        }
        .padding()
    }
}

#Preview {
    AllowsHitTestingView()
}
