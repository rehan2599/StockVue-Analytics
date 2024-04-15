

import Foundation

@MainActor
class StockArticleListViewModel: ObservableObject {
    
    @Published var stockArticles: [StockArticleViewModel] = []
    
    func fetchArticles() async {
        
        do {
            
            let articles = try await Webservice().fetchBusinessArticles()
            let stockArticleVM = StockArticleViewModel(articles: articles)
            self.stockArticles.append(stockArticleVM)
            
        } catch {
            print(error)
        }
    }
}
