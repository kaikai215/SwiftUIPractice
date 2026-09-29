//
//  GaugeView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 表示「目前數值 / 整個範圍」

import SwiftUI

struct GaugeView: View {
    var body: some View {
        Gauge(value: 20, in: 0...100) {
            Text("電量")
        }
    }
}

#Preview {
    GaugeView()
}
