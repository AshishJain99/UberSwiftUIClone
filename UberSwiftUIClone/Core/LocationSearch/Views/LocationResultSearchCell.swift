//
//  LocationResultSearchCell.swift
//  UberSwiftUIClone
//
//  Created by Ashish Jain on 19/05/24.
//

import SwiftUI

struct LocationResultSearchCell: View {
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40,height: 40)
            
            VStack(alignment: .leading,spacing: 4){
                Text("Stacrbucks coffee")
                    .font(.body)
                Text("Main st, cupertino CA")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
              Divider()
            }
            .padding(.leading,8)
            .padding(.vertical,8)
        }
        .padding(.leading)
    }
}

#Preview {
    LocationResultSearchCell()
}
