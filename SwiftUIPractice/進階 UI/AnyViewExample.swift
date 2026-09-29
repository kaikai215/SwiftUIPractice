//
//  AnyViewExample.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//Text
// ↓
//AnyView
// ↓
//「我現在不在乎你具體是哪一種 View」

import SwiftUI

struct AnyViewExample: View {
    var body: some View {
        //把一個具體的 View 型別，包裝成「任何 View」
        AnyView(
            Text("Hello SwiftUI")
        )
    }
}

#Preview {
    AnyViewExample()
}
