public Plugin myinfo = {
	name = "Unlimited Money",
	author = "Mozze",
	description = "",
	version = "1.0",
	url = "t.me/pMozze"
};

public void OnPluginStart() {
	HookEvent("player_spawn", onPlayerSpawn);
}

public void onPlayerSpawn(Event hEvent, const char[] Name, bool dontBroadCast) {
	SetEntProp(GetClientOfUserId(hEvent.GetInt("userid")), Prop_Send, "m_iAccount", 16000);
}