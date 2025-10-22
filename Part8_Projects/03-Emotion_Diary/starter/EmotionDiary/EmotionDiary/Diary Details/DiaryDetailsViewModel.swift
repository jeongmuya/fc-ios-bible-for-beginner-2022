//
//  DiaryDetailsViewModel.swift
//  EmotionDiary
//
//  Created by YangJeongMu on 10/22/25.
//

import Foundation
import SwiftUI

final class DiaryDetailsViewModel: ObservableObject {
    
    @Published var diaryies: Binding<[MoodDiary]>
    @Published var diary: MoodDiary
    
    
    init(diaries: Binding<[MoodDiary]>, diary: MoodDiary) {
        self.diaryies = diaries
        self.diary = diary
    }
    
}
