//
//  TrackList.swift
//  nuhayMusic
//
//  Created by Harvin Shibu on 03/11/22.
//

import Foundation

class TrackList{
    
    var mList = [TrackModel]()
    
    init(){
        
        mList.append(TrackModel(img: "a1", music: "We Don't Talk Anymore", artist: "Charlie Puth",songFile: "We_Dont_Talk_Anymore"))
        
        
        mList.append(TrackModel(img: "a2", music: "Montero", artist: "Lil Nas X",songFile: "Montero"))
        
        mList.append(TrackModel(img: "a3", music: "SAD!", artist: "XXXTentacion",songFile: "SAD"))
        
        mList.append(TrackModel(img: "a4", music: "Lucid Dreams", artist: "Juice WRLD",songFile: "Lucid_Dreams"))
        
        mList.append(TrackModel(img: "a5", music: "Counting Stars", artist: "One Republic",songFile: "Counting_Stars"))
        
        mList.append(TrackModel(img: "a6", music: "Waiting for love", artist: "Avicii",songFile: "Waiting_for_love"))
        
        mList.append(TrackModel(img: "a7", music: "Let it Go", artist: "Idina Menzel",songFile: "Let_it_go"))
        
        mList.append(TrackModel(img: "a8", music: "Love Story", artist: "Taylor Swift",songFile: "Love_Story"))
        
        mList.append(TrackModel(img: "a9", music: "Gangsta's Paradise", artist: "Coolio and Kylian Mash",songFile: "Gangstas_Paradise"))
        
        mList.append(TrackModel(img: "a10", music: "Hymn for the Weekend", artist: "Coldplay",songFile: "Hymn_Coldplay"))
        
        mList.append(TrackModel(img: "a11", music: "Let her go", artist: "Passenger",songFile: "Let_Her_Go"))
        
        mList.append(TrackModel(img: "a12", music: "Take me to church", artist: "Hozier",songFile: "Take_Me_to_Church"))
        
        mList.append(TrackModel(img: "a13", music: "All I Want", artist: "Kodaline",songFile: "All_I_Want"))
        
        mList.append(TrackModel(img: "a14", music: "I Ain't Worried", artist: "One Republic",songFile: "I_Aint_Worried"))
    }
}
