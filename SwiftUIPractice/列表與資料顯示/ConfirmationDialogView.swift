//
//  ConfirmationDialogView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓使用者「選擇要做哪一件事」

import SwiftUI

struct ConfirmationDialogView: View {
    @State private var showDialog = false
    
    var body: some View {
        Button("顯示清單") {
            showDialog = true
        }
        //跳出一組操作選項，讓使用者選一個。
        .confirmationDialog("請選擇操作", isPresented: $showDialog) {
            Button("編輯") {
                print("編輯")
            }
            
            Button("刪除") {
                print("刪除")
            }
            
            Button("取消", role: .cancel) {
                print("取消")
            }
        }
    }
}

#Preview {
    ConfirmationDialogView()
}
