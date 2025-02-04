rule TRELLIX_ARC_RANSOM_Darkside_DLL_May2021___RANSOM_FILE
{
	meta:
		description = "Rule to detect Darkside Ransomware as a DLL"
		author = "TS @ McAfee ATR"
		id = "e9d64637-dc8f-5650-81e1-34e27e6ee912"
		date = "2021-05-14"
		modified = "2023-07-27"
		reference = "https://github.com/advanced-threat-research/Yara-Rules/"
		source_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/ransomware/RANSOM_Darkside.yar#L26-L47"
		license_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/LICENSE"
		hash = "f587adbd83ff3f4d2985453cd45c7ab1"
		logic_hash = "39930b6f352642647ea6b80f941201b93d6a9defd42cb75f9e4f7239ff17a4ec"
		score = 75
		quality = 70
		tags = "RANSOM, FILE"
		rule_type = "Public"
		rule_version = "v1"
		malware_type = "Ransom"

	strings:
		$s1 = "encryptor2.dll" wide ascii
		$s2 = "DisableThreadLibraryCalls" wide ascii
		$s3 = "KERNEL32.dll" wide ascii
		$pattern1 = {D24DC8855EDD487B3CD2D545F11031E1FA85C2F2440712445F67D105B326533A77BA75B3383A98CE97EAA2B95798DCFA6B75B5573662F9ED5DC9B7D2E582FD94104E210F3EA62A1826B26B952FFBD5A70A97E6EC3D14794577A2980A0ED1EE02CA291623DD3721A7E68223EDA56F9E1325FE36E191D5C41F7227D55EDC3D5B9359C819}
		$pattern2 = {87FC982E066F585B73D417C0D5F75B86B9F9F8286B4CC42BB2053912D595A68C07C0EDD0159AC785880C5483E246D3501F6523D05078B9B7510711423948D4CB367C83C0833BD04AD6DC655E1BEEA38770470BB48B6EBA70944E952526E4D87A03BAA485D7B4DA1318A00EF07FA76C0D}
		$pattern3 = {1B6F099F1C3C62BBF5543FA03B919C7BF5E477D256CE79D98C55ACE8D69CDC9373B2F0A2B51414776D5226B74BF9A7CB935C9DD04BCFC19FC81418F7A39244A730697E1BC05418BF41DE50E4C8609533591CE80617D476E686B36CF2AE914CB3AFD720A33C0D5DE438F1CD0B}
		$pattern4 = {5060E373F1D3B3BB8D15C851BBFC73F60390681C488F7C0B80FC2EDBC1ED88CEA82014B9223A70EA0BB7DD0D2560A29D39381FEE7B73AE22683AE05C369918F8C5772678A9F29CEF65854238D1C2B762CC12706637154F57A9}
		$pattern5 = {EE452560DBD5A4F46FB562C9C707C8D014BB8F1C18E4467E249F5AC69A87954F5B69650B7A759CE2DD075E99CBCBA37A9C5A0650EDF06285F8F990AF6B94FBA08E3C0B2EBDE3C155ECDB06C30F95D76695}

	condition:
		filesize >=45KB and filesize <=70KB and all of ($s*) and 4 of ($pattern*)
}