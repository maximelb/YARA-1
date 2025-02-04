rule SIGNATURE_BASE_HKTL_NET_GUID_Safetykatz___FILE
{
	meta:
		description = "Detects c# red/black-team tools via typelibguid"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "5f6d7432-0bb5-5782-98ec-2c2168f2fc1f"
		date = "2020-12-13"
		modified = "2023-04-06"
		reference = "https://github.com/GhostPack/SafetyKatz"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_github_net_redteam_tools_guids.yar#L1072-L1086"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "3de5223d6cbd3af386210531506b270d94a5b89d7e3582e248571e31d3c191d8"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$typelibguid0lo = "8347e81b-89fc-42a9-b22c-f59a6a572dec" ascii wide
		$typelibguid0up = "8347E81B-89FC-42A9-B22C-F59A6A572DEC" ascii wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}