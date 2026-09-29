//
//  PathView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// Path = 描述「要畫出什麼形狀」的路徑。
//Canvas 是「畫布」，Path 是「你要畫的形狀」。

import SwiftUI

struct PathView: View {
    var body: some View {
        Path { path in
            //移動到起點
            path.move(to: CGPoint(x: 50, y: 50))
            //從目前位置畫一條線到指定位置
            path.addLine(to: CGPoint(x: 150, y: 50))
            path.addLine(to: CGPoint(x:100, y: 100))
            //把路徑封閉起來
            path.closeSubpath()
        }
        //把這個 Path 填滿成藍色
        .fill(.blue)
        .frame(width: 200, height: 200)
    }
}

#Preview {
    PathView()
}
