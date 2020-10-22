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
  
  var body: some View {
    List {
      Text("UserDefaults family \(familySize())")
      
      //Text("\(children)").foregroundColor(Color.clear)
      
      Text("StateObject family \(a7KChildren.familySize)")
      Text("StateObject children \(a7KChildren.children)")
    }
    .navigationTitle("ContentView")
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
