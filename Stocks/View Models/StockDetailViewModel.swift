
import Foundation

@MainActor
class StockDetailViewModel: ObservableObject {
    
    @Published var articles: [ArticleViewModel] = []
    
    func fetchArticlesByStock(stock: StockViewModel) async {
        
        do {
            let articles = try await Webservice().fetchArticlesBy(stock: Stock.fromVM(stock))
            self.articles = articles.map(ArticleViewModel.init)
        } catch {
            print(error)
        }
        
    }
    
}
