//
//  ContentView.swift
//  my-assets
//
//  Created by devhaute on 2021/10/09.
//

import SwiftUI

enum Tab {
    case asset, recommend, alert, setting
}

struct ContentView: View {
    @State private var selection: Tab = .asset
    
    var body: some View {
        TabView(selection: $selection) {
            AssetView()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("자산")
                }
                .tag(Tab.asset)
                
            Text("추천 페이지")
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("추천")
                }
                .tag(Tab.recommend)
            
            Text("알림 페이지")
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("알림")
                }
                .tag(Tab.alert)
            
            Text("설정 페이지")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("설정")
                }
                .tag(Tab.setting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
