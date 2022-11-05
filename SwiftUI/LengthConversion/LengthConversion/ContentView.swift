//
//  ContentView.swift
//  LengthConversion
//
//  Created by Ivaylo Ivanov on 10/18/22.
//

//You need to build an app that handles unit conversions: users will select an input unit and an output unit, then enter a value, and see the output of the conversion.

// meters, kilometers, feet, yards, miles


import SwiftUI

struct ContentView: View {
    
    @State private var inputUnit = ""
    @State private var secondUnit = ""
    @State private var enteredValue: Double = 0
    @FocusState private var lengthIsFocused: Bool
    
    
    let units = ["meters", "kilometers", "miles"]
    
    var finalResult: Double {
        var result: Double = 0
        if inputUnit == "meters" && secondUnit == "kilometers" {
            result = enteredValue * 1000
        } else if inputUnit == "kilometers" && secondUnit == "meters" {
            result = enteredValue / 1000
        } else if inputUnit == "meters" && secondUnit == "miles" {
            result = enteredValue * 1600
        } else if inputUnit == "kilometers" && secondUnit == "miles" {
            result = enteredValue * 1.6
        } else if inputUnit == "miles" && secondUnit == "meters" {
            result = enteredValue / 1600
        } else if inputUnit == "miles" && secondUnit == "kilometers" {
            result = enteredValue / 1.6
        } else if inputUnit == "kilometers" && secondUnit == "kilometers" {
            result = enteredValue
        } else if inputUnit == "miles" && secondUnit == "miles" {
            result = enteredValue
        } else if inputUnit == "meters" && secondUnit == "meters" {
            result = enteredValue
        }
        return result
    }
    
    
    var body: some View {
            NavigationView {
                Form {
                    Section {
                        Picker("Convert From:", selection: $inputUnit) {
                            ForEach(units, id: \.self) {
                                Text("\($0)")
                            }
                        }
                    }
                    Section {
                        Picker("Convert To:", selection: $secondUnit) {
                            ForEach(units, id: \.self) {
                                Text("\($0)")
                            }
                        }
                    }
                    Section {
                        TextField("Value", value: $enteredValue, format: .number)
                            .keyboardType(.numberPad)
                            .focused($lengthIsFocused)
                    } header: {
                        Text("Convert \(inputUnit)")
                    }
                    Section {
                        Text(finalResult, format: .number)
                    } header: {
                        Text("To \(secondUnit)")
                    }
                }
                .navigationTitle("Convert Length")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        
                        Button("Done") {
                            lengthIsFocused = false
                        }
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
