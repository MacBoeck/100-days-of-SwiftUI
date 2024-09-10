import Cocoa
import Foundation

// Funktion zur Berechnung der Frequenz eines Tons in gleichstufiger Stimmung (Equal Temperament)
func berechneEqualTemperament(grundton: Double, halbtonSchritte: Int) -> Double {
    return grundton * pow(2.0, Double(halbtonSchritte) / 12.0)
}

// Funktion zur Berechnung der Frequenzen von Grundton' bis Grundton'' in gleichstufiger Stimmung
func frequenzenEqualTemperament(grundton: Double, startIndex: Int) -> [(String, Double)] {
    let tonNamen = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]  // Starte bei A
    var frequenzen: [(String, Double)] = []
    
    // Berechne die Frequenzen für eine Oktave, beginnend mit dem Grundton
    for i in 0..<12 {
        let frequenz = berechneEqualTemperament(grundton: grundton, halbtonSchritte: i)
        let tonIndex = (startIndex + i) % 12  // Dynamische Startposition für den Grundton
        let tonName = tonNamen[tonIndex]
        frequenzen.append((tonName, frequenz))
    }
    
    return frequenzen
}

// Funktion zur Berechnung der reinen Intervalle in der gewünschten Reihenfolge
func berechneReineIntervalle(grundfrequenz: Double) -> [Double] {
    let intervallVerhaeltnisse: [Double] = [
        1.0,                 // Prime
        16.0 / 15.0,         // Kleine Sekunde
        9.0 / 8.0,           // Große Sekunde
        6.0 / 5.0,           // Kleine Terz
        5.0 / 4.0,           // Große Terz
        4.0 / 3.0,           // Reine Quarte
        17.0 / 12.0,         // Tritonus
        3.0 / 2.0,           // Reine Quinte
        8.0 / 5.0,           // Kleine Sexte
        5.0 / 3.0,           // Große Sexte
        9.0 / 5.0,           // Kleine Septime
        15.0 / 8.0           // Große Septime
    ]
    
    var intervalle: [Double] = []
    
    for verhältnis in intervallVerhaeltnisse {
        var frequenz = grundfrequenz * verhältnis
        
        // Bringe die Frequenz in dieselbe Oktave
        while frequenz > grundfrequenz * 2 {
            frequenz /= 2
        }
        intervalle.append(frequenz)
    }
    
    return intervalle
}

// Funktion zur Formatierung der Ausgabe in deutscher Notation
func formatFrequenzDE(_ frequenz: Double) -> String {
    let formatter = NumberFormatter()
    formatter.locale = Locale(identifier: "de_DE")
    formatter.numberStyle = .decimal
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 2
    return formatter.string(from: NSNumber(value: frequenz)) ?? ""
}

// Zuordnung der Grundtöne zu ihrem Halbtonabstand von A
let tonNamenAlle = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
let tonZuHalbtonSchritte: [String: Int] = [
    "C": -9, "C#": -8, "D": -7, "D#": -6, "E": -5, "F": -4,
    "F#": -3, "G": -2, "G#": -1, "A": 0, "A#": 1, "B": 2
]

// Iteriere über alle 12 Töne
for grundtonName in tonNamenAlle {
    print("\n====== Tabelle für den Grundton \(grundtonName) ======")

    // Berechne die Frequenz des gewählten Grundtons relativ zum Kammerton A = 440 Hz
    let halbtonSchritteZumA = tonZuHalbtonSchritte[grundtonName] ?? 0
    let grundfrequenz = berechneEqualTemperament(grundton: 440.0, halbtonSchritte: halbtonSchritteZumA)

    // Berechne die Frequenzen in Equal Temperament, beginnend mit dem Grundton
    let equalTemperamentFrequenzen = frequenzenEqualTemperament(grundton: grundfrequenz, startIndex: (12 + halbtonSchritteZumA) % 12)

    // Berechne die reinen Intervalle basierend auf dem Grundton
    let reineIntervalleFrequenzen = berechneReineIntervalle(grundfrequenz: grundfrequenz)

    // Ausgabe in Tabellenformat: Ton; Equal Temperament; Reine Stimmung
    print("Ton; Equal Temperament; Reine Stimmung")
    for i in 0..<equalTemperamentFrequenzen.count {
        let (tonName, equalFreq) = equalTemperamentFrequenzen[i]
        let reineFreq = formatFrequenzDE(reineIntervalleFrequenzen[i])
        let equalFreqFormatted = formatFrequenzDE(equalFreq)
        print("\(tonName); \(equalFreqFormatted); \(reineFreq)")
    }
}
