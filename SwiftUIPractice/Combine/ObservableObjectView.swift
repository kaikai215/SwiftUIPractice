//
//  ObservableObjectView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// @StateObject = SwiftUI 負責持有這個 ObservableObject
// @StateObject = 讓 View 持有並觀察 ObservableObject
//UserData
//   │
//   ├── ObservableObject
//   │
//   └── @Published name
//             ↓
//       @StateObject
//             ↓
//          SwiftUI
//             ↓
//           UI 更新

import SwiftUI
import Combine

class UserData2: ObservableObject {
    @Published var name = "Tom"
}

struct ObservableObjectView: View {
    @StateObject private var user = UserData2()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(user.name)
            
            Button("修改") {
                user.name = "Jerry"
            }
        }
    }
}

#Preview {
    ObservableObjectView()
}
