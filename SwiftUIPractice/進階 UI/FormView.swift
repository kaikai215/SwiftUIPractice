//
//  FormView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 用來建立「設定頁、表單頁」這類介面

import SwiftUI

struct FormView: View {
    var body: some View {
        Form {
            Section("帳號") {
                Text("Tom")
            }

            Section("設定") {
                Toggle("通知", isOn: .constant(true))
            }
        }
    }
}

#Preview {
    FormView()
}
