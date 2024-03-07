//
//  BookQuotesApp.swift
//  BookQuotes
//
//  Created by Matthew Dembinski on 3/5/24.
//

import SwiftUI
import SwiftData

@main
struct BookQuotesApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(for: Book.self)
    }
    
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
