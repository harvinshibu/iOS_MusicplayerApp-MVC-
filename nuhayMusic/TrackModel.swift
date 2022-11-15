//
//  TrackModel.swift
//  nuhayMusic
//
//  Created by Harvin Shibu on 03/11/22.
//

import Foundation

class TrackModel{
    let img : String
    let music : String
    let artist : String
    let songFile : String
    
    init(img: String, music: String, artist: String, songFile: String) {
        self.img = img
        self.music = music
        self.artist = artist
        self.songFile = songFile
    }
}
