rule TRELLIX_ARC_Pwnlnx_Backdoor_Variant_1___BACKDOOR_FILE
{
	meta:
		description = "Rule to detect the backdoor pwnlnx variant 1"
		author = "Marc Rivero | McAfee ATR Team"
		id = "5b76ca62-460c-5c36-a239-700cc509f2b0"
		date = "2020-04-17"
		modified = "2020-08-14"
		reference = "https://www.blackberry.com/content/dam/blackberry-com/asset/enterprise/pdf/direct/report-bb-decade-of-the-rats.pdf"
		source_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/APT/APT_decade_of_RATs.yar#L3-L33"
		license_url = "https://github.com/advanced-threat-research/Yara-Rules//blob/fc51a3fe3b450838614a5a5aa327c6bd8689cbb2/LICENSE"
		hash = "0f6033d6f82ce758b576e2d8c483815e908e323d0b700040fbdab5593fb5282b"
		logic_hash = "1487890494dde891a6dbe7dff7ebd5660ee01fe10220215e680115f168c2ae4a"
		score = 75
		quality = 70
		tags = "BACKDOOR, FILE"
		rule_version = "v1"
		malware_type = "backdoor"
		malware_family = "Backdoor:W32/Pwnlnx"
		actor_type = "Cybercrime"
		actor_group = "Unknown"

	strings:
		$bp = { 7F??4C4602??01??000000000000000002??3E????0000????1A????0000000040000000000000??????0000000000000000000040??????????????1D????????0000????????????000000000000??????4000000000??????4000000000????01??00000000????01??00000000????000000000000????0000??????0000????000000000000????4000000000000002????000000001C??0000000000001C??00000000000001??00000000000001??000005????????0000000000000000??????0000000000004000000000????76??00000000????76??000000000000????00000000????0000????0000000080????00000000????????????0000????????????000038??00000000000080??????00000000000020??0000000002??0000060000????80????0000000028??????????000028??????????0000A0????????0000????????????0000????000000000000??????000004??00001C??0000000000001C??4000000000??????4000000000????000000000000????000000000000??????00000000000050E5??6404??00009C6D0000000000009C6D4000000000??????????????0000DC??000000000000DC??00000000000004??00000000000051E5??64??000000000000000000000000000000000000000000000000000000000000000000000000000000000000????000000000000????6C69????????????2D????????78??78??362D????????6F2E32??04??000010??000001??0000474E5500000000????0000????0000????000000000000????0000??????000001??000006000000000000????000020??0000??????00007D??5A580000000000000000000000000000000000000000000000000000000015????????00000000000000000000??????00000000000082????????00000000000000000000????????????0000????????????00000000000000000000????????????0000??????000012??0000000000000000000062??0000000000006A??000012??000000000000000000001B??0000000000007E??000012??000000000000000000008B??0000000000004902??????00000000000000000000????????????0000????????????00000000000000000000????????00000000??????000012??000000000000000000008E??000000000000F401??????00000000000000000000????????????0000????????????00000000000000000000????000000000000????01??????00000000000000000000????????????0000????0000????000000000000000000000000000000000000????0000????000000000000000000000000000000000000??????000012??0000000000000000000025????????0000????????????00000000000000000000????000000000000????0000????00000000000000000000????000000000000????01??????00000000000000000000????????????0000????0000????00000000000000000000????000000000000????02??????00000000000000000000????????????0000????01??????00000000000000000000??????0000000000006602??????00000000000000000000????????????0000??????000012??0000000000000000000025????????0000????01??????00000000000000000000????000000000000????????????00000000000000000000????000000000000????01??????00000000000000000000????000000000000????0000????00000000000000000000????01??00000000????????????00000000000000000000????????????0000????????????00000000000000000000??????000000000000EC01??????00000000000000000000??????0000000000004B01??????00000000000000000000????????????0000??????000012??0000000000000000000025????????0000????01??????00000000000000000000????????????0000??????000012??0000000000000000000008??0000000000004302??????00000000000000000000????????????0000??????????????000000000000000000000A??0000000000003F01??????00000000000000000000????????????0000??????000012??00000000000000000000F0????00000000????01??????00000000000000000000??????????????00002F02??????00000000000000000000????01??00000000????????????00000000000000000000????000000000000??????????????0000000000000000000080????00000000????02??????00000000000000000000????000000000000??????000012??0000000000000000000074??000000000000BF????????00000000000000000000????????????0000????02??????00000000000000000000??????000000000000FA0000????00000000000000000000????????????0000??????000012??0000000000000000000011??000000000000A8??000012??0000000000000000000044000000000000??????000012??000000000000000000005A000000000000??????000012??0000000000000000000029??000000000000C6????????00000000000000000000????000000000000????????????00000000000000000000????000000000000????0000????00000000000000000000????????00000000????????????00000000000000000000??????000000000000BC????????00000000000000000000????02??00000000????01??????00000000000000000000??????00000000000034??000012??00000000000000000000A1????????0000????????????00000000000000000000????????????0000??????????????000000000000000000004B000000000000????0000????00000000000000000000????000000000000??????000012??0000000000000000000005????????0000??????000012??0000000000000000000031??00000000000074??000012??00000000000000000000FF??0000000000005E02??????00000000000000000000????000000000000????????????00000000000000000000????????????0000??????000012??0000000000000000000025????????0000????02??????00000000000000000000??????000000000000DE??000012??000000000000000000007B??00000000000030??000012??0000000000000000000075??000000000000D9??000012??000000000000000000000E000000000000????????????00000000000000000000????000000000000????02??????00000000000000000000????????????0000????????????00000000000000000000????????????0000????????????00000000000000000000????000000000000????02??????00000000000000000000????000000000000????01??????00000000000000000000????????????0000????????????00000000000000000000????000000000000????????????00000000000000000000??????0000000000005201??????0000????174000000000????00000000000000005F5F676D6F6E5F73??6172??5F5F??????76??52656769????????????6173??6573??6C69????????????61642E????2E30??72??63????72??6D??????68????????5F63????6174????????6E6474????????75??65??????69??????????????6E6F5F6C6F63????69????????????6B????74??72??6164??73??676D6173????????6E6E6563??????74??72??6164??73??6C66??????63????74??70??68????????5F6465????63????6663????6C????????63??73??2E????????63????74??73??72??70????????69????????????????????616E64??????6574??6174??6E??????74??77??69??????????????6469????????????5F6E74??61??????74??72??69??????????????70??????????6D6F6E????????74??6E??????6C6563??????6B????????72??616C6C6F63??676574??69??????????????73??72??6F6B????63????77????????70??6173??72??3634??73??67656D70??79??6574??6D656D73??74??72??6469??????????????????6565??????68????????6173??74??6D65??????74??6F63????70????????616E74??74??6475??32??73??67616464????74??69????????????6472??6663??????65??????74??6F63????70????????6C6C6F63??73??72??6174??72??616C70??74????????6D6F76????????656E6469????????????6C??????74??6F73??62????616D65??????6563??????????72??74????????656164??????6C6F63????74??6C6F63????74??6D65??????616E6469????????????616464??????????????6565????73??74??69????????????????????6D6D6F76????????70??6E3634??5F5F6C69????????????72??5F6D6169????????????73??73??70??69????????????65????????78??74??74??34??474C4942435F32??32??35????????42435F32??33??000002??02??02??03??02??02??02??03??03??02??02??02??0000000002??02??02??02??02??03??02??02??02??02??02??02??02??02??03??02??02??02??04??02??02??03??02??03??02??02??02??03??02??02??02??02??02??03??02??02??02??02??02??02??03??02??02??03??02??02??02??03??02??03??02??03??02??02??02??02??02??02??03??03??03??02??02??02??02??02??000001??01??24??000010??000020??000075??69??????????9602??00000000????????????????????000000000000????69????????????A2????????0000??????69??????????9602??00000000????81????????????060000????????????000000000000????81????????????070000????00000000000000000000????81????????????070000????00000000000000000000????81????????????070000????00000000000000000000000082??????0000????0000??????0000000000000000000008??????????0000070000????????????000000000000????82??????0000????0000????00000000000000000000????82??????0000????0000????00000000000000000000????82??????0000????0000????00000000000000000000????82??????0000????0000????00000000000000000000????82??????0000????0000????00000000000000000000????82??????0000????0000????00000000000000000000??????6000000000????0000??????000000000000000000004882??????0000????0000????00000000000000000000??????6000000000????0000????00000000000000000000??????6000000000????0000????00000000000000000000??????6000000000????0000????00000000000000000000??????6000000000????0000????00000000000000000000??????6000000000????0000?????? }

	condition:
		uint16(0)==0x457f and filesize <100KB and all of them
}