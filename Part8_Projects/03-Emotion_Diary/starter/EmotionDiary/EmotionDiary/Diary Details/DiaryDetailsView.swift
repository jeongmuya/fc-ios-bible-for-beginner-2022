import SwiftUI

struct DiaryDetailsView: View {
    
    @StateObject var vm: DiaryDetailsViewModel
    @Environment(\.colorScheme) var colorScheme
    
    // ❌ var diary: MoodDiary 제거!
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 50) {
                    
                    Text(formattedDate(dateString: vm.diary.date))
                        .font(.system(size: 30, weight: .bold))
                    
                    Image(systemName: vm.diary.mood.imageName)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(color: .black, radius: 10, x: 0, y: 0)
                        .frame(height: 80)
                    
                    Text(vm.diary.text)
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                }
                .frame(maxWidth: .infinity)
            }
            
            Spacer()
            
            HStack {
                Button {
                    print("delete Button Tapped")
                    vm.delete()
                } label: {
                    Image(systemName: "trash")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
                .foregroundColor(colorScheme == .dark ? .white : .black)
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
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        guard let date = formatter.date(from: dateString) else {
            return dateString
        }

        formatter.dateFormat = "EEE, MMM d, yyyy"
        return formatter.string(from: date)
    }
}

struct DiaryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = DiaryDetailsViewModel(diaries: .constant(MoodDiary.list), diary: MoodDiary.list.first!)
        DiaryDetailsView(vm: vm)  // ✅ diary 매개변수 제거
    }
}
