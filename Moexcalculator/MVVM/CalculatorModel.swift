import Foundation

struct CalculatorModel {
    // справочник, в котором мы будем хранить курсы валют.
    private(set) var currencyRates: CurrencyRates = [.RUR: 1, .CNY: 12]
 
    //функция setCurrencyRates, она устанавливает значения курсов. Её мы используем при загрузке курсов валют с сайта МосБиржи.
    mutating func setCurrencyRates(_ currencyRates: CurrencyRates) {
        self.currencyRates = currencyRates
    }

    func convert(_ source: CurrencyAmount, to target: Currency) -> Double {
        guard
            let sourceRate = currencyRates[source.currency],
            let targetRate = currencyRates[target]
        else { return 0 }
        
        if targetRate.isZero {
            return 0
        } else {
            return source.amount * sourceRate / targetRate
        }
    }
}
