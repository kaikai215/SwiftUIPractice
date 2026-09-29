//
//  LayoutPriorityView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 當空間不夠時，告訴 SwiftUI 哪個 View 優先保留空間

import SwiftUI

struct LayoutPriorityView: View {
    var body: some View {
        HStack {
            Text("這是一段很長的文字")

            Text("重要")
                .layoutPriority(1)
        }
        .frame(width: 150)
    }
}

#Preview {
    LayoutPriorityView()
}
