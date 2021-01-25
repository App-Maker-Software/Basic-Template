//
//  AboutView.swift
//  BasicTemplate
//
//  Created by Joseph Hinkle on 1/25/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Contact Us")) {
                    _amTemplateOptionalClosure("TWITTER_LINK", default: "https://www.twitter.com/AppMakerIOS") { link in
                        Button(action: {
                            UIApplication.shared.open(URL(string: link)!)
                        }, label: {
                            HStack {
                                Image("Twitter").resizable().frame(width: 24, height: 24)
                                Text("Twitter")
                            }
                        })
                    }
                    _amTemplateOptionalClosure("INSTAGRAM_LINK", default: "https://www.instagram.com/appmakerios") { link in
                        Button(action: {
                            UIApplication.shared.open(URL(string: link)!)
                        }, label: {
                            HStack {
                                Image("Instagram").resizable().frame(width: 24, height: 24)
                                Text("Instagram")
                            }
                        })
                    }
                    _amTemplateOptionalClosure("SOUNDCLOUD_LINK", default: "https://www.soundcloud.com/") { link in
                        Button(action: {
                            UIApplication.shared.open(URL(string: link)!)
                        }, label: {
                            HStack {
                                Image("SoundCloud").resizable().frame(width: 24, height: 24)
                                Text("SoundCloud")
                            }
                        })
                    }
                    _amTemplateOptionalClosure("WEBSITE_LINK", default: "https://www.appmakerios.com/") { link in
                        Button(action: {
                            UIApplication.shared.open(URL(string: link)!)
                        }, label: {
                            HStack {
                                Image(systemName: "link.circle")
                                Text("Our Website")
                            }
                        })
                    }
                }
                Section(header: Text("Info")) {
                    Text(_amTemplateValue("APP_DESCRIPTION", default: "This is a template app."))
                    Text(_amTemplateValue("CURRENT_YEAR", default: "Created in 2021"))
                }
                VStack(alignment: .center) {
                    PoweredByAppMakerView()
                }.padding().frame(maxWidth: .infinity)
            }
            .navigationBarTitle("About", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
