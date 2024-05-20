//
//  HomeView.swift
//  UberSwiftUIClone
//
//  Created by Ashish Jain on 19/05/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearchView = false
    
    var body: some View {
        
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView{
                LocationSearchView()
            }else{
                LocationSearchActivationView()
                    .padding(.top,72)
                    .onTapGesture {
                        withAnimation(.spring){
                            showLocationSearchView.toggle()
                        }
                    }
            }
            
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top,4)
        }
    }
}

#Preview {
    HomeView()
}
