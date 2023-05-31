//
//  SwiftUIView.swift
//  KelvinKaungCard
//
//  Created by Kaung Htet OO on 5/31/23.
//

import SwiftUI

struct InfoView: View {
    var image : String
    var info : String
    
    var body: some View {
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(.white, lineWidth: 2)
                .frame(width: 350,height: 60)
                .overlay(
                    HStack {
                        Image(systemName: image)
                            .foregroundColor(.white)
                        Text(info)
                            .foregroundColor(.white)
                    }
                )
                .padding(.top, 20)
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(image: "phone.fill", info: "hello")
    }
}
