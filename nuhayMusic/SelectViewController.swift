//
//  SelectViewController.swift
//  nuhayMusic
//
//  Created by Harvin Shibu on 03/11/22.
//

import UIKit
import AVFoundation

class SelectViewController: UIViewController {
    @IBOutlet weak var artists: UILabel!
    
    @IBOutlet weak var playSong: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var cover1: UIImageView!
    var audioPlayer : AVAudioPlayer?
    let musicList = TrackList()
    
    @IBOutlet weak var songTitle: UILabel!
    
    var img : String = ""
    var mTitle : String = ""
    var mArtist : String = ""
    var songFile : String = ""
    var songNo : Int = 0
    var count : Int = 0
    var checkPlayIcon : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artists.text = mArtist
        songTitle.text = mTitle
        cover1.image = UIImage(named: img)
        slider.setThumbImage(UIImage(named: "circle"), for: .normal)
        playMusic(mFile: songFile)
        count = songNo
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        if audioPlayer!.isPlaying {
            audioPlayer?.stop()
            goToMain()
        }
        else{
            goToMain()
        }
        
    }
    
    @IBAction func nextSong(_ sender: Any) {
        count = count + 1
        if count<14{
            nextMusic(mNo: count)
        }
        else{
            count = 0
            nextMusic(mNo: count)
        }
        
    }
    
    @IBAction func playButton(_ sender: Any) {
        if audioPlayer!.isPlaying{
            audioPlayer?.pause()
            playSong.setImage(UIImage(named: "play"), for: .normal)
        }
        else{
            audioPlayer?.play()
            playSong.setImage(UIImage(named: "pause"), for: .normal)
        }
    }
    
    func playMusic(mFile : String){
        let fileUrl = Bundle.main.url(forResource: mFile, withExtension: "mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: fileUrl!)
        }
        catch{
            print(error)
        }
        audioPlayer?.play()
    }
    
    @IBAction func previousButton(_ sender: Any) {
        count = count - 1
        if count<0{
            count = 13
            previousMusic(mNo: count)
        }
        else{
            previousMusic(mNo: count)
        }
        
        
    }
    
    func goToMain(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let sViewController = storyBoard.instantiateViewController(withIdentifier: "mainVC") as! ViewController
        self.present(sViewController, animated:true, completion:nil)
    }
    func nextMusic(mNo : Int){
        artists.text = musicList.mList[mNo].artist
        songTitle.text = musicList.mList[mNo].music
        cover1.image = UIImage(named: musicList.mList[mNo].img)
        playMusic(mFile: musicList.mList[mNo].songFile)
        
    }
    
    func previousMusic(mNo : Int){
        artists.text = musicList.mList[mNo].artist
        songTitle.text = musicList.mList[mNo].music
        cover1.image = UIImage(named: musicList.mList[mNo].img)
        playMusic(mFile: musicList.mList[mNo].songFile)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
