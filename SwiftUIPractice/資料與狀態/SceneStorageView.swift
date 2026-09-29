//
//  SceneStorageView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 保存目前 Scene 的畫面狀態

//@AppStorage→ 使用者的設定
//@SceneStorage→ 目前畫面的狀態

//@AppStorage
//→ 是否開啟通知
//→ 使用者偏好
//
//@SceneStorage
//→ 目前選到哪一個 Tab
//→ 目前畫面停在哪個狀態

import SwiftUI

struct SceneStorageView: View {
    //這是屬於目前 Scene 的狀態，SwiftUI 會幫你保存，之後有需要恢復時可以找回來
    @SceneStorage("selectedNumber") private var selectedNumber = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("目前連線：\(selectedNumber)")
            
            Button("選擇1") {
                selectedNumber = 1
            }
            Button("選擇2") {
                selectedNumber = 2
            }
            Button("選擇3") {
                selectedNumber = 3
            }
        }
        .padding()
    }
}

#Preview {
    SceneStorageView()
}
