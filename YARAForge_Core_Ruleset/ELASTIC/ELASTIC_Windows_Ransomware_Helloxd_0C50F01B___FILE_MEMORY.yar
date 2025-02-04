rule ELASTIC_Windows_Ransomware_Helloxd_0C50F01B___FILE_MEMORY
{
	meta:
		description = "Detects Windows Ransomware Helloxd (Windows.Ransomware.Helloxd)"
		author = "Elastic Security"
		id = "0c50f01b-5f3d-4112-9930-ca1150fc12fa"
		date = "2022-06-14"
		modified = "2022-07-18"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Ransomware_Helloxd.yar#L1-L26"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "435781ab608ff908123d9f4758132fa45d459956755d27027a52b8c9e61f9589"
		logic_hash = "71e09fa1a00fa6f3688129ee2b2a8957b84f64ef51fcba5123a6a9df80a9c7e1"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "462d8c231d608e28e66d810b811f9fdf82d0b3770d21267a4375669a26bbaafd"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$mutex = "With best wishes And good intentions..."
		$ransomnote0 = ":: our TOX below >:)"
		$ransomnote1 = "You can download TOX here"
		$ransomnote2 = "...!XD ::"
		$productname = "HelloXD" ascii wide
		$legalcopyright = "uKn0w" ascii wide
		$description = "VhlamAV" ascii wide
		$companyname = "MicloZ0ft" ascii wide

	condition:
		($mutex and all of ($ransomnote*)) or (3 of ($productname,$legalcopyright,$description,$companyname))
}