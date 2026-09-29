//
//  StepperView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓使用者用 + / − 調整數值

import SwiftUI

struct StepperView: View {
    @State private var quantity = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("數量：\(quantity)")
            
            Stepper("調整數量",value: $quantity, in: 1...10)
        }
        .padding()
    }
}

#Preview {
    StepperView()
}
