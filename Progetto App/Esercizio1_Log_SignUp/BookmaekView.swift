//
//  SwiftUIView.swift
//  Esercizio1_Log_SignUp
//
//  Created by d14 on 28/11/24.
//

import SwiftUI

struct BookmarkView: View {
    
    @State var task: [String] = []
    @State var stringa: String = ""
    
    var body: some View {
        
        VStack {
            Image(systemName: "book")
                .imageScale(.large)
                .foregroundStyle(.tint)
            HStack{
                TextField("White here", text: $stringa )
                
                Button("Add", action: {
                    addTask()
                })
            }
            .padding()
            .frame(width: 300, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black))
            
            
            List{
                ForEach(task, id:\.self) { task in
                    Text(task)
                }
                .onDelete(perform: deleteTask)
                .frame(maxHeight: 300)
            }
        }
    }
    private func addTask(){
        if !stringa.isEmpty {
            task.append(stringa)
            stringa = ""
        }
    }
    
    private func deleteTask(at offsets: IndexSet){
        task.remove(atOffsets: offsets)
    }
}

#Preview {
    BookmarkView()
}
