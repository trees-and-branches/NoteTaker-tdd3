//
//  Note.swift
//  NoteTaker tdd3
//
//  Created by shark boy on 1/30/24.
//

import Foundation

class Note {
    var title: String
    var body: String
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
    
}



class DataBase: NoteDataManager {
    
    public var dummyNotes: [Note] {
        var notes: [Note] = []
        for noteNum in 0...9  {
            let note = Note(title: "noteNum\(noteNum)", body: String(repeating: "h", count: noteNum))
            notes.append(note)
        }
        return notes
    }
    
    func save(_ note: Note) {
        print("saving \(note.title)")
    }
    
    func delete(_ note: Note) {
        print("deleting \(note.title)")
    }
    
    func fetchNotes() -> [Note] {
        return dummyNotes
    }
    
    
}

protocol NoteDataManager {
    func save(_ note: Note)
    func delete(_ note: Note)
    func fetchNotes() -> [Note]
}
