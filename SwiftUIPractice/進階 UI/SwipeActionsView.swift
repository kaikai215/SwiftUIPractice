//
//  SwipeActionsView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//  往左或右滑動 List 項目，顯示操作按鈕。

import SwiftUI

struct SwipeActionsView: View {
    var body: some View {
        List {
            Text("蘋果")
                .swipeActions {
                    Button("刪除") {
                        print("刪除蘋果")
                    }
                }
        }
    }
}

#Preview {
    SwipeActionsView()
}
