//
//  ToggleExampleView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 用來讓使用者開啟 / 關閉某個選項

import SwiftUI

struct ToggleExampleView: View {
    @State private var isEnabled = false

    var body: some View {
        VStack(spacing: 20) {
            Toggle("通知", isOn: $isEnabled)

            Text(isEnabled ? "通知已開啟" : "通知已關閉")
        }
        .padding()
    }
}

#Preview {
    ToggleExampleView()
}
