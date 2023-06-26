//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by Brian on 23/06/2023.
//

import SwiftUI

struct MeetingTimerView: View {
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme
    let isRecording: Bool
    
    private var currentSpeaker: String {
        speakers.first { speaker in
            !speaker.isCompleted
        }?.name ?? "Someone"
    }
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Text(currentSpeaker)
                        .font(.title)
                    Text("is speaking")
                    Image(
                        systemName: isRecording ? "mic" : "mic.slash"
                    )
                        .font(.title)
                        .padding(.top)
                        .accessibilityLabel(isRecording ? "With Transcription" : "Without Transcription")
                }
                .accessibilityElement(children: .combine)
                .foregroundColor(theme.accentColor)
            }
            .overlay {
                ForEach(speakers) { speaker in
                    if speaker.isCompleted, let index = speakers.firstIndex(where: { i in
                        i.id == speaker.id
                    }) {
                        SpeakerArc(speakerIndex: index, totalSpeakers: speakers.count)
                            .rotation(Angle(degrees: -90))
                            .stroke(theme.mainColor, lineWidth: 12)
                        
                    }
                }
            }
    }
}

struct MeetingTimerView_Previews: PreviewProvider {
    static var speakers: [ScrumTimer.Speaker]{
        [
            ScrumTimer.Speaker(name: "Bill", isCompleted: true), ScrumTimer.Speaker(name: "Cathy", isCompleted: false)
        ]
    }
    static var previews: some View {
        MeetingTimerView(speakers: speakers, theme: .bubblegum, isRecording: true)
    }
}
