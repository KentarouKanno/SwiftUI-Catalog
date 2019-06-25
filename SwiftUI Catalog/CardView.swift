//
//  CardView.swift
//  Xcode11
//
//  Created by Kentarou Kanno on 2019/06/24.
//  Copyright © 2019 Kentarou Kanno. All rights reserved.
//

import SwiftUI

struct CardView : View {
    @State var cardOffset: Length = 50
    
    var body: some View {
        ZStack {
            
            Card()
                .foregroundColor(Color.purple)
            
            Card()
                .foregroundColor(Color.blue)
                .offset(y: cardOffset)
                .animation(.spring())
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.cardOffset = value.translation.height
                        }
                        .onEnded { _ in
                            self.cardOffset = 50
                    }
            )
        }
    }
}

struct Card: View {
    var body: some View {
        Rectangle()
            .cornerRadius(30)
    }
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
#endif
