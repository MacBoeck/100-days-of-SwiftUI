import Cocoa

var kühlschrankInhalt = ["Milch", "Ei", "Käse", "Ei", "Käse", "Salat"]
var kühlschrankKategorie = Set(kühlschrankInhalt)

print("Im Kühlschrank sind \(kühlschrankKategorie.count) verschiedene Produkte. Sie benötigen aber Platz für \(kühlschrankInhalt.count).")


