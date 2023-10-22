//
//  ContentView.swift
//  Journal
//
//  Created by Jill Allan on 22/10/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selection: AppScreen? = .trips

    var body: some View {
        NavigationSplitView {
            AppSidebarList(selection: $selection)
        } detail: {
            AppDetailColumn(screen: selection)
        }
    }
}

#Preview {
    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
}
