//
//  RedactedView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 把內容暫時變成「骨架 / 佔位」效果，常用在資料載入中

import SwiftUI

struct RedactedView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("使用者名稱")
            Text("這是一段很長的文章內容")
        }
        .redacted(reason: .placeholder)
    }
}

#Preview {
    RedactedView()
}
