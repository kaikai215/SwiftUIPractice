//
//  SectionView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// Section 用來把 List 裡的資料分組

import SwiftUI

struct SectionView: View {
    var body: some View {
        List {
            Section("水果") {
                Text("apple")
                Text("banana")
            }
            
            Section("飲料") {
                Text("tea")
                Text("coke")
            }
        }
    }
}

#Preview {
    SectionView()
}
