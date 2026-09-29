//
//  GridView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 可以讓內容用「表格／網格」方式排列

import SwiftUI

struct GridView: View {
    var body: some View {
        //整個網格
        Grid {
            //網格中的「一列」
            GridRow {
                Text("A")
                Text("B")
                Text("C")
            }
            
            GridRow {
                Text("D")
                Text("E")
                Text("F")
            }
        }
    }
}

#Preview {
    GridView()
}
