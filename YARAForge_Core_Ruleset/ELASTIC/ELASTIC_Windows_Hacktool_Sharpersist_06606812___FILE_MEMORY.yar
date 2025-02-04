rule ELASTIC_Windows_Hacktool_Sharpersist_06606812___FILE_MEMORY
{
	meta:
		description = "Detects Windows Hacktool Sharpersist (Windows.Hacktool.Sharpersist)"
		author = "Elastic Security"
		id = "06606812-2be2-4155-a82b-6ab4629c5b5a"
		date = "2022-10-20"
		modified = "2022-11-24"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Hacktool_SharPersist.yar#L1-L23"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "e9711f47cf9171f79bf34b342279f6fd9275c8ae65f3eb2c6ebb0b8432ea14f8"
		logic_hash = "ddabfb54422f6fb2ad6999b724b1d8f186adf71f96f01a8770715029529e869a"
		score = 75
		quality = 73
		tags = "FILE, MEMORY"
		fingerprint = "44fd3f1146d81c34051f8ef4619db369d364e809799e7ca57bea93fb8fef5d4c"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$guid = "9D1B853E-58F1-4BA5-AEFC-5C221CA30E48" ascii wide nocase
		$print_str0 = "schtaskbackdoor: backdoor scheduled task" ascii wide
		$print_str1 = "schtaskbackdoor -m list -n <schtask name>" ascii wide
		$print_str2 = "SharPersist" ascii wide
		$print_str3 = "[+] SUCCESS: Keepass persistence backdoor added" ascii wide

	condition:
		$guid or all of ($print_str*)
}