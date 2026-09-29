//
//  InsettableShapeView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct MyRectangle: InsettableShape {
    var insetAmount: CGFloat = 0

    func path(in rect: CGRect) -> Path {
        Path(
            //可以讓形狀往內縮
            roundedRect: rect.insetBy(
                dx: insetAmount,
                dy: insetAmount
            ),
            cornerRadius: 20
        )
    }

    func inset(by amount: CGFloat) -> MyRectangle {
        var shape = self
        shape.insetAmount += amount
        return shape
    }
}

struct InsettableShapeView: View {
    var body: some View {
        MyRectangle()
            .stroke(.blue, lineWidth: 10)
            .frame(width: 200, height: 120)
    }
}

#Preview {
    InsettableShapeView()
}
