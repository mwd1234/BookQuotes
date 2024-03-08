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
    let container: ModelContainer
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(container)
    }
    
    init() {
        let schema = Schema([Book.self])
        let config = ModelConfiguration("MyBooks", schema: schema)
        
        do {
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Couold not configure the container")
        }
        
//        let config = ModelConfiguration(url: URL.documentsDirectory.appending(path: "MyBooks.store"))
//        do {
//            container = try ModelContainer(for: Book.self, configurations: config)
//        } catch {
//            fatalError("Couold not configure the container")
//        }
//        print(URL.applicationSupportDirectory.path(percentEncoded: false))
        print(URL.documentsDirectory.path())
    }
}
