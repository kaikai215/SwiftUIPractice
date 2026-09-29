//
//  ClipShapeView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 把 View 裁切成指定的形狀

//mask
// ↓
//用另一個 View 決定可見範圍
//
//clipShape
// ↓
//直接指定裁切形狀

import SwiftUI

struct ClipShapeView: View {
    var body: some View {
        Image(systemName: "person.crop.circle.fill")
            .font(.system(size: 120))
            .foregroundStyle(.blue)
            .clipShape(Circle())
    }
}

#Preview {
    ClipShapeView()
}
