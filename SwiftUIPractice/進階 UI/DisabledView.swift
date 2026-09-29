//
//  DisabledView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct DisabledView: View {
    var body: some View {
        Button("不能按") {
            print("按到了")
        }
        //暫時禁止使用者操作這個 View
        .disabled(true)
    }
}

#Preview {
    DisabledView()
}
