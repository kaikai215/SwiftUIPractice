//
//  ShapeView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(
            x: rect.midX,
            y: rect.minY
        ))

        path.addLine(to: CGPoint(
            x: rect.maxX,
            y: rect.maxY
        ))

        path.addLine(to: CGPoint(
            x: rect.minX,
            y: rect.maxY
        ))

        path.closeSubpath()

        return path
    }
}

struct ShapeView: View {
    var body: some View {
        Triangle()
            .fill(.blue)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    ShapeView()
}
