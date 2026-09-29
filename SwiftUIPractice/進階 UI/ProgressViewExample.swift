//
//  ProgressViewExample.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 告訴使用者「現在正在處理中」

import SwiftUI

struct ProgressViewExample: View {
    var body: some View {
        ProgressView("載入中...")
    }
}

#Preview {
    ProgressViewExample()
}
