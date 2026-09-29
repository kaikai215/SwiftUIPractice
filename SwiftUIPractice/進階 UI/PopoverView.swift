//
//  PopoverView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//.sheet() → modal presentation，常見是從下方出現
//.popover() → popover presentation，會依裝置和尺寸環境決定呈現方式

import SwiftUI

struct PopoverView: View {
    @State private var showPopover = false
    var body: some View {
        Button("顯示Popover") {
            showPopover = true
        }
        .popover(isPresented: $showPopover) {
            Text("這是Popover")
                .padding()
        }
    }
}

#Preview {
    PopoverView()
}
