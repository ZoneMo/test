package com.tencent.mm.plugin.wallet.pay.model;

import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class g extends a
{
  private String eXC = null;
  private Orders eYV = null;

  public g(String paramString)
  {
    this.eXC = paramString;
    HashMap localHashMap = new HashMap();
    localHashMap.put("support_cardtag3", "1");
    localHashMap.put("req_key", paramString);
    m(localHashMap);
  }

  public final int TN()
  {
    return 6;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    this.eYV = Orders.g(paramJSONObject);
    if (this.eYV != null)
      this.eYV.faP = this.eXC;
  }

  public final Orders aow()
  {
    return this.eYV;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.g
 * JD-Core Version:    0.6.2
 */