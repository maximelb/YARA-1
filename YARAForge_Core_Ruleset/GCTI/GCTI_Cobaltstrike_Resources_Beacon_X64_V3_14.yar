rule GCTI_Cobaltstrike_Resources_Beacon_X64_V3_14
{
	meta:
		description = "Cobalt Strike's sleeve/beacon.x64.dll Versions 3.14"
		author = "gssincla@google.com"
		id = "d69171e3-86f4-5187-8874-5eee2045f746"
		date = "2022-11-18"
		modified = "2023-12-04"
		reference = "https://cloud.google.com/blog/products/identity-security/making-cobalt-strike-harder-for-threat-actors-to-abuse"
		source_url = "https://github.com/chronicle/GCTI/blob/1c5fd42b1895098527fde00c2d9757edf6b303bb/YARA/CobaltStrike/CobaltStrike__Resources_Beacon_Dll_All_Versions_MemEnabled.yara#L1442-L1477"
		license_url = "https://github.com/chronicle/GCTI/blob/1c5fd42b1895098527fde00c2d9757edf6b303bb/LICENSE"
		hash = "297a8658aaa4a76599a7b79cb0da5b8aa573dd26c9e2c8f071e591200cf30c93"
		logic_hash = "87cf465154d4294eeda9cf99c6c160da80cfa8a65244bc083737c0c87163431d"
		score = 75
		quality = 85
		tags = ""
		rs2 = "39b9040e3dcd1421a36e02df78fe031cbdd2fb1a9083260b8aedea7c2bc406bf"

	strings:
		$version_sig = { 8B D0 49 8B CA 48 83 C4 28 E9 B1 1F 00 00 8B D0 49 8B CA
                     48 83 C4 28 }
		$decoder = { 80 34 28 ?? 48 FF C0 48 3D 00 10 00 00 7C F1 }

	condition:
		all of them
}