//
//  GroupView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        VStack {
            //單純就是把兩個 Text 歸在同一組。
            Group {
                Text("第一行")
                Text("第二行")
            }
        }
    }
}

#Preview {
    GroupView()
}
