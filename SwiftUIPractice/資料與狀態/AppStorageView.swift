//
//  AppStorageView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct AppStorageView: View {
    //像 @State 一樣使用資料，但 SwiftUI 會幫你把它保存起來。
    @AppStorage("username") private var username = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("請輸入姓名", text: $username)
                .textFieldStyle(.roundedBorder)
            
            Text("你好，\(username)")
        }
        .padding()
    }
}

#Preview {
    AppStorageView()
}
