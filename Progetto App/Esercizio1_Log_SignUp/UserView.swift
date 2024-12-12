//
//  PageView.swift
//  Esercizio1_Log_SignUp
//
//  Created by d14 on 21/11/24.
//

import SwiftUI

struct UserView: View {
    
    var nome: String = ""
    var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TabView{
                    HomeView(nome: nome, password: password )
                        .tabItem {
                            Text("Home")
                            Image(systemName: "house.fill")
                        }
                    
                    BookmarkView()
                        .tabItem {
                            Image(systemName: "bookmark.circle.fill")
                            Text("Bookmark")
                        }
                    CatalogView()
                        .tabItem{
                            Image(systemName: "book.fill")
                            Text("Catalog")
                        }
                    SettingsView()
                        .tabItem{
                            Image(systemName: "book.fill")
                            Text("Catalog")
                    }
                }
            }
        }
    }
}
    



struct HomeView: View {
    
    var nome: String!
    var password: String!
    
    var body: some View {
            
        VStack {
            Text("Ciao  \(nome)!")
            Text("Tieni alsicuro la tua password:  \(password)")
        
        }
    }
}



/*struct ScrollContentView: View {
    var body: some View {
        NavigationStack {
            ScrollViewReader { scrollView in
                ScrollView {
                    Button("Scroll to bottom") {
                        withAnimation {
                            scrollView.scrollTo(99)
                        }
                    }
                    
                    ForEach(0..<327) { index in
                        NavigationLink(destination: { Text("Dettaglio dell'item selezione pari a \(index)") }
                        ) {
                            Text(String(index))
                                .id(index)
                        }
                    }
                }
            }
        }
    }
}


struct ScrollHorizView: View {
    var body: some View {
        ScrollView() {
            HStack {
                Text("Ciao")
                Text("Ciao")
                Text("Ciao")
                Text("Ciao")
            }
        }

    }
}
*/



#Preview {
    UserView()
}
