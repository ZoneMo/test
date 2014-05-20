package com.tencent.mm.plugin.wallet.pwd.a;

import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class d extends a
{
  private String eXC = null;
  private String etE = null;

  public d(Authen paramAuthen)
  {
    HashMap localHashMap = new HashMap();
    if (paramAuthen.fdk)
      localHashMap.put("is_repeat_send", "1");
    localHashMap.put("flag", paramAuthen.bOY);
    if (!cj.hX(paramAuthen.fdl))
    {
      localHashMap.put("first_name", paramAuthen.fdl);
      localHashMap.put("last_name", paramAuthen.fdm);
      localHashMap.put("country", paramAuthen.dHm);
      localHashMap.put("area", paramAuthen.bTZ);
      localHashMap.put("city", paramAuthen.bUa);
      localHashMap.put("address", paramAuthen.XX);
      localHashMap.put("phone_number", paramAuthen.fdn);
      localHashMap.put("zip_code", paramAuthen.eWa);
      localHashMap.put("email", paramAuthen.bTQ);
    }
    localHashMap.put("bank_type", paramAuthen.eXo);
    if (paramAuthen.eWY > 0)
      localHashMap.put("cre_type", paramAuthen.eWY);
    if (!cj.hX(paramAuthen.fdf))
      localHashMap.put("true_name", paramAuthen.fdf);
    if (!cj.hX(paramAuthen.fdg))
      localHashMap.put("identify_card", paramAuthen.fdg);
    localHashMap.put("mobile_no", paramAuthen.fdh);
    localHashMap.put("bank_card_id", paramAuthen.fdi);
    if (!cj.hX(paramAuthen.eWR))
      localHashMap.put("cvv2", paramAuthen.eWR);
    if (!cj.hX(paramAuthen.fdj))
      localHashMap.put("valid_thru", paramAuthen.fdj);
    m(localHashMap);
  }

  public final int TN()
  {
    return 10;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
    {
      this.eXC = paramJSONObject.optString("req_key");
      this.etE = paramJSONObject.optString("token");
    }
  }

  public final String aeS()
  {
    return this.eXC;
  }

  public final String ank()
  {
    return this.etE;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.a.d
 * JD-Core Version:    0.6.2
 */