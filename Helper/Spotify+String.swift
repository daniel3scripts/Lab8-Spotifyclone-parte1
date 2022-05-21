//
//  Spotify+String.swift
//  SpotifyClone
//
//  Created by MAC15 on 20/05/22.
//

import Foundation

class HelperString{
    static let imageProfileLink="https://afterpop.tv/wp-content/uploads/musica.jpg"
    
    
    static func getURLFromString(url:String) -> URL? {
        guard let url = URL(string:url) else {return nil}
        return url

    }
}
