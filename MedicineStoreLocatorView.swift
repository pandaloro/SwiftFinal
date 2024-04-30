import SwiftUI

struct MedicineStoreLocatorView: View {
    var body: some View {
        NavigationView {
            List(mockStores) { store in
                VStack(alignment: .leading) {
                    Text(store.name)
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text(store.address)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("Phone: \(store.phoneNumber)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("Opening Hours: \(store.openingHours)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Order Medicine") {
                        // Handle order medicine action
                        print("Order Medicine button tapped")
                    }
                }
            }
        }
            .accentColor(.blue) // Sets the global accent color
        }
    }



struct Store: Identifiable {
    let id: String
    let name: String
    let address: String
    let phoneNumber: String
    let openingHours: String
}

let mockStores: [Store] = [
    Store(id: "1", name: "Pharmacy A", address: "123 Main St, City, Country", phoneNumber: "(123) 456-7890", openingHours: "9:00 AM - 6:00 PM"),
    Store(id: "2", name: "Pharmacy B", address: "456 Elm St, City, Country", phoneNumber: "(123) 456-7891", openingHours: "9:30 AM - 7:00 PM"),
    Store(id: "3", name: "Pharmacy C", address: "789 Oak St, City, Country", phoneNumber: "(123) 456-7892", openingHours: "10:00 AM - 8:00 PM"),
    Store(id: "4", name: "Pharmacy D", address: "101 Pine St, City, Country", phoneNumber: "(123) 456-7893", openingHours: "10:30 AM - 9:00 PM")
]

struct MedicineStoreLocatorView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineStoreLocatorView()
    }
}
