//
//  AboutView.swift
//  BasicTemplate
//
//  Created by Joseph Hinkle on 1/25/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        Form {
            Section(header: Text("Contact Us")) {
                if AM_SHOW_TWITTER {
                    Button(action: {
                        UIApplication.shared.open(URL(string: AM_TWITTER_LINK)!)
                    }, label: {
                        HStack {
                            Image("Twitter").resizable().frame(width: 24, height: 24)
                            Text("Twitter")
                        }
                    })
                }
                if AM_SHOW_INSTAGRAM {
                    Button(action: {
                        UIApplication.shared.open(URL(string: AM_INSTAGRAM_LINK)!)
                    }, label: {
                        HStack {
                            Image("Instagram").resizable().frame(width: 24, height: 24)
                            Text("Instagram")
                        }
                    })
                }
                if AM_SHOW_SOUNDCLOUD {
                    Button(action: {
                        UIApplication.shared.open(URL(string: AM_SOUNDCLOUD_LINK)!)
                    }, label: {
                        HStack {
                            Image("SoundCloud").resizable().frame(width: 24, height: 24)
                            Text("SoundCloud")
                        }
                    })
                }
                if AM_SHOW_WEBSITE {
                    Button(action: {
                        UIApplication.shared.open(URL(string: AM_WEBSITE_LINK)!)
                    }, label: {
                        HStack {
                            Image(systemName: "link.circle")
                            Text("Our Website")
                        }
                    })
                }
            }
            Section(header: Text("Info")) {
                Text(AM_APP_DESCRIPTION)
                Text("Created in ") + Text(AM_YEAR_CREATED).bold()
            }
            VStack(alignment: .center) {
                PoweredByAppMakerView()
            }.padding().frame(maxWidth: .infinity)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
