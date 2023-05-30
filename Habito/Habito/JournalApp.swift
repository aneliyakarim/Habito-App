//
//  JournalApp.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 19/05/23.
//

import SwiftUI
@main
struct JournalApp: App {
    @StateObject var journalData = JournalData()
    var body: some Scene {
        WindowGroup {
            EntryList(journalData: journalData)
                .task {
                    journalData.load()
                }
                .onChange(of: journalData.entries) { _ in
                    journalData.save()
                }
        }
    }
}

