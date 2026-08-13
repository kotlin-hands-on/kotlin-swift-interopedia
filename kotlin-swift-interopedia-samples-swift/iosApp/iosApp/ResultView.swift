import SwiftUI
import Foundation

struct ResultView: View {
    let sample: InteropSample

    var body: some View {
        List {
            Section(header: Text(sample.title)) {
                Text(sample.description)
            }
            .headerProminence(.increased)
            .onAppear { runSample(sample: sample) }
        }
    }
}

@MainActor
func runSample(sample: InteropSample) {
    print("-------------------------")
    print("-------------------------")
    print(sample.title)
    print("-------------------------")
    print("Sample output:")
    print("-------------------------")
    sample.action()
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(
            sample: InteropSample(
                title: "Title",
                description: "Description",
                action: {}
            )
        )
    }
}
