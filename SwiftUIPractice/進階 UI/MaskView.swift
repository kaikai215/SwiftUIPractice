//
//  MaskView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//background → 後面加東西
//overlay → 上面疊東西
//mask → 限制哪些地方可以顯示

import SwiftUI

struct MaskView: View {
    var body: some View {
        Text("SwiftUI")
            .font(.largeTitle)
            .foregroundStyle(.blue)
            .mask {
                Circle()
                    .frame(width: 120, height: 120)
            }
    }
}

#Preview {
    MaskView()
}
