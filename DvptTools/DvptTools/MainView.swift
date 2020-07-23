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
            List(0 ..< 30) { item in
                Text("hello")
                    .font(.title)
            }.frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 400, idealHeight: 1000, maxHeight: 1000, alignment: Alignment.topTrailing)
            DetailView().frame(width: 500, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {

            Text("DetailView")
            Button(action: {
                
                let panel = NSOpenPanel()
                panel.allowsOtherFileTypes = false
                panel.allowedFileTypes = ["xcodeproj"]
                panel.beginSheetModal(for: NSApplication.shared.keyWindow ?? NSWindow()) { (modalResponse:NSApplication.ModalResponse) in
                    
                    if (modalResponse.rawValue == 1) {
                        let fileUrl = panel.urls.first;
                    }else{
                        print("取消选择")
                    }
                }
            }) {
                Text("选择主工程")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
