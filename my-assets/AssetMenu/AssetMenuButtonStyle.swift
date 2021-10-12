import SwiftUI

struct AssetMenuButtonStyle: ButtonStyle {
    let menu: AssetMenu
    
    func makeBody(configuration: Configuration) -> some View {
        return VStack {
            Image(systemName: menu.systemImageName)
                .frame(width: 30, height: 30)
                .padding([.leading, .trailing], 10)
            Text(menu.title)
                .font(.system(size: 12, weight: .bold))
        }
        .foregroundColor(.blue)
        .padding(5)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(8)
    }
}


struct AssetMenuButtonStyle_Preview: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 0) {
            Button("", action: {
                print("")
            })
                .buttonStyle(AssetMenuButtonStyle(menu: .creditCard))
            
            Button("", action: {
                print("")
            })
                .buttonStyle(AssetMenuButtonStyle(menu: .bankAccount))
            
            Button("", action: {
                print("")
            })
                .buttonStyle(AssetMenuButtonStyle(menu: .cash))
            
            Button("", action: {
                print("")
            })
                .buttonStyle(AssetMenuButtonStyle(menu: .creditScore))
        }
        .background(Color.gray)
    }
}
