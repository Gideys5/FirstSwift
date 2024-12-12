//
//  SwiftUIView.swift
//  Esercizio1_Log_SignUp
//
//  Created by d14 on 21/11/24.
//

import SwiftUI

struct LoginView: View {
    @State var nome: String = ""
    @State var password: String = ""
    @State var isLoggedIn: Bool = false
    @State var showRegister: Bool = false
    


    var body: some View {
        NavigationStack {
            VStack {
                TemplateTFView(icon: "person.fill",                            hasError:nome.isEmpty,
                               informazione: "nome",
                               informazioneVar: $nome)
                
                TemplateTFView(icon: "key.fill",
                               hasError: password.isEmpty,
                               informazione: "password",
                               informazioneVar: $password,
                               password: true)
                
                HStack {
                    
                    NavigationLink("Accedi a pagina Privata", destination: UserView(nome: nome,password: password))
                        .disabled(nome=="" || password=="")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    
                    Button("Pulsici")
                    {
                        nome = ""
                        password = ""
                    }
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .disabled(nome=="" && password=="")
                   
                }
                
                
                
                
            }.frame(width: 300)
        }.navigationTitle("Pagina Login")
            
        
        
        
        
    }
}

#Preview {
    LoginView()
}
