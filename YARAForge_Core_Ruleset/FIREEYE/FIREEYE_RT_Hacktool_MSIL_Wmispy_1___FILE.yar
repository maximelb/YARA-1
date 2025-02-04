rule FIREEYE_RT_Hacktool_MSIL_Wmispy_1___FILE
{
	meta:
		description = "The TypeLibGUID present in a .NET binary maps directly to the ProjectGuid found in the '.csproj' file of a .NET project. This rule looks for .NET PE files that contain the ProjectGuid found in the 'WMIspy' project."
		author = "FireEye"
		id = "ac394751-da40-564b-8e24-8f353326b46a"
		date = "2020-12-09"
		modified = "2020-12-09"
		reference = "https://github.com/mandiant/red_team_tool_countermeasures/"
		source_url = "https://github.com/mandiant/red_team_tool_countermeasures//blob/abcba6e9291a04ec1093ce3a4b0b258c1eb891ef/rules/WMISPY/production/yara/HackTool_MSIL_WMIspy_1.yar#L4-L15"
		license_url = "https://github.com/mandiant/red_team_tool_countermeasures//blob/abcba6e9291a04ec1093ce3a4b0b258c1eb891ef/LICENSE.txt"
		hash = "dd8805d0e470e59b829d98397507d8c2"
		logic_hash = "a5a9f7c7a7bfe474e8b21306ea220b4d476832f3ad4fafdd8967a2250d15a701"
		score = 75
		quality = 73
		tags = "FILE"
		rev = 1

	strings:
		$typelibguid0 = "5ee2bca3-01ad-489b-ab1b-bda7962e06bb" ascii nocase wide

	condition:
		( uint16(0)==0x5A4D and uint32( uint32(0x3C))==0x00004550) and any of them
}