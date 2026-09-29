//
//  CanvasView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 在 SwiftUI 裡直接進行 2D 繪圖
//context
//   ↓
//負責「畫東西」
//
//size
//   ↓
//Canvas 自己的大小
//Canvas
//  ↓
//你自己畫
//  ↓
//圓形、線條、圖形……

import SwiftUI

struct CanvasView: View {
    var body: some View {
        Canvas { context, size in
            context.fill(Path(ellipseIn: CGRect(x: 50, y: 50, width: 100, height: 100)), with: .color(.blue))
        }
    }
}

#Preview {
    CanvasView()
}
