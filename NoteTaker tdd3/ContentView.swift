//
//  ContentView.swift
//  NoteTaker tdd3
//
//  Created by shark boy on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var note = Note(title: "noteTitle", body: "noteBody")

    var body: some View {
        
        VStack {
            Text(note.title)
                .font(.largeTitle)
            
            Text(note.body)
                .multilineTextAlignment(.leading)
                .frame(width: 300, height: 300)
                .border(.gray)
                
            
            
                Button {
                    let noteDataManager = DataBase()
                    noteDataManager.save(note)
                    
                    
                } label: {
                    Text("saveNote")
                }
                
            
        }
        
    }
}


#Preview {
    ContentView()
}
