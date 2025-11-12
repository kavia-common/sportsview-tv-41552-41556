package org.example.app.tv

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController

/**
 * PUBLIC_INTERFACE
 * SportsNowTvApp is the root composable for the Android TV application.
 * It applies the app theme and sets up a NavHost for in-app navigation.
 *
 * Start destination: "home"
 * Routes:
 * - "home": Placeholder HomeScreen until real implementation is added.
 */
@Composable
fun SportsNowTvApp() {
    SportsNowTvTheme {
        val navController: NavHostController = rememberNavController()
        Surface(
            modifier = Modifier.fillMaxSize(),
            color = MaterialTheme.colorScheme.background
        ) {
            NavHost(
                navController = navController,
                startDestination = "home"
            ) {
                composable(route = "home") {
                    HomeScreen()
                }
            }
        }
    }
}

/**
 * PUBLIC_INTERFACE
 * Temporary theme placeholder for the app, using Material3 dark color scheme suitable for TV.
 * Replace with a dedicated theme in subsequent steps.
 *
 * @param content The composable content to be themed.
 */
@Composable
fun SportsNowTvTheme(content: @Composable () -> Unit) {
    val darkColors = darkColorScheme(
        primary = Color(0xFF3B82F6),
        secondary = Color(0xFF64748B),
        tertiary = Color(0xFF06B6D4),
        background = Color(0xFF101317),
        surface = Color(0xFF0D1115),
        onPrimary = Color.White,
        onSecondary = Color.White,
        onTertiary = Color.Black,
        onBackground = Color(0xFFE5E7EB),
        onSurface = Color(0xFFE5E7EB)
    )
    MaterialTheme(
        colorScheme = darkColors,
        content = content
    )
}

/**
 * PUBLIC_INTERFACE
 * Minimal placeholder HomeScreen to allow the project to compile.
 * This will be replaced by the actual TV home screen implementation later.
 */
@Composable
fun HomeScreen() {
    val modifier = Modifier
        .fillMaxSize()
        .background(MaterialTheme.colorScheme.background)

    Column(
        modifier = modifier,
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(
            text = "SportsNow TV - Home",
            color = MaterialTheme.colorScheme.onBackground
        )
    }
}
