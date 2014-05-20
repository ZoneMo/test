package com.tencent.mm.plugin.wallet.pwd.a;

import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class b extends a
{
  public b(String paramString1, int paramInt, String paramString2)
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("passwd", paramString1);
    localHashMap1.put("req_key", paramString2);
    m(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("check_pwd_scene", String.valueOf(paramInt));
    n(localHashMap2);
  }

  public final int TN()
  {
    return 18;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    aa.d("Micromsg.NetSceneTenpayCheckPwd", "errCode " + paramInt + " errMsg: " + paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.a.b
 * JD-Core Version:    0.6.2
 */