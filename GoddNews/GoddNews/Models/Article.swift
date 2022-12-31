//
//  Article.swift
//  GoddNews
//
//  Created by Hussam Nagy on 31/12/2022.
//

import Foundation


// Here I used Decodable instead if Codable although it will work but i will not send any data.
struct ArticleList:Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description : String
}
