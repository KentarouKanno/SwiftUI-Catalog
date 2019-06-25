//
//  Countup.swift
//  Xcode11
//
//  Created by Kentarou Kanno on 2019/06/26.
//  Copyright © 2019 Kentarou Kanno. All rights reserved.
//

import SwiftUI

struct Countup : View {
    @State var reloadCount = 0
    
    var body: some View {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.reloadCount += 1
        }
        return Text("Reloads:\(reloadCount)")
    }
}

#if DEBUG
struct Countup_Previews : PreviewProvider {
    static var previews: some View {
        Countup()
    }
}
#endif
