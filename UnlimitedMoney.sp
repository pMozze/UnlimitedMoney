public Plugin myinfo = {
	name = "Unlimited Money",
	author = "Mozze",
	description = "",
	version = "1.1",
	url = "t.me/pMozze"
};

public void OnPluginStart() {
	HookEvent("player_spawn", onPlayerSpawn);
}

public void onPlayerSpawn(Event hEvent, const char[] szName, bool bDontBroadCast) {
	SetEntProp(GetClientOfUserId(hEvent.GetInt("userid")), Prop_Send, "m_iAccount", 16000);
}
