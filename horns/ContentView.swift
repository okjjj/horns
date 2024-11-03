import SwiftUI
import AVFoundation



struct ContentView: View {
    
    @State var player: AVAudioPlayer!
    mutating func playAudio(horns: String) {
        guard let path = (((Bundle.main.path(forResource: horns, ofType: "mp3")) ))  else {
                print("path not created")
                return
            }
        let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.volume = 0.9
                player?.play()
            }
            catch {
                        print("error?")
                    }
        }

    var body: some View {
//       VStack {
//           Image(systemName: "horn")
//              .imageScale(.large)
//              .foregroundStyle(.tint)
//        }
        Button(action: {
//                _ = Bundle.main.path(forResource: "horns", ofType: "mp3")
                // let audioFileURL = URL(fileURLWithPath: "/Users/current/Downloads/horns.mp3")
                 // let audioPlayer = try! AVAudioPlayer(contentsOf: url)
                player.play()
                }
            )
            {
                Text("Play")
                .buttonStyle(.bordered)
                .controlSize(.extraLarge)
                .buttonBorderShape(.capsule)
                // .tint(.pink)
            }
            .padding()
        }
        
}




#Preview {
    ContentView()
}
