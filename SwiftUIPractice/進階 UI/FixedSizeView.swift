//
//  FixedSizeView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓 View 不要被父容器壓縮
//fixedSize() = 保持 View 的理想尺寸，不要被父容器壓縮

import SwiftUI

struct FixedSizeView: View {
    var body: some View {
        Text("這是一段很長很長很長的文字")
            .frame(width: 100)
            //不要因為父容器只有 100，就把我的內容壓縮掉
            .fixedSize()
            .border(.blue)
    }
}

#Preview {
    FixedSizeView()
}
