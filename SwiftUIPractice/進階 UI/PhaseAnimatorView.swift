//
//  PhaseAnimatorView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓 View 按照不同「階段」做動畫

import SwiftUI

struct PhaseAnimatorView: View {
    var body: some View {
        Text("Hello")
            .font(.largeTitle)
        //Phase = 動畫目前處於哪一個階段。
            .phaseAnimator([1.0, 1.5, 1.0]) { content, phase in
                content
                    .scaleEffect(phase)
            }
    }
}

#Preview {
    PhaseAnimatorView()
}
