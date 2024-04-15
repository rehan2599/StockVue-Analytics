//
//  ArticleCellView.swift
//  Stocks
//
//  Created by Rehan Khan on 1/26/22.
//

import SwiftUI

struct ArticleCellView: View {
    
    let article: ArticleViewModel
    let onSelected: (ArticleViewModel) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            AsyncImage(url: article.urlToImage) { image in
                image.resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            } placeholder: {
                
                Image("news-placeholder")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
            }
            
            Text(article.source)
            Text(article.title)
                .font(.title)
                .fontWeight(.bold)
            
        }.onTapGesture {
            onSelected(article)
        }
    }
}


