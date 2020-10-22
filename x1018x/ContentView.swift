//
//  ContentView.swift
//  x1018x
//
//  Created by AARON KORN on 10/18/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
  
  //@AppStorage("children") private var children: Int = 1
  
  @StateObject private var a7KChildren: A7KChildren = A7KChildren.shared
  
  @StateObject private var a7KFish: A7KFish = A7KFish.shared
  
  var body: some View {
    List {
      Text("a7KFish children \(a7KFish.children)")
      Text("a7KFish familySize \(a7KFish.familySize)")
      
      Text("-")
      
      Text("a7KFish childrenUserDefaults \(a7KFish.childrenUserDefaults)")
      Text("a7KFish familySizeUserDefaults \(a7KFish.familySizeUserDefaults)")
      
      Text("-")
      
      Text("a7KFish childrenAppStorage \(a7KFish.childrenAppStorage)")
      
      Text("-")
      
      Text("UserDefaults familySizeF() \(familySizeF())")
    }
    .navigationTitle("ContentView")
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
