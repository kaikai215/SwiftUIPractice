//
//  MainActorView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// @MainActor 是 Swift 的一個 Actor，專門用來隔離需要在 Main Actor 上執行的程式碼。

import SwiftUI
import Observation

@MainActor // 讓這個 ViewModel 的程式碼隔離在 Main Actor
@Observable //讓 SwiftUI 可以觀察資料變化
class MessageViewModel {
    var message = "尚未載入"

    func loadMessage() {
        message = "載入完成"
    }
}

struct MainActorView: View {
    @State private var viewModel = MessageViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.message)

            Button("載入") {
                viewModel.loadMessage()
            }
        }
        .padding()
    }
}

#Preview {
    MainActorView()
}
