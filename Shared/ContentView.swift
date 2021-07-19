//
//  ContentView.swift
//  Shared
//
//  Created by a1 on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    

        VStack (alignment: .leading){
            Text("Hello, world!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(20)
            
            Divider()
            
            Text("안녕하세요")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .padding(30)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                .shadow(radius: 30 )
            
            Divider()

            HStack {
                Text("test")
                Spacer()
                Text("test")
                Spacer()
                Text("test")
                    .font(.subheadline)
            }.padding(20)
            
            EditButton().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/).textFieldStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Text Field Style@*/DefaultTextFieldStyle()/*@END_MENU_TOKEN@*/).padding(50)
            
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack {
                    ZStack {
                        Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: 0, blue: 0)
                        
                        Text("아").bold().foregroundColor(.white)
                    }
                    ZStack {
                        Color(red: 0, green: 0, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                        Circle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Text("아").bold().foregroundColor(.white)
                    }
                    ZStack {
                        Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: 1, blue: 0.5)
                        Ellipse()
                        Text("아").bold().foregroundColor(.white)
                    }
                }
            }.padding(50)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
