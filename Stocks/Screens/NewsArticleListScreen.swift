

import SwiftUI

struct NewsArticleListScreen: View {
    
    @StateObject private var vm = StockArticleListViewModel()
    
    var body: some View {
        ScrollView {
            Text("Top Stories")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            NewsArticleListView(stockArticles: vm.stockArticles)
            
        }.task {
            await vm.fetchArticles()
        }
    }
}

struct NewsArticleListScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewsArticleListScreen()
    }
}
