//
//  Compose.swift
//  Xcode11
//
//  Created by Kentarou Kanno on 2019/06/23.
//  Copyright © 2019 Kentarou Kanno. All rights reserved.
//

import SwiftUI

struct Compose : View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park.")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                }
                .padding()
        }
    }
}

#if DEBUG
struct Compose_Previews : PreviewProvider {
    static var previews: some View {
        Compose()
    }
}
#endif
