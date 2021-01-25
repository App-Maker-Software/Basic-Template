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
                    _amTemplateValue("APP_ICON", default: Image(systemName: "app")).padding()
                    (Text("Welcome to ")
                        +
                        Text(_amTemplateValue("APP_NAME", default: "app name")).bold().underline()
                        +
                        Text(".")
                    )
                }.font(.largeTitle)
                Divider()
                Spacer()
                Group {
                    (Text("A real iOS app made entirely on my ")
                        +
                        Text(_amTemplateValue("DEVICE_TYPE", default: "iPhone")).bold().underline()
                        +
                        Text(".")
                    )
                }.font(.body)
                Spacer()
                Text("Like it?")
                _amTemplateOptionalClosure("LIVE_APP_SMS_LINK", default: "sms:&body=https://www.liveapp.cc/") { link in
                    Link("Share with a friend!", destination: URL(string: link)!)
                }
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
