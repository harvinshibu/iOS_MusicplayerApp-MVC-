//
//  ViewController.swift
//  nuhayMusic
//
//  Created by Harvin Shibu on 02/11/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var musicTable: UITableView!
    let musicList = TrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicTable.delegate = self
        musicTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.mList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = musicTable.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as! MusicListTableViewCell
        cell.cover.image = UIImage(named: musicList.mList[indexPath.row].img)
        cell.mName.text =   musicList.mList[indexPath.row].music
        cell.artistName.text = musicList.mList[indexPath.row].artist
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let sViewController = storyBoard.instantiateViewController(withIdentifier: "selectMusic") as! SelectViewController
        sViewController.mTitle = musicList.mList[indexPath.row].music
        sViewController.mArtist = musicList.mList[indexPath.row].artist
        sViewController.img = musicList.mList[indexPath.row].img
        sViewController.songFile = musicList.mList[indexPath.row].songFile
        sViewController.songNo = indexPath.row
        self.present(sViewController, animated:true, completion:nil)
        
    }
    
  
}

