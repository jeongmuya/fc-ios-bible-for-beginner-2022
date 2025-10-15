import SwiftUI

struct DiaryDetailsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var diary: MoodDiary
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 50) {
                    
                    Text(formattedDate(dateString: diary.date))
                        .font(.system(size: 30, weight: .bold))
                    
                    Image(systemName: diary.mood.imageName)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(color: .black, radius: 10, x: 0, y: 0)
                        .frame(height: 80)
                    
                    Text(diary.text)
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                }
            }
            
            Spacer()
            
            HStack {
                Button {
                    print("delete Button Tapped")
                } label: {
                    Image(systemName: "trash")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
                .foregroundColor(colorScheme == .dark ? .white : .black) // 점(.) 추가
                .padding()
                
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

extension DiaryDetailsView {
    private func formattedDate(dateString: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss" // hh -> HH (24시간 형식)
        
        guard let date = formatter.date(from: dateString) else {
            return dateString // 파싱 실패시 원본 반환
        }

        formatter.dateFormat = "EEE, MMM d, yyyy"
        return formatter.string(from: date)
    }
}

struct DiaryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        // 안전한 프리뷰 데이터 사용
        if let sampleDiary = MoodDiary.list.first {
            DiaryDetailsView(diary: sampleDiary)
        } else {
            Text("No sample data available")
        }
    }
}
