//
//  UnredactedView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 在已經被 redacted 的區域裡，指定某個 View 保持正常顯示

import SwiftUI

struct UnredactedView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("載入中...")
                .unredacted()

            Text("這段內容會被遮罩")
        }
        .redacted(reason: .placeholder)
    }
}

#Preview {
    UnredactedView()
}
