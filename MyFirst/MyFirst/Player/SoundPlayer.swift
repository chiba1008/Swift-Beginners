//
//  SoundPlayer.swift
//  MyFirst
//
//  Created by 千葉圭梧 on 2025/05/17.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    var cymbalPlayer: AVAudioPlayer!

    let guitarData = NSDataAsset(name: "guitarSound")!.data
    var guitarPlayer: AVAudioPlayer!

    func cymbalPlay() {
        do {
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました")
        }
    }

    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました")
        }
    }
}
