//
//  ContentView.swift
//  maiapp
//
//  Created by NB1003201 on 9/10/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var varible:String = "..."
    @State var textInput = ""
    
    var body: some View {
        VStack {
            Image(systemName: "moon")
                .imageScale(.large)
                .foregroundStyle(.tint).colorInvert()
            Text(varible).font(.largeTitle.bold()).foregroundColor(.white).background(Color.cyan).padding()
        
            TextField("Input", text: $textInput).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
       
            Button(action: {
                self.varible = textInput
             
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/.background(Color.white)
            })
            Spacer()
            
            VStack{
                Spacer()
                Spacer()
                Spacer()
                RoundedRectangle(cornerRadius:25).fill(Color.orange).frame(height:50).overlay(
                    Text("MyImage List").font(.title3.bold()).fontWeight(.black).multilineTextAlignment(.leading).padding().foregroundStyle(.indigo)
                ).padding()
                
                Divider()
                Spacer()
                ImageList()
                ImageList()
                ImageList()
            }.frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center).background(Color.white)
            
        }.frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center).background(Color.indigo)
       
    }
}

struct ImageList: View {
    var body:some View{
        HStack{
            Image("bgImage").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width:200, height: 150)
        }
    }
}

#Preview {
    ContentView()
}
