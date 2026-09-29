//
//  SafeAreaInsetView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// safeAreaInset = 在安全區域邊緣額外放一個 View。

import SwiftUI

struct SafeAreaInsetView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(1...20, id: \.self) { number in
                    Text("項目 \(number)")
                }
            }
            .padding()
        }
        .safeAreaInset(edge: .bottom) {
            Button("新增") {
                print("新增")
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    SafeAreaInsetView()
}
