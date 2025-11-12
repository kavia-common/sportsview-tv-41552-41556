package org.example.app

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import org.example.app.tv.SportsNowTvApp

/**
 * PUBLIC_INTERFACE
 * MainActivity is the single-activity entry point of the app.
 * It uses Jetpack Compose to render the UI by setting the root composable [SportsNowTvApp].
 */
class MainActivity : ComponentActivity() {

    /**
     * PUBLIC_INTERFACE
     * Lifecycle onCreate: sets the Compose content to the app root.
     *
     * @param savedInstanceState previously saved state bundle
     */
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            SportsNowTvApp()
        }
    }
}
