//
//  Presenter.swift
//  CryptoViper
//
//  Created by Pelin Üstünel on 7.09.2023.
//

import Foundation

// Class, Protocol
// Presenter talks to -> Interactor, Router, View

enum NetworkError : Error {
    case NetworkFailed
    case ParsingFailed
}

protocol AnyPresenter {
    var router : AnyRouter? {get set}
    var interactor : AnyInteractor? {get set}
    var view : AnyView? {get set}

    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>)
    
}

class CryptoPresenter : AnyPresenter {
    
    var router: AnyRouter?
    
    var interactor: AnyInteractor? {
        didSet {
            interactor?.downloadCrypto()
        }
    }
    
    var view: AnyView?
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>) {
        switch result {
        case .success(let cryptos):
            view?.update(with: cryptos)
        case .failure(_):
            view?.update(with: "Error")        }
        
    }
    
    
}
