//
//  LinkView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        Link("開啟Apple",destination: URL(string: "https://www.apple.com")!)
    }
}

#Preview {
    LinkView()
}
