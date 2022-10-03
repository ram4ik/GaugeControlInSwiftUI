//
//  ContentView.swift
//  GaugeControlInSwiftUI
//
//  Created by Ramill Ibragimov on 03.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.2
    
    var body: some View {
        VStack {
            Gauge(value: progress, in: 0...100) {
                Text("Please wait...")
            } currentValueLabel: {
                Text(progress.formatted(.percent))
            } minimumValueLabel: {
                Text(0.formatted(.percent))
            } maximumValueLabel: {
                Text(100.formatted(.percent))
            }
            
            Slider(value: $progress, in: 0...100) {
                Text("")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
