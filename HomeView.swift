import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("HealthDash")
                    .font(.largeTitle)
                    .padding(.top, 30)
                
                Spacer()
                
                Text("Check out our latest promotions!")
                    .padding()
                
                Spacer()
                
                VStack(spacing: 20) {
                    NavigationLink(destination: MedicineStoreLocatorView()) {
                        QuickAccessButton(icon: "pills", text: "Order Medicine")
                    }
                    NavigationLink(destination: BookAppointmentView()) {
                        QuickAccessButton(icon: "calendar", text: "Book Appointment")
                    }
                    NavigationLink(destination: SymptomSelectionView()) {
                        QuickAccessButton(icon: "magnifyingglass", text: "Search Health Info")
                    }
                    NavigationLink(destination: PersonalView()) {
                        QuickAccessButton(icon: "person.crop.circle", text: "Profile")
                    }
                }
                
                Spacer()
                
                Text("© 2024 HealthDash. Contact us: info@healthdash.com")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarItems(trailing: NavigationLink(destination: ProfileView()) {
                Text("Profile")
                    .foregroundColor(.blue)
            })
        }
    }
}

struct QuickAccessButton: View {
    var icon: String
    var text: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(text)
                .font(.headline)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct OrdersView: View {
    var body: some View {
        Text("Orders View")
    }
}

struct AppointmentsView: View {
    var body: some View {
        Text("Appointments View")
    }
}

struct SearchView: View {
    var body: some View {
        Text("Search View")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
