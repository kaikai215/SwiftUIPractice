//
//  GeometryReaderExampleView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 取得目前 View 的大小與位置資訊

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 20) {
                Text("寬度：\(geometry.size.width)")
                Text("高度：\(geometry.size.height)")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    GeometryReaderView()
}
