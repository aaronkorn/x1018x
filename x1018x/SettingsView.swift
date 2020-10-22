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

class A7KChildren: ObservableObject {
  @Published var children: Int = UserDefaults.standard.integer(forKey: "children")

  static let shared = A7KChildren()
  private init() {}
}

struct SettingsView: View {
  
  @AppStorage("children") private var children: Int = 1
  
  @StateObject private var a7KChildren: A7KChildren = A7KChildren.shared
  
  var body: some View {
    List {
      Stepper(value: $a7KChildren.children, in: 1...7) {
        Text("children: \(a7KChildren.children)")
      }
    }
    .navigationTitle("SettingsView")
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
