# 🎨 ColorCanvas

A native SwiftUI app showcasing modern iOS interface patterns through an interactive color experience.

ColorCanvas demonstrates declarative UI composition, MVVM architecture, shared state management, adaptive layouts, navigation, animations, and native SwiftUI presentations — all built without external dependencies.

## 🛠 Tech Stack

![Swift](https://img.shields.io/badge/Swift-5-orange?logo=swift)
![SwiftUI](https://img.shields.io/badge/UI-SwiftUI-blue)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-green)
![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey)

## ✨ Highlights

- **SwiftUI-first interface** built entirely with native declarative components
- **MVVM architecture** separating models, presentation logic, and views
- **List & Grid presentations** using `List` and adaptive `LazyVGrid`
- **Shared state management** across multiple screens
- **NavigationStack & NavigationLink** for hierarchical navigation
- **Identifiable models** with stable UUID-based identity
- **Interactive color editing** with `ColorPicker`
- **Bottom sheet presentation** using `.sheet` and `.presentationDetents`
- **Native alerts** and destructive toolbar actions
- **Animated collection updates** using `withAnimation` and transitions
- **Empty states** with `ContentUnavailableView`
- **Environment-driven navigation dismissal** with `@Environment(\.dismiss)`
- **SwiftUI previews** for rapid UI development

## 🏗 Architecture

ColorCanvas follows an MVVM-style structure:

```text
ColorCanvas_SwiftUI
├── Models
│   └── ColorModel
├── ViewModels
│   ├── ColorsListViewModel
│   └── ColorsDetailViewModel
└── Views
    ├── LayoutChooserView
    ├── ContentView
    ├── GridColorView
    └── ColorDetail
```

`ColorModel` provides stable identity for each color, while the view models manage collection and detail-screen behavior.

SwiftUI views remain focused on rendering state and responding to user interaction.

## 📱 Multiple Layout Experiences

ColorCanvas can display the same underlying color collection through multiple SwiftUI presentation styles.

### List View

A traditional iOS list experience featuring:

- Full-width color rows
- Custom row backgrounds
- Animated insertions
- Navigation to color details
- Empty-state handling

### Grid View

A collection-style interface built with `LazyVGrid` featuring:

- Adaptive column sizing
- Responsive layouts
- Square color tiles
- Scrollable grid presentation
- Shared data with the list experience

### Color Detail

Each color can be opened in its own detail experience with:

- Live color preview
- Interactive color editing
- `ColorPicker`
- Bottom-sheet presentation
- Updates propagated back to the shared color collection

## 🎛 SwiftUI Presentation Patterns

The project explores several native iOS interaction and presentation APIs:

- `NavigationStack`
- `NavigationLink`
- `List`
- `LazyVGrid`
- `ScrollView`
- `.sheet`
- `.presentationDetents`
- `.alert`
- `.toolbar`
- `ContentUnavailableView`
- `ColorPicker`
- `@Environment(\.dismiss)`

## 🔄 State Management

ColorCanvas demonstrates several important SwiftUI state concepts, including:

- `@State`
- `@Binding`
- Shared view-model state
- Unidirectional state updates
- Passing state across navigation boundaries
- Updating collection-backed detail views

State changes automatically propagate through the SwiftUI hierarchy, allowing the list, grid, and detail experiences to remain synchronized.

## 🎞 Animation

Collection updates use native SwiftUI animation APIs:

```swift
withAnimation(.easeInOut) {
    viewModel.addRandomColor()
}
```

Combined with transitions:

```swift
.transition(
    .move(edge: .top)
        .combined(with: .opacity)
)
```

This provides smooth visual feedback as the underlying model changes.

## 🧩 Identifiable Models

Each color is represented by a dedicated model with stable identity:

```swift
struct ColorModel: Identifiable {
    let id = UUID()
    var color: Color
}
```

This allows SwiftUI to reliably track individual elements across list and grid updates — including duplicate colors.

## 🎨 Interactive Color Editing

Colors can be modified through SwiftUI's native `ColorPicker` and presented inside a configurable sheet:

```swift
.sheet(isPresented: $isShowingSheet) {
    editColorView()
        .presentationDetents([.medium])
}
```

Changes are propagated back to the shared collection, allowing other views to immediately reflect the updated state.

## 📐 Adaptive Layout

The grid presentation uses `LazyVGrid` with adaptive sizing to respond naturally to available screen space.

```swift
let columns = [
    GridItem(.adaptive(minimum: 120))
]
```

This allows the same interface to scale across different device sizes without hard-coding a fixed number of columns.

## 🧠 SwiftUI Concepts Demonstrated

`@State` · `@Binding` · `NavigationStack` · `NavigationLink` · `List` · `LazyVGrid` · `ScrollView` · `ForEach` · `Identifiable` · `ColorPicker` · `ContentUnavailableView` · `.sheet` · `.presentationDetents` · `.alert` · `.toolbar` · `@Environment(\.dismiss)` · `withAnimation` · `transition`

## 🎯 Project Focus

ColorCanvas is intentionally UI-focused, providing a compact demonstration of modern SwiftUI patterns without relying on networking or third-party frameworks.

The project emphasizes:

- Declarative UI development
- MVVM separation of concerns
- State ownership and propagation
- Reusable SwiftUI components
- Responsive layouts
- Native navigation and presentation APIs
- Interactive user experiences

---

### Built with Swift & SwiftUI 🍎
