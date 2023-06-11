//
//  SwiftUIView.swift
//  Habito
//
//  Created by Aneliya Mukhamedkarimova on 11/06/23.
//

import SwiftUI

struct SwiftUIView: View {
    @ObservedObject var journalData: JournalData
    @State private var selected: Entry?
    
    private var newEntry = Entry(title: "1")
    
    init(journalData: JournalData) {
        self.journalData = journalData
    }
    
    var body: some View {
        NavigationSplitView {
            VStack {
                List(selection: $selected) {
                    Text("+ New Entry")
                        .tag(newEntry)
                    
                    ForEach($journalData.entries, id:\.self) { $entry in
                        Text("Item \(entry.title)")
                            .tag(entry)
                    }
                }
            }
        } detail: {
            if let entry = selected, let entryBinding = journalData.getBindingToEntry(entry) {
                
                ItemDetails(entry: entryBinding.wrappedValue)
                    .id(entry.id)
            }
        }
    }
}

struct ItemDetails : View {
    @State private var entry = Entry(title: Date.now.description)
    
    init(entry: Entry) {
        self._entry = State(initialValue: entry)

        print(entry.title)
    }
    
    var body: some View {
        Text(entry.title)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(journalData: JournalData())
    }
}
