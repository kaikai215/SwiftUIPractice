//
//  AlertView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false
    
    var body: some View {
        Button("顯示提醒") {
            showAlert = true
        }
        //當 showAlert == true 時，顯示 Alert。
        .alert("注意", isPresented: $showAlert) {
            Button("確定") {
                print("按下確認")
            }
        } message: {
            Text("提醒訊息")
        }
    }
}

#Preview {
    AlertView()
}
