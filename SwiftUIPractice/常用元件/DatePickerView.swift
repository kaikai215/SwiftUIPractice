//
//  DatePickerView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓使用者選擇日期或時間

import SwiftUI

struct DatePickerView: View {
    //目前的日期與時間
    @State private var selectedDate = Date()
    var body: some View {
        VStack(spacing: 20) {
            //使用者選擇的日期會存到 selectedDate,這次只讓使用者選「日期」
            DatePicker("選擇日期",selection: $selectedDate,displayedComponents: .date)
        }
        Text(selectedDate.formatted(date: .long,time: .omitted))
    }
}

#Preview {
    DatePickerView()
}
