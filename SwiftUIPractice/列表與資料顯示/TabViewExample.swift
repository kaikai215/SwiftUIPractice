//
//  TabViewExample.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
            Text("首頁")
                .tabItem {
                    Label("首頁", systemImage: "house")
                }
            Text("設定")
                .tabItem {
                    Label("設定", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TabViewExample()
}
