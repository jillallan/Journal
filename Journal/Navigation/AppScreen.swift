//
//  AppScreen.swift
//  Journal
//
//  Created by Jill Allan on 22/10/2023.
//

import SwiftUI

enum AppScreen: Codable, Hashable, Identifiable, CaseIterable {
    case trips
    case steps
    case placemarks
    case stats
    case settings

    var id: AppScreen { self }
}

extension AppScreen {
    @ViewBuilder
    var label: some View {
        switch self {
        case .trips:
            Label("Trips", systemImage: "airplane")
        case .steps:
            Label("Steps", systemImage: "figure.walk")
        case .placemarks:
            Label("Locations", systemImage: "mappin.and.ellipse")
        case .stats:
            Label("Statistics", systemImage: "chart.bar.xaxis")
        case .settings:
            Label("Steps", systemImage: "gear")
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .trips:
            TripView()
        case .steps:
            StepView()
        case .placemarks:
            PlacemarkView()
        case .stats:
            StatisticsView()
        case .settings:
            SettingsView()
        }
    }
}

