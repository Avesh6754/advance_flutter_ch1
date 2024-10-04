# advance_flutter_ch1

<h1 align="center">🔶🔸Ligth & Dark Theme🔸🔶</h1>

# Light and Dark Theme Switching in Flutter

This project demonstrates the implementation of a dynamic light and dark theme switcher in a Flutter application. The app allows users to switch seamlessly between light and dark modes, providing a smooth and visually appealing user experience. The theme change is persistent across sessions, ensuring the selected mode is retained even after restarting the app.

## Features:
Toggle between light and dark themes with a single click.
Custom styling for each theme to enhance readability and user interaction.
Responsive UI that adapts to the selected theme.
Maintains user preference using local storage.

```dart


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (isDark)?ThemeMode.dark:ThemeMode.light,
      home: Scaffold());
 
bool isDark=false;
```
<center>
<p>
 

  <img src="https://github.com/user-attachments/assets/e0503ead-fd2c-407e-a1f6-771f0afd46d3" width="22%" Height="35%">
   <img src="https://github.com/user-attachments/assets/202570e3-153d-4e00-a894-c7a2bfa1f3dc" width="22%" Height="35%">
   </p>
</center>
