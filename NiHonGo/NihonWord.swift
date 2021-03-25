//
//  NipponWord.swift
//  NiHonGo
//
//  Created by MarkHsieH on 2021/3/22.
//

import Foundation

enum NihonWord: String, CaseIterable {
    case  a,  i,  u,  e,  o
    case ka, ki, ku, ke, ko
    case sa, si, su, se, so
    case ta, ti, tu, te, to
    
    case na, ni, nu, ne, no
    case ha, hi, hu, he, ho
    case ma, mi, mu, me, mo
    case ra, ri, ru, re, ro
    
    case ya, yu, yo
    case wa, wo
    case n
    
    var hiragana: Hiragana {
        switch self {
        case .a: return .あ
        case .i: return .い
        case .u: return .う
        case .e: return .え
        case .o: return .お
        
        case .ka: return .か
        case .ki: return .き
        case .ku: return .く
        case .ke: return .け
        case .ko: return .こ
        
        case .sa: return .さ
        case .si: return .し
        case .su: return .す
        case .se: return .せ
        case .so: return .そ
        
        case .ta: return .た
        case .ti: return .ち
        case .tu: return .つ
        case .te: return .て
        case .to: return .と
        
        case .na: return .な
        case .ni: return .に
        case .nu: return .ぬ
        case .ne: return .ね
        case .no: return .の
        
        case .ha: return .は
        case .hi: return .ひ
        case .hu: return .ふ
        case .he: return .へ
        case .ho: return .ほ
        
        case .ma: return .ま
        case .mi: return .み
        case .mu: return .む
        case .me: return .め
        case .mo: return .も
        
        case .ra: return .ら
        case .ri: return .り
        case .ru: return .る
        case .re: return .れ
        case .ro: return .ろ
        
        case .ya: return .や
        case .yu: return .ゆ
        case .yo: return .よ
            
        case .wa: return .わ
        case .wo: return .を
        
        case .n: return .ん
        }
    }
    
    var column: Column {
        switch self.rawValue.suffix(1) {
        case "a": return .あ段
        case "i": return .い段
        case "u": return .う段
        case "e": return .え段
        case "o": return .お段
        default: return .無段
        }
    }
    
    var row: Row {
        switch self.rawValue.prefix(1) {
        case "a", "i", "u", "e", "o": return .あ行
        case "k": return .か行
        case "s": return .さ行
        case "t": return .た行
        case "n": return .な行
        case "h": return .は行
        case "m": return .ま行
        case "y": return .や行
        case "r": return .ら行
        case "w": return .わ行
        default: return .無行
        }
    }
    
    enum Column {
        case あ段
        case い段
        case う段
        case え段
        case お段
        case 無段
    }
    
    enum Row: String {
        case あ行
        case か行
        case さ行
        case た行
        case な行
        case は行
        case ま行
        case や行
        case ら行
        case わ行
        case 無行
    }
    
    enum Hiragana: String {
        case あ
        case い
        case う
        case え
        case お
        
        case か
        case き
        case く
        case け
        case こ
        
        case さ
        case し
        case す
        case せ
        case そ
        
        case た
        case ち
        case つ
        case て
        case と
        
        case な
        case に
        case ぬ
        case ね
        case の
        
        case は
        case ひ
        case ふ
        case へ
        case ほ
        
        case ま
        case み
        case む
        case め
        case も
        
        case ら
        case り
        case る
        case れ
        case ろ
        
        case や
        case ゆ
        case よ
        case わ
        case を
        
        case ん
    }
}
