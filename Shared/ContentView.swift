import SwiftUI

struct ContentView: View {
    @State private var showsCategoryOnly: Bool = false
    @State private var showsCategoryAndRecipe: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, foodie!")
                    .padding()
                NavigationLink(destination: CategoryView(showsRecipe: false), isActive: $showsCategoryOnly) {
                    Text("Check category only")
                }
                NavigationLink(destination: CategoryView(showsRecipe: true), isActive: $showsCategoryAndRecipe) {
                    Text("Check category and recipe")
                }
            }
        }
        .navigationViewStyle(.stack)
        .onAppear {
            showsCategoryAndRecipe = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
