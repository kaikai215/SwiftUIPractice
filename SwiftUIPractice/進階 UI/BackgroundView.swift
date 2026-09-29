//
//  BackgroundView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 在 View 的「後面」放另一個 View

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Text("Hello SwiftUI")
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
    }
}

#Preview {
    BackgroundView()
}
