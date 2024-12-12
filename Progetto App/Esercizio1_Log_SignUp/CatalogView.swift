//
//  CatalogView.swift
//  Esercizio1_Log_SignUp
//
//  Created by d14 on 28/11/24.
//

import SwiftUI

struct CatalogView: View {
    
    var items = Array(1...20).map { "Item \($0)" }
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack(spacing: 20){
                    ForEach(items, id: \.self){ item in
                        Button(action: {
                            print("\(item) tapped!")
                        }){
                            Text(item)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Catalog")
    }
}

#Preview {
    CatalogView()
}
