//
//  TaskModifierView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 當 View 出現在畫面上時，自動執行非同步工作。

//Task {} → 你主動建立工作
//.task {} → View 出現時，SwiftUI 幫你啟動工作

import SwiftUI

struct TaskModifierView: View {
    @State private var message = "載入中..."

    var body: some View {
        Text(message)
            .task {
                try? await Task.sleep(for: .seconds(2))
                message = "載入完成"
            }
    }
}

#Preview {
    TaskModifierView()
}
