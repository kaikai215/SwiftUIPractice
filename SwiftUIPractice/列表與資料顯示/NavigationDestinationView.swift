//
//  NavigationDestinationView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//NavigationLink
//    ↓
//傳出 "蘋果"
//    ↓
//navigationDestination
//    ↓
//顯示下一個畫面

import SwiftUI

struct NavigationDestinationView: View {
    var body: some View {
        NavigationStack {
            List {
                //我要導航，並且帶著 蘋果 這個值
                NavigationLink("蘋果", value: "蘋果")
                NavigationLink("香蕉", value: "香蕉")
            }
            //當 NavigationLink 傳來某種資料，就決定要顯示哪個畫面
            .navigationDestination(for: String.self) { fruit in
                Text("你選擇了：\(fruit)")
            }
        }

    }
}

#Preview {
    NavigationDestinationView()
}
