//
//  BindableView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓 @Observable 物件可以產生 Binding，給 TextField、Toggle 等元件使用。

import SwiftUI
import Observation

@Observable
class User {
    var name = ""
}

struct BindableView: View {
    @State private var user = User()
    
    var body: some View {
        //讓 user 可以產生 Binding
        @Bindable var user = user
        
        VStack(spacing: 20) {
            //就是把 user.name 的 Binding 給 TextField
            TextField("請輸入名字", text: $user.name)
            
            Text("你好，\(user.name)")
        }
        .padding()
    }
}

#Preview {
    BindableView()
}
