//
//  Interactor.swift
//  CryptoViper
//
//  Created by Pelin Üstünel on 7.09.2023.
//

import Foundation


// Interactor talks to -> Presenter
// Class, Protocol



protocol AnyInteractor {
    var presenter : AnyPresenter? {get set}
    func downloadCrypto()
}

class CryptoInteractor : AnyInteractor {
    
    var presenter: AnyPresenter?
    
    func downloadCrypto() {
    
        guard let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json") else{
            self.presenter?.interactorDidDownloadCrypto(result: .failure(NetworkError.NetworkFailed))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let cryptos = try JSONDecoder().decode([Crypto].self, from: data)
                self?.presenter?.interactorDidDownloadCrypto(result: .success(cryptos))
            } catch{
                self?.presenter?.interactorDidDownloadCrypto(result: .failure(NetworkError.ParsingFailed))
            }
        }
        
        task.resume()
                
    }
    
    
}
