import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Spacer()
                    AssetMenuGridView()
                }
            }
            .background(Color.gray)
            .navigationBarWithButtonStyle("내 자산")
        }
    }
}

struct AssetView_Preview: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
