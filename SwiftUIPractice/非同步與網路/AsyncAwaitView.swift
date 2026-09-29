//
//  AsyncAwaitView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct AsyncAwaitView: View {
    @State private var message = "等待中..."
    
    var body: some View {
        VStack(spacing: 20) {
            Text(message)
            
            Button("開始") {
                Task {
                    //等待這個非同步工作完成，再拿結果
                    let result = await loadMessage()
                    message = result
                }
            }
        }
        .padding()
    }
    
    //這個函式是「非同步」的，可以執行需要等待的工作
    func loadMessage() async -> String {
        "資料載入完成"
    }
}

#Preview {
    AsyncAwaitView()
}
