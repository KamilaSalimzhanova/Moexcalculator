//
//  MoexcalculatorApp.swift
//  Moexcalculator
//
//  Created by kamila on 10.08.2024.
//

import SwiftUI

@main
struct MoexcalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView(viewModel: CalculatorViewModel())
        }
    }
}
