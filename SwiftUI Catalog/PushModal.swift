//
//  PushModal.swift
//  Xcode11
//
//  Created by Kentarou Kanno on 2019/06/24.
//  Copyright © 2019 Kentarou Kanno. All rights reserved.
//

import SwiftUI

struct PushModal : View {
    @State var isPresented = false
    
    var modalPresentation: some View {
        NavigationView {
            Text("Hello World")
                .font(.caption)
                .navigationBarTitle(Text("Modal Contents"))
                .navigationBarItems(trailing: Button(action: { self.isPresented = false } ) { Text("Done") })
        }
    }
    
    var body: some View {
        NavigationView {
            NavigationButton(destination: Text("Hello World")
                .font(.caption)
                .navigationBarTitle(Text("Detail View Contents"))
            ) {
                Text("Show Detail View")
                }
                .navigationBarTitle(Text("Welcome"))
                .navigationBarItems(trailing:
                    Button(action: { self.isPresented = true }) { Text("Show Modal") })
            }
            .presentation( isPresented ? Modal(modalPresentation, onDismiss: { self.isPresented.toggle() }) : nil )
    }
}

#if DEBUG
struct PushModal_Previews : PreviewProvider {
    static var previews: some View {
        PushModal()
    }
}
#endif
