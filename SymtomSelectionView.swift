import SwiftUI

struct SymptomSelectionView: View {
    @State private var selectedSymptoms: Set<String> = []
    
    let healthSymptoms = [
        "Fever",
        "Cough",
        "Shortness of Breath",
        "Fatigue",
        "Muscle or Body Aches",
        "Headache",
        "Sore Throat",
        "Loss of Taste or Smell",
        "Congestion or Runny Nose",
        "Nausea or Vomiting",
        "Diarrhea",
        "Fever",
                "Cough",
                "Shortness of Breath",
                "Fatigue",
                "Muscle or Body Aches",
                "Headache",
                "Sore Throat",
                "Loss of Taste or Smell",
                "Congestion or Runny Nose",
                "Nausea or Vomiting",
                "Diarrhea",
                "Chills",
                "Difficulty Breathing",
                "Sweating",
                "Rapid Heart Rate",
                "High Blood Pressure",
                "Low Blood Pressure",
                "Chest Pain",
                "Abdominal Pain",
                "Joint Pain",
                "Back Pain",
                "Neck Pain",
                "Dizziness",
                "Lightheadedness",
                "Fainting",
                "Seizures",
                "Confusion",
                "Memory Loss",
                "Difficulty Speaking",
                "Difficulty Swallowing",
                "Vision Problems",
                "Hearing Loss",
                "Ringing in Ears",
                "Numbness or Tingling",
                "Weakness",
                "Tremors",
                "Skin Rash",
                "Itching",
                "Swelling",
                "Redness",
                "Bruising",
                "Bleeding",
                "Chest Tightness",
                "Wheezing",
                "Coughing up Blood",
                "Shortness of Breath at Rest",
                "Difficulty Sleeping",
                "Night Sweats",
                "Weight Loss",
                "Weight Gain",
                "Appetite Loss",
                "Appetite Increase",
                "Thirst",
                "Frequent Urination",
                "Painful Urination",
                "Blood in Urine",
                "Frequent Bowel Movements",
                "Constipation",
                "Diarrhea",
                "Bloating",
                "Gas",
                "Heartburn",
                "Nausea",
                "Vomiting",
                "Loss of Appetite",
                "Yellow Skin",
                "Yellow Eyes",
                "Dark Urine",
                "Light Stools",
                "Swollen Legs",
                "Swollen Ankles",
                "Swollen Feet",
                "Swollen Hands",
                "Swollen Fingers",
                "Cold Hands",
                "Cold Feet",
                "Hot Flashes",
                "Nightmares",
    ]
    
    var body: some View {
            NavigationView {
                List(healthSymptoms, id: \.self) { symptom in
                    MultipleSelectionRow(title: symptom, isSelected: self.selectedSymptoms.contains(symptom)) {
                        if self.selectedSymptoms.contains(symptom) {
                            self.selectedSymptoms.remove(symptom)
                        } else {
                            self.selectedSymptoms.insert(symptom)
                        }
                    }
                    .foregroundColor(.blue) // Set text color to white
                }
                .listStyle(PlainListStyle()) // Use plain list style
                .background(Color.blue) // Set background color to blue
                .navigationBarTitle("Select Symptoms", displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    // Handle save button action here
                    print("Selected Symptoms: \(self.selectedSymptoms)")
                }) {
                    Text("Save")
                        .foregroundColor(.white) // Set text color to white
                })
            }
        }
    }


struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            HStack {
                Text(title)
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct SymptomSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomSelectionView()
    }
}
