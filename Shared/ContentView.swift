//
//  ContentView.swift
//  Shared
//
//  Created by a1 on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    @State var shortString = true
    
    var body: some View {
        VStack {
                    if shortString {
                        Text("This is short.").font(.title).fixedSize()
                        .transition(AnyTransition.opacity.animation(.easeInOut(duration:1.0)))
                    }
                    if !shortString {
                        Text("This is considerably longer.").font(.title).fixedSize()
                        .transition(AnyTransition.opacity.animation(.easeInOut(duration:1.0)))
                    }

                    Button(action: {self.shortString.toggle()}) {
                        Text("Toggle").padding()
                    }
                }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
