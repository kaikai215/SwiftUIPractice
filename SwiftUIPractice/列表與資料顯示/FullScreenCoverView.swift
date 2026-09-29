//
//  FullScreenCoverView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct FullScreenCoverView: View {
    @State private var showScreen = false
    
    var body: some View {
        Button("開啟全螢幕") {
            showScreen = true
        }
        //showScreen 變成 true → 顯示一個全螢幕的新畫面
        .fullScreenCover(isPresented: $showScreen) {
            FullScreenContentView()
        }
    }
}

struct FullScreenContentView: View {
    var body: some View {
        Text("這是全螢幕")
    }
}


#Preview {
    FullScreenCoverView()
}
