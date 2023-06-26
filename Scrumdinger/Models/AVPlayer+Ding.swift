//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by Brian on 21/06/2023.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer =  {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else {
            fatalError("Failed to find audio file")
        }
        return AVPlayer(url: url)
    }()
}
