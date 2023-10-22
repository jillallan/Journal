//
//  ContentView.swift
//  Journal
//
//  Created by Jill Allan on 22/10/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.prefersTabNavigation) private var prefersTabNavigation
    
    @State private var selection: AppScreen? = .trips

    var body: some View {
        if prefersTabNavigation {
            AppTabView(selection: $selection)
        } else {
            NavigationSplitView {
                // FIXME: Widen column width to improve display in large dynamic sizes if navigationSplitViewColumnWidth starts supporting larger widths on iPad
                AppSidebarList(selection: $selection)
            } detail: {
                AppDetailColumn(screen: selection)
            }
        }
    }
}

#Preview {
    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
}
