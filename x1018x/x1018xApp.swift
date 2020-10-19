//
//  x1018xApp.swift
//  x1018x
//
//  Created by AARON KORN on 10/18/20.
//

import SwiftUI

@main
struct x1018xApp: App {
  let persistenceController = PersistenceController.shared
  
  var body: some Scene {
    WindowGroup {
      TabView {
        
        NavigationView {
          ContentView()
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }.tabItem {
          Image(systemName: "1.circle").font(.title)
          Text("Content")
        }.tag(1)
        
        NavigationView {
          SettingsView()
        }.tabItem {
          Image(systemName: "1.circle").font(.title)
          Text("Settings")
        }.tag(1)
        
      }
    }
  }
}
