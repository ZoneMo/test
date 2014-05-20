package com.tencent.mm.plugin.wallet.bind.model;

import com.tencent.mm.plugin.wallet.c.a;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class i extends a
{
  public i(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("bank_type", paramString1);
    localHashMap.put("bind_serial", paramString2);
    localHashMap.put("expired_flag", "1");
    m(localHashMap);
  }

  public i(String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("bank_type", paramString1);
    localHashMap.put("bind_serial", paramString2);
    localHashMap.put("passwd", paramString3);
    m(localHashMap);
  }

  public final int TN()
  {
    return 14;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.i
 * JD-Core Version:    0.6.2
 */