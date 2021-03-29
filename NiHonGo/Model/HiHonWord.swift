//
//  HiHonWord.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2021/3/26.
//

import Foundation

struct HiHonWord {
    
    let words: [NiHonSyllabary]
    var hiraganas: [String] {
        return words.map{ $0.hiragana.rawValue }
    }
    
    let partsOfSpeech: PartsOfSpeech
    var verbType: VerbType? {
        guard partsOfSpeech == .verb else {
            return nil
        }
        guard words.count == 0 else {
            return nil
        }
        
        //各種例外
        switch words {
        case [.su, .ru],
             [.ku, .ru]:
            return .typeIII
            
        case [.i, .ru],
             [.si, .ru],
             [.ki, .ru],
             [.ti, .ru],
             [.ha, .i, .ru],
             [.ha, .si, .ru],
//             [.ni, .gi, .ru],
             
             [.ke, .ru],
             [.te, .ru],
             [.he, .ru],
             [.a, .se, .ru],
             [.ka, .e, .ru],
             [.su, .ke, .ru],
             [.hu, .ke, .ru]
//             [.su, .be, .ru],
             :
            return .typeI //一類假二類
        default:
            break
        }
        
        if words.last?.column == .う段 {
            return .typeI
        } else if words.last == .ru {
            //倒數第二個字是否為上下一段
            let last2Col = words[words.count - 2].column
            if last2Col == .い段 || last2Col == .え段 {
                return .typeII
            }
        }
        
        return .typeUnknown
    }
    
    enum PartsOfSpeech { //日文的詞類叫做「品詞」
        
        ///=======十大=======
        case noun //名詞 (めいし)
        case adjective //形容詞 (けいようし)
        case adjectivalNoun //形容動詞 (けいようどうし)
        case verb //動詞 (どうし)
        case adverb //副詞 (ふくし)
        //連体詞 (れんたいし) -> 不知道英文怎麼翻, この、その、あの, other (not い or な) adjective
        case conjunction //接続詞 (せつぞくし)
        case particle//助詞 (じょし)
        case auxiliaryVerb//助動詞 (じょどうし)
        case interjection //感動詞 (かんどうし)
        //=======十大以外=======
        case pronoun //代名詞
        
        /**
         /*
         英文起初將形容動詞翻譯為Na-adjective（な形容詞），之後由於發現形容動詞與名詞有諸多相似性，故現在稱之為Adjectival noun（形容詞性名詞）
         ...靠北形容動詞跟動詞沒關係
          */
         
         //日文的
         //https://www.sigure.tw/learn-japanese/grammar/n5/00.php
         //https://hkotakujapanese.com/%E3%80%90%E6%97%A5%E6%96%87%E6%96%87%E6%B3%95%E5%9F%BA%E7%A4%8E%E3%80%91/
         //https://coggle.it/diagram/WueIleYCsxZmX6SY/t/basic-japanese-parts-of-speech
         
         //英文的
         //http://www.wordsgo.com/articles/eight_speech.html
         //conjunction(連接詞) -> and, but, or, so, because, when (連接兩個句子)
         //preposition(介系詞) -> in, on, at, of, for, with, from (連接兩個東西)
         */
    }
    
    enum VerbType {
        case typeI
        case typeII
        case typeIII
        case typeUnknown
    }
}
