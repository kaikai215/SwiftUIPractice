//
//  ColorPickerView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓使用者選擇顏色

import SwiftUI

struct ColorPickerView: View {
    @State private var color = Color.blue
    
    var body: some View {
        ColorPicker("選擇顏色", selection: $color)
    }
}

#Preview {
    ColorPickerView()
}
