//
//  ContainerRelativeFrameView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓 View 根據「外層容器」的尺寸來決定自己的大小

import SwiftUI

struct ContainerRelativeFrameView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(1...5, id: \.self) { number in
                    Text("卡片 \(number)")
                        .frame(maxHeight: .infinity)
                        .containerRelativeFrame(.horizontal)
                        .background(.blue)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ContainerRelativeFrameView()
}
