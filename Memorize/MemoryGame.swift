//
//  MemoryGame.swift
//  Memorize
//
//  Created by Zhiway Zhang on 2021/3/31.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        //card.ChangeFaceUp()
        print("card chosen: \(card)")
    }
    
    init(numberOfParisOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfParisOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        
        mutating func ChangeFaceUp() {
            self.isFaceUp = !self.isFaceUp
        }
        
    }
    
}
