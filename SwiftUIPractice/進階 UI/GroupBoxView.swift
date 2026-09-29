//
//  GroupBoxView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 把相關內容放進一個有視覺區隔的區塊

//Group → 只是把 View 分組
//GroupBox → 真的會有視覺上的區塊

import SwiftUI

struct GroupBoxView: View {
    var body: some View {
        GroupBox("帳號") {
            Text("使用者名稱: Tom")
        }
        .padding()
    }
}

#Preview {
    GroupBoxView()
}
