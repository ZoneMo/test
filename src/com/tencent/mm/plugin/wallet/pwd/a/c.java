package com.tencent.mm.plugin.wallet.pwd.a;

import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.pay.model.l;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class c extends a
{
  public c(l paraml)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("flag", paraml.flag);
    localHashMap.put("passwd", paraml.fbq);
    localHashMap.put("rpasswd", paraml.fbq);
    localHashMap.put("verify_code", paraml.fbr);
    localHashMap.put("token", paraml.etE);
    a(paraml.dHN, localHashMap);
    m(localHashMap);
  }

  public final int TN()
  {
    return 20;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.a.c
 * JD-Core Version:    0.6.2
 */