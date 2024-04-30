//
//  ProfileView.swift
//  HealthDash
//
//  Created by Andrew Parker on 4/19/24.
//

import SwiftUI

struct PersonalView: View {
    @State private var name = ""
    @State private var age = ""
    @State private var gender = ""
    @State private var height = ""
    @State private var weight = ""
    @State private var notes = ""
    @State private var address = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Profile Information")
                    .font(.title)
                    .padding(.bottom, 10)
                
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Gender", text: $gender)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Height (in cm)", text: $height)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Weight (in lbs)", text: $weight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                TextField("Address", text: $address)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                Text("Additional Notes")
                    .font(.headline)
                
                TextEditor(text: $notes)
                    .frame(minHeight: 100)
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(8)
            }
            .padding()
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
}

struct PersonalView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalView()
    }
}

