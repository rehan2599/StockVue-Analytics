

import Foundation

@MainActor
class StockListViewModel: ObservableObject {
    
    let stockState: StockState
    
    init(stockState: StockState) {
        self.stockState = stockState
    }
    
    var stocks: [StockViewModel] {
        stockState.stocks
    }
    
    func getStocks() async {
        
        do {
            let stocks = try await Webservice().fetchStocks()
            stockState.stocks = stocks.map(StockViewModel.init)
        } catch {
            print(error)
        }
    }
    
}
