package com.tencent.mm.plugin.wallet.pay.model;

import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class e extends a
{
  private Authen eYU;
  private String etE = null;
  private boolean fbd = false;
  public boolean fbe = false;
  public Orders fbf = null;

  public e(Authen paramAuthen, Orders paramOrders)
  {
    this.eYU = paramAuthen;
    this.fbf = paramOrders;
    if (paramAuthen.dHN == null)
      throw new IllegalArgumentException("authen.payInfo == null");
    HashMap localHashMap = new HashMap();
    a(paramAuthen.dHN, localHashMap);
    if (paramAuthen.fdk)
      localHashMap.put("is_repeat_send", "1");
    switch (paramAuthen.bOY)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      m(localHashMap);
      return;
      localHashMap.put("flag", "1");
      localHashMap.put("bank_type", paramAuthen.eXo);
      localHashMap.put("true_name", paramAuthen.fdf);
      localHashMap.put("identify_card", paramAuthen.fdg);
      if (paramAuthen.eWY > 0)
        localHashMap.put("cre_type", paramAuthen.eWY);
      localHashMap.put("mobile_no", paramAuthen.fdh);
      localHashMap.put("bank_card_id", paramAuthen.fdi);
      if (!cj.hX(paramAuthen.eWR))
        localHashMap.put("cvv2", paramAuthen.eWR);
      if (!cj.hX(paramAuthen.fdj))
      {
        localHashMap.put("valid_thru", paramAuthen.fdj);
        continue;
        localHashMap.put("flag", "2");
        localHashMap.put("bank_type", paramAuthen.eXo);
        if (!cj.hX(paramAuthen.fdf))
          localHashMap.put("true_name", paramAuthen.fdf);
        if (!cj.hX(paramAuthen.fdg))
          localHashMap.put("identify_card", paramAuthen.fdg);
        localHashMap.put("cre_type", paramAuthen.eWY);
        localHashMap.put("mobile_no", paramAuthen.fdh);
        localHashMap.put("bank_card_id", paramAuthen.fdi);
        if (!cj.hX(paramAuthen.eWR))
          localHashMap.put("cvv2", paramAuthen.eWR);
        if (!cj.hX(paramAuthen.fdj))
        {
          localHashMap.put("valid_thru", paramAuthen.fdj);
          continue;
          if (paramAuthen.fdd == 1)
          {
            localHashMap.put("reset_flag", "1");
            if (!cj.hX(paramAuthen.fdh))
              localHashMap.put("mobile_no", paramAuthen.fdh);
            if (!cj.hX(paramAuthen.eWR))
              localHashMap.put("cvv2", paramAuthen.eWR);
            if (!cj.hX(paramAuthen.fdj))
              localHashMap.put("valid_thru", paramAuthen.fdj);
          }
          localHashMap.put("flag", "3");
          localHashMap.put("passwd", paramAuthen.fde);
          localHashMap.put("bank_type", paramAuthen.eXo);
          localHashMap.put("bind_serial", paramAuthen.eXd);
          continue;
          localHashMap.put("flag", "4");
          localHashMap.put("bank_type", paramAuthen.eXo);
          localHashMap.put("first_name", paramAuthen.fdl);
          localHashMap.put("last_name", paramAuthen.fdm);
          localHashMap.put("country", paramAuthen.dHm);
          localHashMap.put("area", paramAuthen.bTZ);
          localHashMap.put("city", paramAuthen.bUa);
          localHashMap.put("address", paramAuthen.XX);
          localHashMap.put("phone_number", paramAuthen.fdn);
          localHashMap.put("zip_code", paramAuthen.eWa);
          localHashMap.put("email", paramAuthen.bTQ);
          localHashMap.put("bank_card_id", paramAuthen.fdi);
          if (!cj.hX(paramAuthen.eWR))
            localHashMap.put("cvv2", paramAuthen.eWR);
          if (!cj.hX(paramAuthen.fdj))
          {
            localHashMap.put("valid_thru", paramAuthen.fdj);
            continue;
            localHashMap.put("flag", "5");
            localHashMap.put("bank_type", paramAuthen.eXo);
            localHashMap.put("first_name", paramAuthen.fdl);
            localHashMap.put("last_name", paramAuthen.fdm);
            localHashMap.put("country", paramAuthen.dHm);
            localHashMap.put("area", paramAuthen.bTZ);
            localHashMap.put("city", paramAuthen.bUa);
            localHashMap.put("address", paramAuthen.XX);
            localHashMap.put("phone_number", paramAuthen.fdn);
            localHashMap.put("zip_code", paramAuthen.eWa);
            localHashMap.put("email", paramAuthen.bTQ);
            localHashMap.put("bank_card_id", paramAuthen.fdi);
            localHashMap.put("passwd", paramAuthen.fde);
            if (!cj.hX(paramAuthen.eWR))
              localHashMap.put("cvv2", paramAuthen.eWR);
            if (!cj.hX(paramAuthen.fdj))
            {
              localHashMap.put("valid_thru", paramAuthen.fdj);
              continue;
              if (paramAuthen.fdd == 1)
              {
                localHashMap.put("reset_flag", "1");
                if (!cj.hX(paramAuthen.eWR))
                  localHashMap.put("cvv2", paramAuthen.eWR);
                if (!cj.hX(paramAuthen.fdj))
                  localHashMap.put("valid_thru", paramAuthen.fdj);
              }
              localHashMap.put("phone_number", paramAuthen.fdh);
              localHashMap.put("flag", "6");
              localHashMap.put("passwd", paramAuthen.fde);
              localHashMap.put("bank_type", paramAuthen.eXo);
              localHashMap.put("bind_serial", paramAuthen.eXd);
            }
          }
        }
      }
    }
  }

  public final int TN()
  {
    return 0;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    aa.d("MicroMsg.NetSceneTenpayAuthen", " errCode: " + paramInt + " errMsg :" + paramString);
    this.fbd = "1".equals(paramJSONObject.optString("is_free_sms"));
    this.etE = paramJSONObject.optString("token");
    String str = paramJSONObject.optString("bind_serial");
    if (!cj.hX(str))
    {
      aa.d("MicroMsg.NetSceneTenpayAuthen", "Pay Success! saving bind_serial:" + str);
      c.anX();
      c.pD(str);
    }
    if ("1".equals(paramJSONObject.optString("pay_flag")))
    {
      this.fbe = true;
      this.fbf = Orders.a(paramJSONObject, this.fbf);
      return;
    }
    this.fbe = false;
  }

  public final String ank()
  {
    return this.etE;
  }

  public final boolean aou()
  {
    return this.fbd;
  }

  public final Authen aov()
  {
    return this.eYU;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.e
 * JD-Core Version:    0.6.2
 */