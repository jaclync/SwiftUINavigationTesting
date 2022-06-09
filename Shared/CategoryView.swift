import SwiftUI

struct CategoryView: View {
    @State private var showsRecipe: Bool
    private let showsRecipeOnAppear: Bool

    init(showsRecipe: Bool) {
        // Attempt #1:
        // Using the 2 (hacky) lines below, the recipe is pushed after this view for the first time. However, after the first time of `CategoryView(showsRecipe: true)`, `RecipeView` is shown and then popped from the navigation stack.
        self.showsRecipe = false
        self.showsRecipeOnAppear = showsRecipe

        // Attempt #2:
        // Using the line below, the recipe still cannot be shown when this view is shown.
//        self.showsRecipe = true

        // Attempt #3:
        // Using the line below, the recipe link cannot be shown from button action.
//        self.showsRecipe = showsRecipe
    }

    var body: some View {
        VStack {
            Text("Cakes")
            NavigationLink(destination: RecipeView(name: "🥮"), isActive: $showsRecipe) {
                Button("Check recipe") {
                    showsRecipe = true
                }
            }
        }
        .onAppear {
            showsRecipe = showsRecipeOnAppear
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(showsRecipe: false)
    }
}
