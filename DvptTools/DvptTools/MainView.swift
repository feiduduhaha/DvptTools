//
//  ContentView.swift
//  DvptTools
//
//  Created by silence on 2020/4/27.
//  Copyright © 2020 nineSun. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        HStack {
            List(0 ..< 5) { item in
                Text("hello")
                    .font(.title)
            }.frame(width: 300, height: 500)
            DetailView().frame(width: 500, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("DetailView")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
