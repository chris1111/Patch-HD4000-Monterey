## Patch-HD4000 Monterey 
- Update 23 June 2021 Add all Disk number in the list

### Update 09 Juillet 2021 Add AppleGVA.framework, AppleGVACore.framework

### Simple macOS app for patching Intel HD 4000 on macOS Monterey 12

### Credit: chris1111 for build the app
### Credit: Base on [Jacklude](https://github.com/jacklukem) work
### Credit: [educovas](https://github.com/educovas) for found AppleIntelGraphicsShared.bundle and restart fix
### Credit: [Dhinak](https://github.com/DhinakG) for found using beta 6 Metal binaries
### Credit: [khronokernel](https://github.com/khronokernel) for found the fixing google fonts (WebKit)
- use this program on Monterey 12 system Only!
- Warning: this package replaces system files and could render your system unbootable.
- To using this program SIP security (Fully disable) csrutil disable csrutil authenticated-root disable 
- Gatekeeper must be disable

- OpenCore config setup: NVRAM ➤ Add ➤ boot-args ⬇︎
- -v keepsyms=1 -lilubetaall amfi_get_out_of_my_way=1 -no_compat_check
- csr-active-config ☞ EF0F0000 

- PlatformInfo ➤ MacBookPro12,1

### Download V2 ➤ [Patch-HD4000.zip](https://github.com/chris1111/Patch-HD4000-Monterey/releases/tag/V2)

- View full Video ⬇︎

[![Modular Image Creation](https://user-images.githubusercontent.com/6248794/118173318-6a820080-b3fb-11eb-9ba5-203165fb6f26.png)](https://youtu.be/JnMh_icnYpw)


 

