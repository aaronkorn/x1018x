//
//  SettingsView.swift
//  x1018x
//
//  Created by AARON KORN on 10/18/20.
//

import SwiftUI

func familySizeF() -> Int { UserDefaults.standard.integer(forKey: "children") + 2 }

class A7KChildren: ObservableObject {
  @Published var children: Int = 1
  var familySize: Int { children + 2 }
  
  @Published var childrenUserDefaults: Int = UserDefaults.standard.integer(forKey: "children")
  var familySizeUserDefaults: Int { childrenUserDefaults + 2 }
  
  static let shared = A7KChildren()
  private init() {}
}

class A7KFish: ObservableObject {
  var children: Int { A7KChildren.shared.children }
  var familySize: Int { A7KChildren.shared.familySize }
  
  var childrenUserDefaults: Int { A7KChildren.shared.childrenUserDefaults }
  var familySizeUserDefaults: Int { A7KChildren.shared.familySizeUserDefaults }
  
  var childrenAppStorage: Int { UserDefaults.standard.integer(forKey: "children") }
  
  static let shared = A7KFish()
  private init() {}
}

struct SettingsView: View {
  
  @AppStorage("children") private var children: Int = 1
  
  @StateObject private var a7KChildren: A7KChildren = A7KChildren.shared
  
  @StateObject private var a7KFish: A7KFish = A7KFish.shared
  
  var body: some View {
    List {
      Text("a7KFish children \(a7KFish.children)")
      Text("a7KFish familySize \(a7KFish.familySize)")
      
      Stepper(value: $a7KChildren.children, in: 1...7) {
        Text("a7KChildren.children: \(a7KChildren.children)")
      }
      
      Text("a7KFish childrenUserDefaults \(a7KFish.childrenUserDefaults)")
      Text("a7KFish familySizeUserDefaults \(a7KFish.familySizeUserDefaults)")
      
      Stepper(value: $a7KChildren.childrenUserDefaults, in: 1...7) {
        Text("a7KChildren.childrenUserDefaults: \(a7KChildren.childrenUserDefaults)")
      }
      
      Text("a7KFish childrenAppStorage \(a7KFish.childrenAppStorage)")
      
      Stepper(value: $children, in: 1...7) {
        Text("AppStorage children: \(children)")
      }
      
      Text("UserDefaults familySizeF() \(familySizeF())")
    }
    .navigationTitle("SettingsView")
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
