//
//  PreferenceKeyView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓子 View 把資訊傳給父 View

//子 View
//  │
//  │ preference
//  ↓
//PreferenceKey
//  │
//  ↓
//父 View

import SwiftUI

struct PreferenceKeyView: View {
    @State private var chidWidth: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("子 View 寬度:\(chidWidth)")
            
            Text("Hello")
                .background(
                    GeometryReader { geometry in
                        Color.clear
                            .preference(key: WidthPreferenceKey.self, value: geometry.size.width)
                        
                    }
                )
        }
        .onPreferenceChange(WidthPreferenceKey.self) { width in
            chidWidth = width
        }
    }
}

struct WidthPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    PreferenceKeyView()
}
