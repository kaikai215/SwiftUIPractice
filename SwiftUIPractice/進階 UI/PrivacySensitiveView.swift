//
//  PrivacySensitiveView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 告訴 SwiftUI「這個內容屬於敏感資訊」

import SwiftUI

struct PrivacySensitiveView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("信用卡：1234")
                //這個 View 裡面的內容可能包含使用者的私人資訊
                .privacySensitive()

            Text("一般資訊")
        }
    }
}

#Preview {
    PrivacySensitiveView()
}
