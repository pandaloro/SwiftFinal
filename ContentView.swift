//
//  ContentView.swift
//  HealthDash
//
//  Created by Andrew Parker on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password1 = ""
    @State private var resultMessage = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("HealthDash") // Title
                    .font(.largeTitle)
                    .padding(.top, 30) // Adjust as needed
                
                Group {
                    TextField("Enter Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                    
                    SecureField("Enter Password", text: $password1)
                        .textFieldStyle(.roundedBorder)
                    
                    // Create User button
                    Button(action : {
                        Task {
                            await sendNewUserData()
                        }
                    }, label: {
                        Text("CREATE ACCOUNT")
                            .font(.title3)
                            .padding()
                    })
                    
                    // LOGIN User button
                    Button(action : {
                        Task {
                            await loginUserData()
                        }
                    }, label: {
                        Text("LOGIN INTO ACCOUNT")
                            .font(.title3)
                            .padding()
                    })
                    
                    HStack {
                        Text("Status : ")
                        
                        Text(resultMessage)
                            .frame(width: 275, height: 70, alignment: .leading)
                            .background(Color.black)
                            .foregroundColor(Color.white)
                        
                    } // end HStack
                    
                } // end group
                .padding()
            } // end VStack
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    } // end body
    
    private func sendNewUserData() async {
        // Implement logic to send new user data
    }
    
    private func loginUserData() async {
        // Implement logic to login user data
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
