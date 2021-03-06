## Patch-HD4000 Monterey for Hackintosh


### Latest Update 18 Fev 2022 Fix issue error 1713

## List Update: ⬇︎
<details> 
  <summary>View list Update</summary>

- Update 07 Dec 2021 Change Quit button
- Update 03 Dec 2021 Add Image View for the Applications
- Update 22 Nov 2021 add OpenCL.framework
- Update 31 Oct 2021 OpenSource script
- Update 31 Oct 2021 Update binaries files
- Update 28 July 2021 Add fonction SIP Check
- Update 22 July 2021 use only shell scrip on the app

</details>


### Simple macOS app for patching Intel HD 4000 on macOS Monterey 12

- For real Mac I recommand to using the khronokernel OCLP ➤ [khronokernel OCLP](https://github.com/dortania/OpenCore-Legacy-Patcher/)


### Credit: 
- chris1111 for build the app
- Base on [Jackluke](https://github.com/jacklukem) work
- [educovas](https://github.com/educovas) for fixed google fonts
- [Dhinak](https://github.com/DhinakG) for found using beta 6 Metal binaries
- [khronokernel](https://github.com/khronokernel) for fixing google fonts (WebKit)

### use this program on Monterey 12 system Only!
- Warning: this package replaces system files and could render your system unbootable.
- To using this program SIP security (Fully disable) csrutil disable csrutil authenticated-root disable 
- Gatekeeper must be disable

###  SIP fully Disable ⬇︎
- [x] `OpenCore config setup:` csrutil authenticated-root disable : 
- NVRAM ➤ Add ➤ boot-args `-v keepsyms=1`
- `csr-active-config` ➤ EF0F0000
- `SecureBootModel`  ➤ Disabled
- `PlatformInfo` ➤ MacBookPro12,1
--------------------------------------------------------------
- [x] `Clover config setup:` csrutil authenticated-root disable :
- `csr-active-config` ➤ 0xFEF
- `PlatformInfo` ➤ MacBookPro12,1
--------------------------------------------------------------
###  SIP Enable ⬇︎ 
- [x] `OpenCore config setup:` csrutil enable + csrutil authenticated-root disable :
- NVRAM ➤ Add ➤ boot-args `-v keepsyms=1`
- `csr-active-config` ➤ 00080000 
- `SecureBootModel`  ➤ Disabled
- `PlatformInfo` ➤ MacBookPro12,1
- IMPORTANT NOTE: This csrutil authenticated-root disable value cannot be used to install the program, if you want to use it you will have to change it after installation with ➤  `EF0F0000`
--------------------------------------------------------------


#### Troubleshooting Error -1713
- Reboot macOS then restart the program

#### IMPORTANT NOTE: The change of NVRAM value requires a Reset NVRAM from OpenCore


### Download ➤ [Patch-HD4000](https://github.com/chris1111/Patch-HD4000-Monterey/releases/tag/V1)

- View full Video ⬇︎

[![Modular Image Creation](https://user-images.githubusercontent.com/6248794/118173318-6a820080-b3fb-11eb-9ba5-203165fb6f26.png)](https://youtu.be/aMoenFAdKxc)

### Video Fonction SIP Check ⬇︎

https://user-images.githubusercontent.com/6248794/127409575-bc51551d-ece6-4415-a04b-dcc757eebaa1.mov






 

