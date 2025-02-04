rule ELASTIC_Windows_Hacktool_Sharpview_2C7603Ad___FILE_MEMORY
{
	meta:
		description = "Detects Windows Hacktool Sharpview (Windows.Hacktool.SharpView)"
		author = "Elastic Security"
		id = "2c7603ad-27f4-49fc-9fab-f4284620452f"
		date = "2022-10-20"
		modified = "2022-11-24"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Hacktool_SharpView.yar#L1-L34"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "c0621954bd329b5cabe45e92b31053627c27fa40853beb2cce2734fa677ffd93"
		logic_hash = "1f80b2fd6121c2b36742c819a56626af2e1450dac0f62c67d93f09e4e140b75f"
		score = 75
		quality = 73
		tags = "FILE, MEMORY"
		fingerprint = "379606da5cf6adb58d6a8e693d379252f7987ff295f838df092ce2246da08354"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$guid = "22A156EA-2623-45C7-8E50-E864D9FC44D3" ascii wide nocase
		$print_str0 = "[Add-DomainObjectAcl] Granting principal {0} rights GUID '{1}' on {2}" ascii wide
		$print_str1 = "[Get-NetRDPSession] Error opening the Remote Desktop Session Host (RD Session Host) server for: {0}" ascii wide
		$print_str2 = "[Get-WMIProcess] Error enumerating remote processes on '{0}', access likely denied: {1}" ascii wide
		$print_str3 = "[Get-WMIRegLastLoggedOn] Error opening remote registry on $Computer. Remote registry likely not enabled." ascii wide
		$print_str4 = "[Get-DomainGUIDMap] Error in building GUID map: {e}" ascii wide
		$str0 = "^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$" ascii wide
		$str1 = "(&(samAccountType=805306368)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(|(homedirectory=*)(scriptpath=*)(profilepath=*)))" ascii wide
		$str2 = "^(CN|OU|DC)=" ascii wide
		$str3 = "(|(samAccountName={0})(name={1})(displayname={2}))" ascii wide
		$str4 = "^(?:[0-9]{1,3}\\.){3}[0-9]{1,3}$" ascii wide
		$str5 = "LDAP://|^CN=.*" ascii wide
		$str6 = "(objectCategory=groupPolicyContainer)" ascii wide
		$str7 = "\\\\{0}\\SysVol\\{1}\\Policies\\{2}" ascii wide
		$str8 = "S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$" ascii wide
		$str9 = "^S-1-5-.*-[1-9]\\d{3,}$" ascii wide

	condition:
		$guid or ( all of ($str*) and 1 of ($print_str*))
}