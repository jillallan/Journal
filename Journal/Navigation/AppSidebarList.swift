//
//  AppSidebarList.swift
//  Journal
//
//  Created by Jill Allan on 22/10/2023.
//

import SwiftUI

struct AppSidebarList: View {
    @Binding var selection: AppScreen?
    
    var body: some View {
        List(AppScreen.allCases, selection: $selection) { screen in
            NavigationLink(value: screen) {
                screen.label
            }
        }
        .navigationTitle("Journal")
    }
}

#Preview {
    AppSidebarList(selection: .constant(.trips))
}
