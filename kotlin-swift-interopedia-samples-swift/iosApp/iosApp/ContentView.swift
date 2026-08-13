import SwiftUI
import shared

struct ContentView: View {
    var body: some View {
        let sections = sections()
        NavigationView {
            VStack {
                List {
                    ForEach(sections) { section in
                        Section(section.title) {
                            ForEach(section.samples) { sample in
                                NavigationLink(destination: ResultView(sample: sample)) {
                                    Text(sample.title)
                                }
                            }
                        }
                    }
                }
                .listStyle(.sidebar)
            }
            .navigationTitle("Kotlin/Swift Interop Playground")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
