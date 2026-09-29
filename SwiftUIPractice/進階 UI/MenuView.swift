//
//  MenuView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// Menu = 一個可以裝很多操作的按鈕

import SwiftUI

struct MenuView: View {
    var body: some View {
        Menu("操作") {
            Button("編輯") {
                print("編輯")
            }
            Button("分享") {
                print("分享")
            }
            Button("刪除") {
                print("刪除")
            }
        }
    }
}

#Preview {
    MenuView()
}
