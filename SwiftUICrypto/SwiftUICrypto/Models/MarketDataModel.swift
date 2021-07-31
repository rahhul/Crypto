//
//  MarketDataModel.swift
//  SwiftUICrypto
//
//  Created by Rahul on 30/7/21.
//

import Foundation

// MARKET JSON DATA
/*
 URL: https://api.coingecko.com/api/v3/global

 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 8748,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 631,
     "total_market_cap": {
       "btc": 40862628.393856674,
       "eth": 678216179.831507,
       "ltc": 11597348763.807503,
       "bch": 3020537469.80452,
       "bnb": 5123858692.914961,
       "eos": 415563575356.3511,
       "xrp": 2193794330464.185,
       "xlm": 5955277650876.656,
       "link": 83376280570.27979,
       "dot": 108893998066.1396,
       "yfi": 53122232.97366804,
       "usd": 1584939030533.4893,
       "aed": 5821798046955.592,
       "ars": 153076105965276.4,
       "aud": 2152180784866.2708,
       "bdt": 134552221387440.78,
       "bhd": 596918152740.4907,
       "bmd": 1584939030533.4893,
       "brl": 8096502543577.253,
       "cad": 1971334486665.31,
       "chf": 1436476206604.3848,
       "clp": 1206170301016597.5,
       "cny": 10245362881174.594,
       "czk": 34035510111312.336,
       "dkk": 9923445914682.92,
       "eur": 1334165222305.3884,
       "gbp": 1136233281355.275,
       "hkd": 12320238264826.578,
       "huf": 476027110454540.1,
       "idr": 22913859799180268,
       "ils": 5121942858999.048,
       "inr": 117876104694633.16,
       "jpy": 173978901468468.34,
       "krw": 1826723547986807.5,
       "kwd": 476179082333.4794,
       "lkr": 316173989047628.94,
       "mmk": 2608625578948750.5,
       "mxn": 31436508069775.176,
       "myr": 6691612586912.39,
       "ngn": 652154862893615.5,
       "nok": 13931007046740.668,
       "nzd": 2265969897624.392,
       "php": 79284990063407.23,
       "pkr": 257693747131751.2,
       "pln": 6082835920345.426,
       "rub": 115604660417597.25,
       "sar": 5944271040662.045,
       "sek": 13581654785630.48,
       "sgd": 2145589023438.2815,
       "thb": 52112001269487.01,
       "try": 13319090615954.223,
       "twd": 44291595105028.43,
       "uah": 42524001360860.32,
       "vef": 158699945127.31818,
       "vnd": 36451651910661016,
       "zar": 23116018772524.83,
       "xdr": 1110245036071.6157,
       "xag": 62243598811.98881,
       "xau": 869323208.8573151,
       "bits": 40862628393856.67,
       "sats": 4086262839385667.5
     },
     "total_volume": {
       "btc": 2744477.035772404,
       "eth": 45551370.628833435,
       "ltc": 778918503.5120825,
       "bch": 202869860.49127674,
       "bnb": 344136269.98507166,
       "eos": 27910703111.805824,
       "xrp": 147342899804.06223,
       "xlm": 399977275004.0916,
       "link": 5599842603.067878,
       "dot": 7313701755.682833,
       "yfi": 3567874.956058924,
       "usd": 106450048451.9125,
       "aed": 391012317973.5636,
       "ars": 10281126644568.086,
       "aud": 144547988542.60962,
       "bdt": 9036997770939.105,
       "bhd": 40091110797.910736,
       "bmd": 106450048451.9125,
       "brl": 543789427511.7482,
       "cad": 132401718664.10118,
       "chf": 96478765963.37326,
       "clp": 81010615872874.55,
       "cny": 688114403202.8536,
       "czk": 2285943894772.5513,
       "dkk": 666493333861.7845,
       "eur": 89607202435.7055,
       "gbp": 76313401034.88533,
       "hkd": 827470290632.2202,
       "huf": 31971645593996.867,
       "idr": 1538974962981410.8,
       "ils": 344007595878.84686,
       "inr": 7916971450846.782,
       "jpy": 11685031495940.338,
       "krw": 122689142260564.95,
       "kwd": 31981852556.89245,
       "lkr": 21235350890453.953,
       "mmk": 175204417281921,
       "mxn": 2111385827920.5251,
       "myr": 449432104563.9744,
       "ngn": 43801001436508.48,
       "nok": 935655155523.7533,
       "nzd": 152190463321.16623,
       "php": 5325057223758.469,
       "pkr": 17307613314750.9,
       "pln": 408544534503.54504,
       "rub": 7764413309058.259,
       "sar": 399238032567.5909,
       "sek": 912191435843.9829,
       "sgd": 144105262791.09808,
       "thb": 3500024261624.6206,
       "try": 894556707917.3411,
       "twd": 2974778432553.178,
       "uah": 2856060654717.486,
       "vef": 10658843351.489992,
       "vnd": 2448220428224305,
       "zar": 1552552666661.4531,
       "xdr": 74567939590.41924,
       "xag": 4180497786.7996354,
       "xau": 58386787.07538959,
       "bits": 2744477035772.4043,
       "sats": 274447703577240.4
     },
     "market_cap_percentage": {
       "btc": 45.93735887674037,
       "eth": 17.2608527472644,
       "usdt": 3.913172146285404,
       "bnb": 3.017246032758216,
       "ada": 2.548696996404621,
       "xrp": 2.1124399267370175,
       "usdc": 1.7167330571533832,
       "doge": 1.6513692955493198,
       "dot": 0.9373806540692176,
       "busd": 0.7723779987855482
     },
     "market_cap_change_percentage_24h_usd": -0.6306835326349648,
     "updated_at": 1627650187
   }
 }
 
 
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}


struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}

















