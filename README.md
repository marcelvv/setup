# Setup MacOS for Data

## Mac OS First Time Setup
- Update your system. To do that go: Apple menu () > About This Mac > Software Update.
- Upgrade your Mac to the latest OS version
- Add bluetooth devices (Mouse + Keyboard)
- Create an iCloud account *using your corporate email client*
- Complete login to the app store
- Setup touch ID
### General
* Appearance -> Dark
* Default web browser -> Chrome
### Users & Groups
* Login Options -> Remove fast user switching menu
* Set up Password, Apple ID, Picture, etc.
### Security & Privacy
* General -> Require password [Immediately] after sleep or screen save begins.
* Firewall -> Turn on firewall.
### Accounts
* Add an iCloud account *using your corporate email client* and sync Calendar, Find my Mac, Contacts etc.
### Display
* Adjust arrangement to suit second screen flow
* Night Shift -> Sunset to Sunrise
### Desktop & Screensaver
* Desktop Solar Gradients
* Screensaver after Five Minutes
* Hot Corners -> Bottom Right -> Lock Screen
### Dock
* Visual Settings - Change position to Left and make the size of icons Small
### Finder
* General
 * Change New finder window show to open in your Home Directory
* Sidebar
 * Add Home and your Code Directory
 * Uncheck iCloud Drive, CD/DVD, Recent Tags, Bonjour Computers, Cloud Storage 
### Menubar
* Add Bluetooth in menubar
* Remove Spotlight
* Remove fast user switching
* Set Clock 24h
### Spotlight
* Uncheck fonts, images, files etc.


## Keep in dock
* VSCode
* Slack
* Chrome
* Remove from dock for everything else
## MAC OS Install Applications
In terminal run -> xcode-select --install
## Manual Configuration

### Github Setup
## GPG Keys
Create a github account
https://docs.github.com/en/get-started/signing-up-for-github/signing-up-for-a-new-github-account
Add the GPG key to your GitHub account
https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
## Brew
### Brew re-install
~~~bash
brew reinstall $(brew list)
brew reinstall $(brew list --cask)
~~~
### Update all brew installed apps
~~~bash
brew update
brew outdated
brew upgrade
~~~