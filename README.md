# WatchCPR: Your CPR Companion on Your Wrist

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Problem Statement

Sudden cardiac arrest (SCA) is a leading cause of death, affecting hundreds of thousands of people each year. According to the American Heart Association (AHA), more than 356,000 out-of-hospital cardiac arrests occur annually in the United States. Sadly, only about 10% of people who experience out-of-hospital cardiac arrest survive.

A critical factor in survival is the immediate administration of cardiopulmonary resuscitation (CPR). Effective CPR, especially within the first few minutes of cardiac arrest, can double or triple a person's chance of survival. However, many bystanders hesitate to perform CPR due to lack of training, fear of doing it wrong, or not knowing the correct rhythm and depth of chest compressions.

**Research Supporting the Importance of Early CPR:**

*   **Circulation (AHA Journal):** Heart Disease and Stroke Statistics—2023 Update: A Report From the American Heart Association. This report provides comprehensive statistics on heart disease and stroke, including data on cardiac arrest incidence and survival rates. It emphasizes the importance of early CPR and bystander intervention. (You can find the latest update by searching for "Heart Disease and Stroke Statistics Update" on the AHA website or in the Circulation journal archives. I can't provide a direct link as these reports are updated annually.)

This highlights the critical need for tools that can empower bystanders to act quickly and confidently in a cardiac emergency.

## About WatchCPR

WatchCPR is a life-saving companion designed for your Apple Watch. It provides real-time guidance and feedback during CPR, empowering bystanders to provide effective assistance until professional medical help arrives. The app offers:

*   **CPR Guidance for All Ages:** Select the appropriate CPR protocol for adults, children, or infants.
*   **Real-Time Compression Timing:** A ring timer visually indicates the compression cycle, ensuring the correct rhythm.
*   **Haptic Feedback:** The watch provides gentle vibrations to guide each compression, helping users maintain the appropriate rate.
*   **Clear Visual Instructions:** Simple on-screen instructions reinforce proper CPR technique.

## How It Works

1.  **Select the Victim's Age:** Choose the appropriate CPR protocol (adult, child, or infant).
2.  **Start the Timer:** Begin the compression cycle.
3.  **Follow the Guidance:** The ring timer and haptic feedback guide you through each compression.
4.  **Continue Until Help Arrives:** Continue CPR until emergency medical services arrive or the person shows signs of recovery.

## Technologies Used

*   **Swift:** Native development for Apple Watch.
*   **WatchKit:** Framework for building Apple Watch interfaces.
*   **(Optional) Firebase:** For future data collection and statistics (if implemented).

## Challenges and Solutions

Developing for WatchOS presented unique challenges:

*   **Limited Documentation:** Finding specific documentation for WatchOS functionalities was difficult. We overcame this through extensive experimentation and community resources.
*   **UI/UX Constraints:** Designing a clear and effective interface on the small watch screen required careful consideration. We focused on simplicity and clear visual cues.

## Future Enhancements

*   **Firebase Integration:** Implement data collection to track CPR statistics and provide feedback to users.
*   **Integration with Emergency Services:** Explore the possibility of directly notifying emergency services through the app (while respecting privacy and regulatory requirements).
*   **Enhanced Training Features:** Add instructional videos and interactive tutorials to further educate users on CPR techniques.

## Getting Started (If applicable for open-source)

If you're interested in contributing to WatchCPR:

1.  Clone the repository: `git clone https://github.com/Ahthe/CPR-NOW.git`
2.  Open the project in Xcode.
3.  Build and run the app on your Apple Watch or simulator.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

*   American Heart Association (AHA) for their resources and guidelines on CPR.
