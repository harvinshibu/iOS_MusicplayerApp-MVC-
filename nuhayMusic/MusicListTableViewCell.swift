//
//  MusicListTableViewCell.swift
//  nuhayMusic
//
//  Created by Harvin Shibu on 03/11/22.
//

import UIKit

class MusicListTableViewCell: UITableViewCell {

    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var mName: UILabel!
    @IBOutlet weak var cover: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
