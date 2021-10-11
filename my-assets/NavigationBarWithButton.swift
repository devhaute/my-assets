import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(
                leading: Text(title)
                    .font(.system(size: 24, weight: .bold)),
                trailing: Button(action: {
                    print("자산 추가 액션")
                }, label: {
                    Image(systemName: "plus")
                    Text("자산추가")
                        .font(.system(size: 12))
                })
                    .accentColor(.black)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black)
                    )
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearacne = UINavigationBarAppearance()
                appearacne.configureWithTransparentBackground()
                appearacne.backgroundColor = UIColor(white: 1, alpha: 0.5)
                
                UINavigationBar.appearance().standardAppearance = appearacne
                UINavigationBar.appearance().compactAppearance = appearacne
                UINavigationBar.appearance().scrollEdgeAppearance = appearacne
                
            }
    }
}

extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBarWithButton(title: title))
    }
}

struct NavigationBarWithButton_Preview: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("내 자산")
            //                .NavigationBarWithButtonStyle
        }
    }
}
