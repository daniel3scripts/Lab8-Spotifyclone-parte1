
//
//  PlayList.swift
//  SpotifyClone
//
//  Created by MAC15 on
//

import Foundation

class PlayListViewModel {
    
    let request: Request = Request()
    
    var playList: PlayList? = nil
    
    func getPlayList() async {
        let data = await request.getDataFromAPI(url: "me/playlists")
        
        if data != nil {
            if let decoder = try? JSONDecoder().decode(PlayList.self, from: data!) {
                DispatchQueue.main.async(execute: {
                    self.playList = decoder
                })
            }
        }
    }
    
}
