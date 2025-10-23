//
//  DiaryDetailsViewModel.swift
//  EmotionDiary
//
//  Created by YangJeongMu on 10/22/25.
//

import Foundation
import SwiftUI

final class DiaryDetailsViewModel: ObservableObject {
    
    @Published var diaries: Binding<[MoodDiary]>  // ✅ 'diaries'로 수정
    @Published var diary: MoodDiary
    
    
    init(diaries: Binding<[MoodDiary]>, diary: MoodDiary) {
        self.diaries = diaries  // ✅ 'diaries'로 수정
        self.diary = diary
    }
    
    func delete() {
        diaries.wrappedValue = diaries.wrappedValue.filter { $0.id != diary.id }  // ✅ != 로 수정
    }
}
