// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/////////////////////////////////////////////////////////////////////////////////////
//Hinweis:
//
//
//Manche Variablen führen im Namen im Gegensatz zum Buch einen oder auch mehrere _ .
//Da in einer Playground-Umgebung eine einma verwendete Variable global gültig ist,
//müssen hier unterschiedliche Bezeichner verwendet werden.
/////////////////////////////////////////////////////////////////////////////////////

var variable = 1
//var variable = 1; //<- Alternativ mit Semikolon!!!

// Swift ist case sensitive!
var zahl = 5
var ZAHL = 10

//Konstanten mit Swift
let EuroDmWechselkurs = 1.95583

//Deklaration von Variablen mit Datentyp
var Zahl:Int = 5

//Strings
var zeichenkette:String = "Hallo Welt"

//Die print-Anweisung
print("Hallo Welt")
print(42)

//Umwandlung Gross- / Kleinbuchstaben
var stringGross = "HALLO WELT"
var stringKlein = stringGross.lowercased()

//Umwandlung Zeichen in ganze Zahl
var eineZahl = "1000"
var einInt = Int(eineZahl)

//Ausgabe von String-Inhalten mit print (und String Interpolation)
var meinNameAlsString = "Christian Bleske"
print(meinNameAlsString)

print("Mein Name ist \(meinNameAlsString)")

var vorname = "Christian"
var nachname = "Bleske"
print("Mein Vorname ist \(vorname) und der Nachname ist \(nachname)")

var zahl1 = 1
var zahl2 = 2
print("\(zahl1) + \(zahl2) = \(zahl1 + zahl2)")

//Kommentare
var _zahl1 = 10
//Das ist ein Kommentar

var _zahl2 = 20
/* Das ist ein Kommentar,
welcher über mehr als eine Zeile geht */

//Ganze Zahlen (Integer)
var minimalWert = UInt8.min;
var maximalWert = UInt8.max;

print(minimalWert)		//Ausgabe 0
print(maximalWert)		//Ausgabe 255

var grosseZahl:UInt32 = 100000
var kleineZahl:UInt8 = 2
//var ergebnis = grosseZahl + kleineZahl //<- Fehlermeldung
var ergebnis = grosseZahl + UInt32(kleineZahl)

//Fliesßkommazahlen (Float & Double)
var fzahl:Float = 123.123

//Rechnen mit ganzen und Fließkommazahlen
var zahlI:Int = 100
var zahlF:Float = 1000.1234

//var zahlIF:Int = zahlI + zahlF        //<- Fehlermeldung
//var zahlIF:Int = zahlI + Int(zahlF)   //<- Ergebnis nicht korrekt
//var zahlIF:Int = Float(zahlI) + zahlF //<- Fehlermeldung

//So ist es korrekt...
var zahlIF:Float = Float(zahlI) + zahlF

//Wahrheitswerte
var wahrOderfalsch:Bool = true
//var wahrOderfalsch = true //<- auch möglich

//Type Aliases
typealias KleineZahlen = UInt8

var m_var:KleineZahlen = 100

//Aufzählungen (Enumeration)
enum Aufzaehlung {
    case Gestern
    case Heute
    case Morgen
}

var zeitpunkt = Aufzaehlung.Heute

//Alternaive Deklaration
//enum Aufzaehlung {
//    case Gestern, Heute, Morgen
//}

//Assoziierte Werte in Enumerationen
enum Zahlen {
    case Eins(Int)
    case Zwei(Int)
    case Drei(Int)
}

var _eineZahl = Zahlen.Eins(1)

//Mit Strings geht es auch...
enum _Zahlen {
    case Eins(String)
    case Zwei(String)
    case Drei(String)
}

/*var eineZahl = Zahlen.Eins("Eins")

enum Zahlen {
    case EinsBisDrei(Int, Int, Int)
    case VierBisFuenf(String, String, String)
    case SechsBisNeun(Int, Int, Int)
}

var eineZahl = Zahlen.EinsBisDrei(1, 2, 3)*/

//Felder (Arrays)
var spieler: [String] = ["Max Meier","Paul Müller", "Benjamin Bleske", "Dominik Broy"]

//Alternative Schreibweise
//var spieler = ["Max Meier","Paul Müller", "Benjamin Bleske", "Dominik Broy"]

var zahlen: [Int] = [1,2,3,4,5]

var _zahlen = [Int]()
_zahlen.append(1)
_zahlen.append(2)
_zahlen.append(3)

var out = _zahlen[2]
print(String(out))

var _spieler = ["Max Meier","Paul Müller", "Benjamin Bleske", "Dominik Broy"]
var ausgabe = _spieler[2]
print(ausgabe)
spieler.insert("Thomas Müller", at:2)
ausgabe = spieler[2]
print(ausgabe)

spieler[2..<3] = ["Peter Schneider", "Frank Kaminski"]
ausgabe = spieler[2]
print(ausgabe)
spieler.remove(at: 2)
ausgabe = spieler[2]
print(ausgabe)

var anzahl = spieler.count

var array: [[Int]] = [[1,2,3],[4,5,6]]
print(String("Anzahl="+String(array.count)))

//Dictionarys
var spielerliste: Dictionary<Int, String> = [1: "Christian", 2: "Bernd", 3: "Florian"]

var kennzeichen: Dictionary<String, String> = ["EN": "Ennepetal", "BO": "Bochum", "DO": "Dortmund"]

//Alternative Schreibweise
//var kennzeichen = ["EN": "Ennepetal", "BO": "Bochum", "DO": "Dortmund"]

print(kennzeichen["EN"])
kennzeichen["EN"] = "Ennepetal"
kennzeichen["B"] = "Berlin"

var result = kennzeichen.updateValue("Bern", forKey: "B")
print(result)

kennzeichen["B"] = nil

var _result = kennzeichen.removeValue(forKey: "B")

var spielerListeMitNamen = Dictionary<Int, String>()
spielerListeMitNamen[2] = "Christian Bleske"

//Fallunterscheidung
var a:Int = 5
var b:Int = 10

if (a>b) {
    print("Der Wert in a ist größer als in b")
} else {
    print("Der Wert in b ist größer als in a")
}

//Mehrfachauswahl
var auswahl = 22

switch(auswahl) {
case 5:
    print("Die Variable enthält den Wert 5")
case 10:
    print("Die Variable enthält den Wert 10")
case 20:
    print("Die Variable enthält den Wert 20")
default:
    print("Die Variable enthält weder 5, 10 noch 20!")
}

var auswahl2 = "10"

switch(auswahl2)
    {
case "5":
    print("Die Variable enthält den Wert 5")
case "10":
    print("Die Variable enthält den Wert 10")
case "20":
    print("Die Variable enthält den Wert 20")
default:
    print("Die Variable enthält weder 5, 10 noch 20!")
}

let auswahl3 = "braunlila"

switch auswahl3 {
    
case "rot":
    let ausgabe = "Rot wurde gewählt."
    
case "blau", "gelb":
    let ausgabe = "Blau oder Gelb wurde gewählt."
    
case let x where x.hasSuffix("lila"):
    let ausgabe = "Enthält Lila"
    
default:
    let ausgabe = "Eine andere Farbe wurde gewählt."
}

//Schleifen

//Schleifen kopfgesteuert (while-Schleife)
var d:Int = 0
var e:Int = 10

while (d<=e) {
    d = d + 1;
    print(String(d))
}

//Schleifen fußgesteuert (do...while-Schleife)
//var d:Int = 0
//var e:Int = 10
repeat
{
    d = d + 1;
    print(String(d))
} while (d < e)

//Zählschleifen (for-Schleife)
//Bis Swift 2.2
/*for var i = 1; i <= 10; i++
{
    a = a + i;
    print(String(a))
}*/

//Ab Swift 3.0
for i in 0..<10
{
    a = a + i;
    print(String(a))
}

var x=2
//Bis Swift 2.2
/*for var y = 0; y < 5; ++y
{
    x * y
}*/

//Ab Swift 3.0
for y in 0..<5
{
    x * y
}

x = 0
for y in 0..<3 {
    x += y
    print(String(x))
}

for element in 1...5 {
    print("\(element) mal 5 ist \(element * 5)")
}

var _spielerliste: [String] = ["Max Meier","Paul Müller", "Benjamin Bleske", "Dominik Broy"]

for spieler in _spielerliste {
    print(spieler)
}

var _kennzeichen: Dictionary<String, String> = ["EN": "Ennepetal", "BO": "Bochum", "DO": "Dortmund"]

for (code, name) in _kennzeichen {
    print("\(code): \(name)")
}

//Funktionen

func ausgabeZeile()
{
    print("Beispiel für eine Funktion")
}

func ausgabeZeile(ausgabe:String)
{
    print(ausgabe)
}

func ausgabeZeile(ausgabeTeil1:String, ausgabeTeil2:String)
{
    print(ausgabeTeil1 + ausgabeTeil2)
}

ausgabeZeile(ausgabeTeil1: "Beispiel für ",
    ausgabeTeil2: "eine Funktion mit mehr als einem Parameter")

func ansage(text:String, zahl:Int) {
    print(String(zahl) + text)
}
ansage(text: " ist eine Primzhal", zahl: 3)

//Funktionen – Werte zurückgeben

func calcCelsius(inputGradF:Double) -> Double {
    return (inputGradF-32)*5/9
}

print("Wert nach Umrechung= \(calcCelsius(inputGradF: 20))")

//Funktionen – Mehrere Werte zurückgeben (Tupel)
func calcGrad(inputGradC:Double) -> (f_out:Double,k_out:Double) {
    let f_out = inputGradC * 1.8 + 32
    let k_out = inputGradC+273.15
    return (f_out, k_out)
}
let resultGrad = calcGrad(inputGradC: 20)

print("Fahrenheit=\(resultGrad.f_out) Kelvin=\(resultGrad.k_out)")

//Funktionen – Externe Parameternamen

func calc(n1:Int, n2:Int, op:String) -> Int {
    var result = 0
    
    switch op {
    case "+":
        result = n1 + n2
    case "-":
        result = n1 - n2
    default:
        result = n1 * n2
    }
    return result
}

var newNumber = calc(n1: 2, n2: 5, op: "+")

func calc(numberOne n1:Int, numberTwo n2:Int, optype op:String) -> Int {
    var result = 0
    
    switch op {
    case "+":
        result = n1 + n2
    case "-":
        result = n1 - n2
    default:
        result = n1 * n2
    }
    return result
}

newNumber = calc(numberOne: 2, numberTwo:5, optype:"+")

//Funktionen – Parameter vorbelegen

func calcWithDefaultValue(numberOne n1:Int, numberTwo n2:Int, op: String = "+") -> Int {
    var result = 0
    
    switch op {
    case "+":
        result = n1 + n2
    case "-":
        result = n1 - n2
    default:
        result = n1 * n2
    }
    return result
}

newNumber = calcWithDefaultValue(numberOne: 2, numberTwo:5)

//Funktionen – Variadic Parameter

func primzahlenAddition(zahlen: Int...)->Int {
    var result = 0
    for zahl in zahlen {
        result += zahl
    }
    return result
}

var summe = primzahlenAddition(zahlen: 1,3,5,7,9)

//Funktionen – In-Out Parameter

func inoutbsp( z:inout Int) {
    z += 47
}

//Verschachtelte Funktionen

func addValue() -> ((Int) -> Int) {
    func addOne(p1: Int) -> Int {
        return 1 + p1
    }
    return addOne
}
var containsFunc = addValue()
containsFunc(13)

//Closures

var namen = ["Peter", "Alfred", "Christian", "Bernd"]
var sortiert = namen.sorted()

func rueckwaerts(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var _namen = ["Peter", "Alfred", "Christian", "Bernd"]

var _sortiert = _namen.sorted(by: rueckwaerts)
print(_sortiert)

var __sortiert = namen.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

//Optionals

var optInt = "123456"
var output = Int(optInt)
print(output)

var myOptInt:Int? = nil

if myOptInt != nil {
    print("Enthält einen Wert")
} else {
    print("Enthält nil")
}

var _optInt:String = "nil"

if let notOptInt = Int(optInt) {
    print("Die Variable enthält: \(notOptInt)")
} else {
    print("Der Inhalt konnte nicht umgewandelt werden.")
}

//Strukturen

struct BspStruktur {
    
}

var _variable = BspStruktur()

//struct Person {
//    var nachname:String
//    var vorname:String
//}

struct Person {
    var nachname:String
    var vorname:String
    
    func NamenAusgeben() {
        return print(nachname + " " + vorname)
    }
}

var myPerson = Person(nachname: "Bleske", vorname: "Christian")
myPerson.NamenAusgeben()


