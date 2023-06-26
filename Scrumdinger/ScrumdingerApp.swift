//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Brian on 17/06/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    @State private var wrapper: ErrorWrapper?

    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        wrapper = ErrorWrapper(error: error, guidance: "Try again later")
                    }
                }
            }
            .task {
                do {
                    try await store.load()
                } catch {
                    wrapper = ErrorWrapper(error: error, guidance: "Will load sample data and continue")
                }
            }
            .sheet(item: $wrapper) {
                store.scrums = DailyScrum.sampleData
            } content: { wrapper in
                ErrorView(errorWrapper: wrapper)
            }
        }
    }
}
