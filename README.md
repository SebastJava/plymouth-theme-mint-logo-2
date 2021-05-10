![Preview](preview-animated-blue.gif)

# mint-logo-2: A new Plymouth theme for Linux Mint
This is a new version for your animated boot screen. This logo here is twice as large as the standard one. My boot screen is full HD: 1920 X 1080 pixels. In my humble opinion, the standard Mint Plymouth theme looked a bit "cheap", being too small for this full HD screen. It almost felt like there was just a small "dot" displayed there. Now this new logo is double-sized at 200 pixels large. This works best on FHD screens, but i also tested it on my old little netbook, with a 800 X 600 pixels boot screen. On this small netbook this new logo looks a bit big, but it still works.

And this logo is also subtly redesigned with the exact same line widths for both the circle and the LM inside. And, also, the spinning background is made of blue tones and is a bit more contrasted than the standard one.

![Permissions-howto](Permissions-program.png)

### How to install
1. [Download ZIP here](https://github.com/SebastJava/plymouth-theme-mint-logo-2/archive/main.zip) (OR click on top-right green button "Code" and then click on "Download ZIP".)
1. Extract this entire zip.
1. Right-click on INSTALLER.sh > Select Properties > Permissions tab > Execute: Allow executing file as program. (See screenshot) OR ELSE type `chmod +x plymouth-theme-mint-logo-2/INSTALLER.sh` in the Terminal.
1. Double-click on INSTALLER to run in Terminal.
1. Restart and check the results!

NOTE: You can choose from blue or green versions. To switch colors, open `mint-logo-2/mint-logo.script`, and search/replace `spinner-blue` -> `spinner-green` or vice-versa.

### How to revert to the original mint-logo
1. Set permissions for REVERT.sh to "Allow executing file as program" just like you did for INSTALLER.sh, as described above.
1. Double-click on REVERT to run in Terminal.
...Restart and check the results!

### How to check things (optional)
You can check things with this command:
`update-alternatives --display default.plymouth`

You can preview your default plymouth using the plymouth-preview script. You must run this script as root. To do so, you need to open your Terminal in this downloaded plymouth-theme-mint-logo-2 directory and run this script this way:

```
cd plymouth-theme-mint-logo-2
sudo ./plymouth-preview.sh
```

This will preview the splash screen for 10 seconds. You can change this default 10 seconds by adding " XX #seconds" at the end of the command. Example:

```sudo ./plymouth-preview.sh 20```

for a 20 seconds preview.
