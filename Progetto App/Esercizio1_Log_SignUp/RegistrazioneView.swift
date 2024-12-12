//
//  ContentView.swift
//  Esercizio1_Log_SignUp
//
//  Created by d14 on 21/11/24.
//
import SwiftUI
struct RegistrazioneView: View {
    @State var userManager: UserManager = UserManager()
    @State var nome: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State private var errorMessage = ""
    @State private var correctData = false
    @State private var showLogin: Bool = false

    
    var body: some View {
        NavigationStack{
            VStack{
                
                TemplateTFView( icon: "person.fill",
                                hasError: nome.isEmpty,
                                informazione: "nome",
                                informazioneVar: $nome)
                
                TemplateTFView(icon: "envelope.fill",
                               hasError: email.isEmpty,
                               informazione: "email",
                               informazioneVar: $email)
                
                TemplateTFView(icon: "key.fill",
                               hasError: password.isEmpty,
                               informazione: "password",
                               informazioneVar: $password,
                               password: true)
            
                }.padding()
                    .frame(maxWidth: .infinity)
                    
                
                HStack{
                    Button("Registrati") {
                        if(nome.isEmpty || email.isEmpty || password.isEmpty){
                        }
                        else {
                            correctData = userManager.register(username: nome, password: password, email: email)
                            }
                        
                    }.alert(correctData ? "Registrazione avvenuta con successo" : "REGISTRAZIONE ANDATA MALE", isPresented: $correctData, actions: {
                        Button("Ok") {
                            showLogin.toggle()
                        }
                    })
                    .padding()
    
                    if showLogin {
                        NavigationLink("Vai al Login", destination: LoginView())
                    }
                }
                
        }.navigationTitle("Pagina Registrazione")
                .frame(width: 300)
    }
}

struct TemplateTFView: View {
    
    var icon: String = ""
    var hasError: Bool = false
    var informazione: String = ""
    @Binding var informazioneVar: String
    var password: Bool = false
    
    var body: some View {
        HStack{
            Image(systemName: icon)
            if password {
                SecureField("Inserisci \(informazione)", text: $informazioneVar )
            }
            else {
                TextField("Inserisci \(informazione)", text: $informazioneVar )
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(hasError ? Color.red : Color.green, lineWidth: 1))
    }
}
#Preview {
    RegistrazioneView()
}
