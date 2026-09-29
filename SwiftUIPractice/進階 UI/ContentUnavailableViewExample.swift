//
//  ContentUnavailableViewExample.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//這個在實際 App 很常用，專門拿來表示： 目前沒有內容可以顯示。

import SwiftUI

struct ContentUnavailableViewExample: View {
    var body: some View {
        ContentUnavailableView("沒有資料",systemImage: "tray",description: Text("目前沒有任何資料"))
    }
}

#Preview {
    ContentUnavailableViewExample()
}
