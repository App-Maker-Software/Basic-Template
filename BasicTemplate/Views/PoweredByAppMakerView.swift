//
//  PoweredByAppMakerView.swift
//  BasicTemplate
//
//  Created by Joseph Hinkle on 1/25/21.
//

import SwiftUI

struct PoweredByAppMakerView: View {
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: "https://www.appmakerios.com")!)
        }, label: {
            Image("App Maker Icon")
                .resizable()
                .cornerRadius(7)
                .frame(width: 49, height: 49, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack(spacing: 0) {
                Text("Powered by: ")
                Text("App Maker").bold()
            }.font(.title3)
        })
    }
}

struct PoweredByAppMakerView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PoweredByAppMakerView()
        }
    }
}

