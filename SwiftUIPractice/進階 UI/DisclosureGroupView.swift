//
//  DisclosureGroupView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 可以展開 / 收合的內容區塊

import SwiftUI

struct DisclosureGroupView: View {
    var body: some View {
        DisclosureGroup("詳細資料") {
            Text("詳細頁")
        }
        .padding()
    }
}

#Preview {
    DisclosureGroupView()
}
