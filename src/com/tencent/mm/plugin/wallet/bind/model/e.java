package com.tencent.mm.plugin.wallet.bind.model;

import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.pay.model.l;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class e extends a
{
  public e(l paraml)
  {
    HashMap localHashMap = new HashMap();
    a(paraml.dHN, localHashMap);
    localHashMap.put("flag", paraml.flag);
    if ("2".equals(paraml.flag))
      localHashMap.put("passwd", paraml.fbq);
    localHashMap.put("verify_code", paraml.fbr);
    if (!cj.hX(paraml.etE))
      localHashMap.put("token", paraml.etE);
    if ((paraml.dHN != null) && (!cj.hX(paraml.dHN.faP)))
      localHashMap.put("req_key", paraml.dHN.faP);
    m(localHashMap);
  }

  public final int TN()
  {
    return 13;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.e
 * JD-Core Version:    0.6.2
 */