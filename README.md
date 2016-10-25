# Blinkinlabs Board support package

This package enables support for the BlinkyTape device in Arduino. To install it, follow these steps:

1. Install Arduino 1.6.12 or newer

2. Run Arduino, and open the 'Preferences' menu

3. In the 'Additional Boards Manager URLs' section, add the following URL:

    https://raw.githubusercontent.com/Blinkinlabs/Blinkinlabs32u4_boards/master/package_blinkinlabs_index.json

4. Click 'Ok' to save the setting

5. In the 'Tools' menu, select 'Board' -> 'Boards Manager'

6. Wait for the platforms index to refresh, then type 'Blinkinlabs' to search for the correct package

7. Click the 'Install' button, then after the installation has finished, click 'Close'

8. Back in the 'Tools' menu, select 'Board', then 'BlinkyTape'

9. You should be able to compile for BlinkyTape now.

## Troubleshooting

If you had an old (1.0.0) version of the board support package installed, you may need to remove it manually from your Arduino preferences directory.
