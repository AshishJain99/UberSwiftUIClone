//
//  HomeView.swift
//  UberSwiftUIClone
//
//  Created by Ashish Jain on 19/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable().ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
