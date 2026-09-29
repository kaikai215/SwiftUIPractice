//
//  OverlayView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct OverlayView: View {
    var body: some View {
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .overlay {
                Text("Hello")
                    .foregroundStyle(.white)
            }
    }
}

#Preview {
    OverlayView()
}
