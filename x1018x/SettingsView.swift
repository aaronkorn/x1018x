//
//  SettingsView.swift
//  x1018x
//
//  Created by AARON KORN on 10/18/20.
//

import SwiftUI

func familySize() -> String {
  return String(UserDefaults.standard.integer(forKey: "children") + 2)
}

struct SettingsView: View {
  
  @AppStorage("children") private var children: Int = 1
  
  var body: some View {
    List {
      Stepper(value: $children, in: 1...7) {
        Text("children: \(children)")
      }
    }
    .navigationTitle("Settings")
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
