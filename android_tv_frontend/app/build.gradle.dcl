androidApplication {
    namespace = "org.example.app"

    // Declarative DSL may not support composeOptions/buildFeatures; keep dependency declarations only.

    dependencies {
        // Core sample deps
        implementation("org.apache.commons:commons-text:1.11.0")
        implementation(project(":utilities"))

        // Align Compose stack to a compatible set for compileSdk 34
        implementation("androidx.activity:activity-compose:1.9.3")
        implementation("androidx.compose.ui:ui:1.7.4")
        implementation("androidx.compose.ui:ui-tooling-preview:1.7.4")
        implementation("androidx.compose.foundation:foundation:1.7.4")
        implementation("androidx.compose.material3:material3:1.3.0")

        // Temporarily remove AndroidX TV Compose libraries to fix unresolved artifacts and pass :app:checkDebugAarMetadata.
        // Re-add when needed with valid versions published on Google Maven, e.g.:
        // implementation("androidx.tv:tv-foundation:<compatible-version>")
        // implementation("androidx.tv:tv-material:<same-version>")

        // Navigation
        implementation("androidx.navigation:navigation-compose:2.8.3")

        // Lifecycle ViewModel for Compose
        implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.8.6")

        // Media3 for playback (ExoPlayer and UI)
        implementation("androidx.media3:media3-exoplayer:1.4.1")
        implementation("androidx.media3:media3-ui:1.4.1")

        // Image loading
        implementation("io.coil-kt:coil-compose:2.6.0")

        // Compose tooling - pin version to match core Compose
        implementation("androidx.compose.ui:ui-tooling:1.7.4")
    }
}
