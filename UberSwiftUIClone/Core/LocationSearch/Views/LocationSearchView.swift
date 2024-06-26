//
//  LocationSearchView.swift
//  UberSwiftUIClone
//
//  Created by Ashish Jain on 19/05/24.
//

import SwiftUI

struct LocationSearchView: View {
    
    @State private var startLocationText = ""
    @State private var destinationLocationText = ""
    
    var body: some View {
        VStack{
            // header view
            HStack{
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6,height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1,height: 24)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6,height: 6)
                    
                }
                
                VStack{
                    TextField("current Location", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    
                    TextField("Where to? ", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top,64)
            
            Divider()
                .padding(.vertical)
            
            // list view
            
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(0 ..< 20, id: \.self ){ _ in
                       LocationResultSearchCell()
                    }
                }
            }
        }.background(.white)
    }
}

#Preview {
    LocationSearchView()
}
