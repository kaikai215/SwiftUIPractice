//
//  BindingView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 把父 View 的狀態交給子 View 使用、修改。

//@State
//→ 我的資料
//
//@Binding
//→ 別人的資料，我可以連過去修改
//
//$
//→ 把 State 的 Binding 傳出去

import SwiftUI

// 父 View
struct BindingView: View {
    //isOn 是父 View 自己管理的資料。
    @State private var isOn = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(isOn ? "開啟" : "關閉")
            
            //傳給子 View 前面的 $ 表示：把 isOn 的 Binding 傳出去。
            ToggleView(isOn: $isOn)
        }
        .padding()
    }
}

// 子 View
struct ToggleView: View {
    //我不擁有 isOn，我是連接到父 View 的 isOn
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle("開關", isOn: $isOn)
    }
}

#Preview {
    BindingView()
}
