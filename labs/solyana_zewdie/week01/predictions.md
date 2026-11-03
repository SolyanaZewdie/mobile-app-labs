# Task 2 – Hello World and Hot Reload

### Experiment A – Changing the text

**Prediction:** I thought changing the text and pressing `r` would update the greeting on the screen.

**Observation:** The greeting changed immediately without restarting the app.

### Experiment B – Changing MainApp to Placeholder

**Prediction:** I thought changing MainApp to Placeholder would make the screen look different.

**Observation:** Nothing changed when I pressed `r`. The Hello World screen was still there.

### Experiment C – Hot restart

**Prediction:** I thought pressing `R` would restart the app and show the Placeholder widget.

**Observation:** The Hello World screen disappeared, and a big X appeared on the screen.

### What I learned

Hot reload applies code changes while the app is running, without rerunning `main()`.

Hot restart starts the app again from `main()`, which is why the Placeholder appeared after pressing `R`.
