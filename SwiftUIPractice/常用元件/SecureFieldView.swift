//
//  SecureFieldView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 是用來輸入密碼等敏感文字的輸入框

import SwiftUI

struct SecureFieldView: View {
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            SecureField("請輸入密碼", text: $password)
                .textFieldStyle(.roundedBorder)
            
            Text("密碼長度：\(password.count)")
        }
        .padding()
    }
}

#Preview {
    SecureFieldView()
}
