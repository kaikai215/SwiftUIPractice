//
//  ShareLinkView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 呼叫系統的分享功能

import SwiftUI

struct ShareLinkView: View {
    var body: some View {
        ShareLink(item: "Hello SwiftUI")
    }
}

#Preview {
    ShareLinkView()
}
