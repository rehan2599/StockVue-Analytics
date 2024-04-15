//
//  NewsArticleListView.swift
//  Stocks
//
//  Created by Rehan Khan on 1/26/22.
//

import SwiftUI

struct NewsArticleListView: View {
    
    @EnvironmentObject private var routeState: RouteState
    
    let stockArticles: [StockArticleViewModel]
    
    var body: some View {
        ForEach(stockArticles) { stockArticle in
            ArticlesGridView(articles: stockArticle.articles) { article in 
                guard let articleURL = article.url else { return }
                routeState.push(.businessArticles)
                routeState.route = .articleDetail(articleURL)
            }
        }
    }
}

struct NewsArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsArticleListView(stockArticles: [])
    }
}
