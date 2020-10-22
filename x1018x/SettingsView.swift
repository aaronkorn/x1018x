//
//  SettingsView.swift
//  x1018x
//
//  Created by AARON KORN on 10/18/20.
//

import SwiftUI

func familySizeF() -> String {
  return String(UserDefaults.standard.integer(forKey: "children") + 2)
}

class A7KChildren: ObservableObject {
  @Published var children: Int = UserDefaults.standard.integer(forKey: "children")
  
  var familySize: String {
    String(children + 2)
  }
  
  static let shared = A7KChildren()
  private init() {}
}

class A7KFish: ObservableObject {
  @Published var children: Int = 0
  
  var familySize: String {
    A7KChildren.shared.familySize
  }
  
  static let shared = A7KFish()
  private init() {}
}

struct SettingsView: View {
  
  //@AppStorage("children") private var children: Int = 1
  
  @StateObject private var a7KChildren: A7KChildren = A7KChildren.shared
  
  @StateObject private var a7KFish: A7KFish = A7KFish.shared

  var body: some View {
    List {
      Stepper(value: $a7KChildren.children, in: 1...7) {
        Text("a7KChildren.children: \(a7KChildren.children)")
      }
      
      Text("a7KFish familySize \(a7KFish.familySize)")
    }
    .navigationTitle("SettingsView")
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
