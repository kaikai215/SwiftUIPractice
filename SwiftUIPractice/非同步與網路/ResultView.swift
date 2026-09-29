//
//  ResultView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct ResultError: Error {
    let message: String
}

struct ResultView: View {
    @State private var message = "尚未執行"

    var body: some View {
        VStack(spacing: 20) {
            Text(message)

            Button("執行") {
                let result = checkNumber()

                switch result {
                case .success(let value):
                    message = value

                case .failure(let error):
                    message = error.message
                }
            }
        }
        .padding()
    }
    
    //Result<成功的型別, 錯誤的型別>
    func checkNumber() -> Result<String, ResultError> {
        return .success("執行成功")
    }
}

#Preview {
    ResultView()
}
