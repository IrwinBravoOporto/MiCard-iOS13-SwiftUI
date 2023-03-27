//
//  InfoView.swift
//  AngelaCard
//
//  Created by Angela Yu on 06/09/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import SwiftUI

//struct InfoView: View {
//    let description: String
//
//    var body: some View {
//        HStack {
//            Image(systemName: "checkmark.circle.fill")
//                .foregroundColor(Color("Info Color"))
//                .font(.system(size: 22))
//            Text(description)
//                .font(.system(size: 20))
//                .foregroundColor(.black)
//                .padding(.leading, 10)
//        }
//        .padding(.vertical, 10)
//        .background(Color.white)
//        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
//            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
//        )
//    }
//}

struct InfoView: View {
    let description: String
 
    var body: some View {
 
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.white)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .overlay(
                
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(Color("Info Color"))
                        .font(.system(size: 22))
                    Text(description)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .padding(.leading, 10)
                }
            ).overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 0))
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(description: "Location:" )
            .previewLayout(.sizeThatFits)
    }
}

