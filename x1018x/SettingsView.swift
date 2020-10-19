//
//  SettingsView.swift
//  x1018x
//
//  Created by AARON KORN on 10/18/20.
//

import SwiftUI

func valuePlus2() -> String {
  return String(UserDefaults.standard.integer(forKey: "value") + 2)
}

struct SettingsView: View {
  
  @AppStorage("value") private var value: Int = 1
  
  var body: some View {
    List {
      Stepper(value: $value, in: 1...7) {
        Text("value: \(value)")
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
