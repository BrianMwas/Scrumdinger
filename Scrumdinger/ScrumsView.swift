//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Brian on 19/06/2023.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @Environment(\.scenePhase) private var scenePhase
    @State var isPresentingNewScrumsView = false
    let saveAction: () -> Void
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                List($scrums) { $scrum in
                    NavigationLink(
                        destination: DetailView(scrum: $scrum)
                    ) {
                        CardView(scrum: scrum)
                    }
                    .listRowBackground(scrum.theme.mainColor)
                }
                .navigationTitle("Daily Scrums")
                .toolbar {
                    Button(action: {
                        isPresentingNewScrumsView = true
                    }) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Scrum")
                }
            }
            .sheet(isPresented: $isPresentingNewScrumsView) {
                NewScrumSheet(
                    scrums: $scrums,
                    isPresentingNewScrumView: $isPresentingNewScrumsView
                )
            }
            .onChange(of: scenePhase) { phase in
                if phase == .inactive {
                    saveAction()
                }
            }
        } else {
            NavigationView {
                List($scrums) { $scrum in
                    NavigationLink(
                        destination: DetailView(scrum: $scrum)
                    ) {
                        CardView(scrum: scrum)
                    }
                    .listRowBackground(scrum.theme.mainColor)
                }
                .navigationTitle("Daily Scrums")
                .toolbar {
                    Button(action: {
                        isPresentingNewScrumsView = true
                    }) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Scrum")
                }
            }
            .sheet(isPresented: $isPresentingNewScrumsView) {
                NewScrumSheet(
                    scrums: $scrums,
                    isPresentingNewScrumView: $isPresentingNewScrumsView
                )
            }
            .onChange(of: scenePhase) { phase in
                if phase == .inactive {
                    saveAction()
                }
            }
        }
        
    }
}

struct ScrumView_Previews: PreviewProvider {
    
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData)) {
            
        }
    }
}
