//
//  LabelView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// Label = 文字 + SF Symbol 圖示

import SwiftUI

struct LabelView: View {
    var body: some View {
        Label("首頁", systemImage: "house")
    }
}

#Preview {
    LabelView()
}
