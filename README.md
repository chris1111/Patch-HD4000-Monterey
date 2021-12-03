## Patch-HD4000 Monterey for Hackintosh

### Latest Update 03 Dec 2021 Add Image View for the Applications


## List Update: ⬇︎
<details> 
  <summary>View list Update</summary>

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

- OpenCore config setup: NVRAM ➤ Add ➤ boot-args ⬇︎
- -v keepsyms=1 -lilubetaall amfi_get_out_of_my_way=1 -no_compat_check
- csr-active-config ☞ EF0F0000 

- PlatformInfo ➤ MacBookPro12,1

#### Troubleshooting Error -1713
- Reboot macOS then restart the program

### Download V3 ➤ [Patch-HD4000](https://github.com/chris1111/Patch-HD4000-Monterey/releases/tag/V3 )

- View full Video ⬇︎

[![Modular Image Creation](https://user-images.githubusercontent.com/6248794/118173318-6a820080-b3fb-11eb-9ba5-203165fb6f26.png)](https://youtu.be/aMoenFAdKxc)

### Video Fonction SIP Check ⬇︎

https://user-images.githubusercontent.com/6248794/127409575-bc51551d-ece6-4415-a04b-dcc757eebaa1.mov



 

