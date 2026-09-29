//
//  DoCatchView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//throws→ 宣告「可能出錯」
//
//try→ 嘗試執行可能出錯的函式
//
//catch→ 出錯時處理


import SwiftUI

struct DoCatchView: View {
    @State private var message = "尚未執行"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(message)
            
            Button("執行") {
                do {
                    let result = try checkNumber()
                    message = result
                } catch {
                    message = "發生錯誤"
                }
            }
        }
        .padding()
    }
    
    func checkNumber() throws -> String {
        return "執行完成"
    }
}

#Preview {
    DoCatchView()
}
