//
//  SliderView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓使用者在一個範圍內拖曳選擇數值

import SwiftUI

struct SliderView: View {
    @State private var volme = 50.0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("音量:\(Int(volme))")
            
            //Slider 的目前數值綁定到 volume，可以選擇的範圍是 0 到 100
            Slider(value: $volme, in: 0...100)
        }
        .padding()
    }
}

#Preview {
    SliderView()
}
