//
//  ArticleViewModel.swift
//  GoddNews
//
//  Created by Hussam Nagy on 31/12/2022.
//

import Foundation

//Parent model because we are going represent more than one article
struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInsection(_ section:Int) -> Int{
        return self.articles.count
    }
    
    func articleAtIndex(_ index:Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}



// This represents a single article
struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel{
    init(_ article:Article) {
        self.article = article
    }
}

extension ArticleViewModel{
    var title: String{
        return self.article.title
        
    }
}

extension ArticleViewModel{
    var description: String{
        return self.article.description
    }
}
