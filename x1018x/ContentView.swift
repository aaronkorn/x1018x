//
//  ContentView.swift
//  x1018x
//
//  Created by AARON KORN on 10/18/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
  
  @AppStorage("children") private var children: Int = 1
  
  var body: some View {
    List {
      Text("We are a family of \(familySize())")
      
      Text("\(children)").foregroundColor(Color.clear)
    }
    .navigationTitle("ContentView")
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
