//
//  DetailViewModel.swift
//  SwiftUICrypto
//
//  Created by Rahul on 4/8/21.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("RECIEVED COIN DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
        
    }
    
}

