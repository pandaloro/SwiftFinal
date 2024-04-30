import SwiftUI

struct BookAppointmentView: View {
    @State private var selectedDate: Date = Date()
    @State private var selectedTime: String = "9:00 AM"
    @State private var selectedPharmacy: String = mockPharmacies[0]
    
    let availableDates: [Date] = generateDates()
    let availableTimes: [String] = generateTimes()
    
    var body: some View {
        VStack {
            // Header
            ZStack {
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(height: 60)
                    .cornerRadius(15)  // Rounded corners for the header
                
                Text("Book Appointment:")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            
            // Pharmacy Picker
            Picker("Select Pharmacy", selection: $selectedPharmacy) {
                ForEach(mockPharmacies, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            
            // Calendar Picker
            DatePicker("Select Date", selection: $selectedDate, in: ...Date().addingTimeInterval(86400), displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
            
            // Time Picker
            Picker("Select Time", selection: $selectedTime) {
                ForEach(availableTimes, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            
            // Book Appointment Button
            Button("Book Appointment") {
                bookAppointment()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            Spacer()
        }
        .navigationTitle("Book Appointment")
        .padding()
    }
    
    func bookAppointment() {
        print("Appointment booked for \(selectedDate) at \(selectedTime) at \(selectedPharmacy)")
    }
}

func generateDates() -> [Date] {
    var dates: [Date] = []
    let calendar = Calendar.current
    let startDate = Date()
    
    for day in 0..<7 {
        if let date = calendar.date(byAdding: .day, value: day, to: startDate) {
            dates.append(date)
        }
    }
    
    return dates
}

func generateTimes() -> [String] {
    let formatter = DateFormatter()
    formatter.dateFormat = "h:mm a"
    
    var times: [String] = []
    var date = Date()
    
    for _ in 0..<10 {
        times.append(formatter.string(from: date))
        if let newDate = Calendar.current.date(byAdding: .hour, value: 1, to: date) {
            date = newDate
        }
    }
    
    return times
}

let mockPharmacies: [String] = [
    "Pharmacy A",
    "Pharmacy B",
    "Pharmacy C",
    "Pharmacy D"
]

struct BookAppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        BookAppointmentView()
    }
}
