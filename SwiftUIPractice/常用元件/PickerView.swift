//
//  PickerView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓使用者從多個選項中選一個

import SwiftUI

struct PickerView: View {
    @State private var selectedColor = "紅色"
    
    let colors = ["紅色","藍色","綠色"]
    
    var body: some View {
        VStack(spacing: 20) {
            //Picker 目前選中的值，放在 selectedColor 裡。
            Picker("顏色", selection: $selectedColor) {
                ForEach(colors, id: \.self) { color in
                    Text(color)
                    //這個選項被選中的時候，selectedColor 要變成什麼值。
                        .tag(color)
                }
            }
            Text("你選擇了：\(selectedColor)")
        }
        .padding()
    }
}

#Preview {
    PickerView()
}
