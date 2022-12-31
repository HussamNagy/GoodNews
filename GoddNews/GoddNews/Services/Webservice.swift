//
//  Webservices.swift
//  GoddNews
//
//  Created by Hussam Nagy on 31/12/2022.
//

import Foundation

class Webservice {
    
    func getArticles(url:URL, completion: @escaping ([Article]?) -> ()){
       
        URLSession.shared.dataTask(with: url){ data,response,error in
            
            if let error = error {
                print(error.localizedDescription)
                
                completion(nil)
            }else if let data = data {
                
                let articlesList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articlesList = articlesList {
                    completion(articlesList.articles)
                }
               
                print(articlesList?.articles)
                
            }
            
        }.resume()
    }
}
