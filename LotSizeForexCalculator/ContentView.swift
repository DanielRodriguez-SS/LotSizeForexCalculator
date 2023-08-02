//
//  ContentView.swift
//  LotSizeForexCalculator
//
//  Created by Daniel Rodriguez on 31/3/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var depositCurrency: String = ""
    @State private var openPrice: String = ""
    @State private var forexPair: String = ""
    @State private var stopLoss: String = ""
    @State private var accountBalance: String = ""
    @State private var riskPercentage: String = ""
    @State private var contractSize: String = "1000000"
    @State private var theresult = 0
    @State private var conter: Int = 0
    
    func increment(){
        conter = conter + 1
    }
    func clear(){
        conter = 0
    }
    
    var body: some View {
        VStack {
            HStack {
                Label("Deposit Currency", systemImage: "centsign.circle")
                TextField("AUD", text: $depositCurrency)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal)
            HStack {
                Label("Forex Pair", systemImage: "f.square")
                TextField("AUDUSD", text: $forexPair)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal)
            HStack {
                Label("Stop Loss", systemImage: "hand.raised.fill")
                TextField("", text: $stopLoss)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal)
            HStack {
                Label("Open Price", systemImage: "door.left.hand.open")
                TextField("", text: $openPrice)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal)
            HStack {
                Label("Account Balance", systemImage: "dollarsign.arrow.circlepath")
                TextField("", text: $accountBalance)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal)
            HStack {
                Label("Risk", systemImage: "umbrella.percent.fill")
                TextField("2", text: $riskPercentage)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal)
            HStack {
                Label("Contract Size", systemImage: "batteryblock.fill")
                TextField("1000000", text: $contractSize)
                    .disableAutocorrection(true)
            }
            .padding(.horizontal)
            Spacer()
            VStack(alignment: .leading) {
                HStack{
                    Button("Calculate", action: increment)
                    Button("Clear", action: clear)
                }
                .buttonStyle(.bordered)
                Label(String(conter), systemImage: "bolt")
            }
            
        }
        .textFieldStyle(.roundedBorder)
        .background(Color.green)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
