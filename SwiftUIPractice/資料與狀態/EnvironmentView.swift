//
//  EnvironmentView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 從 SwiftUI 的環境取得資料或功能

import SwiftUI

struct EnvironmentView: View {
    //從 SwiftUI 的 Environment 裡拿出目前的「顏色模式」。
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        VStack(spacing: 20) {
            Text("目前模式")
            
            Text(colorScheme == .dark ? "深色模式" : "淺色模式")
                .font(.title)
        }
    }
}

#Preview {
    EnvironmentView()
}
