//
//  HomeView.swift
//  BasicTemplate
//
//  Created by Joseph Hinkle on 1/25/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Group {
                    AM_APP_ICON.resizable().scaledToFit().frame(width: 83.5).padding()
                    (Text("Welcome to ")
                        +
                        Text(AM_APP_NAME).bold().underline()
                        +
                        Text(".")
                    )
                }.font(.largeTitle)
                Divider()
                Spacer()
                Group {
                    (Text("A real iOS app made entirely on my ")
                        +
                        Text(AM_DEVICE_TYPE).bold().underline()
                        +
                        Text(".")
                    )
                }.font(.body)
                Spacer()
                Text("Like it?")
                Link("Share with a friend!", destination: URL(string: AM_LIVE_APP_SMS_LINK)!)
                Spacer()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
