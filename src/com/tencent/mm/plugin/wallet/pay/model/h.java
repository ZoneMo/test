package com.tencent.mm.plugin.wallet.pay.model;

import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class h extends a
{
  public boolean fbe = false;
  public Orders fbf = null;

  public h(l paraml, Orders paramOrders)
  {
    this.fbf = paramOrders;
    HashMap localHashMap = new HashMap();
    a(paraml.dHN, localHashMap);
    localHashMap.put("flag", paraml.flag);
    localHashMap.put("passwd", paraml.fbq);
    localHashMap.put("verify_code", paraml.fbr);
    localHashMap.put("token", paraml.etE);
    m(localHashMap);
  }

  public final int TN()
  {
    return 16;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    if (paramInt != 0)
      return;
    String str = paramJSONObject.optString("bind_serial");
    aa.d("MicroMsg.NetSceneTenpayVertifyReg", "Pay Success! saving bind_serial:" + str);
    c.anX();
    c.pD(str);
    if ("1".equals(paramJSONObject.optString("pay_flag")))
    {
      this.fbe = true;
      this.fbf = Orders.a(paramJSONObject, this.fbf);
      return;
    }
    this.fbe = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.h
 * JD-Core Version:    0.6.2
 */