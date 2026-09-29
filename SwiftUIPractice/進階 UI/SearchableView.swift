//
//  SearchableView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct SearchableView: View {
    @State private var searchText = ""
    
    
    var body: some View {
        NavigationStack {
            List {
                Text("蘋果")
                Text("香蕉")
                Text("橘子")
            }
            //會在 Navigation Bar 的位置提供搜尋介面
            .searchable(text: $searchText)
            .navigationTitle("水果")
        }
    }
}

#Preview {
    SearchableView()
}
