package com.tencent.mm.plugin.wallet.order.model;

import org.json.JSONException;
import org.json.JSONObject;

public final class a extends com.tencent.mm.plugin.wallet.c.a
{
  private Orders.Commodity faO;

  public final int TN()
  {
    return 3;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    if (paramJSONObject != null);
    try
    {
      this.faO = new Orders.Commodity();
      this.faO.dCE = paramJSONObject.getString("buy_uin");
      this.faO.dCF = paramJSONObject.getString("buy_name");
      this.faO.dCG = paramJSONObject.optString("sale_uin");
      this.faO.dCH = paramJSONObject.optString("sale_name");
      this.faO.dCN = paramJSONObject.getString("trans_id");
      this.faO.desc = paramJSONObject.optString("goods_name");
      this.faO.dCJ = (paramJSONObject.optDouble("pay_num") / 100.0D);
      this.faO.dCK = paramJSONObject.getString("trade_state");
      this.faO.dCL = paramJSONObject.getString("trade_state_name");
      this.faO.dCO = paramJSONObject.getString("buy_bank_name");
      this.faO.dCM = paramJSONObject.optInt("modify_timestamp");
      this.faO.dCP = paramJSONObject.optString("fee_type");
      this.faO.dCQ = paramJSONObject.optString("appusername");
      this.faO.dCs = paramJSONObject.optString("app_telephone");
      return;
    }
    catch (Exception localException)
    {
    }
    catch (JSONException localJSONException)
    {
    }
  }

  public final Orders.Commodity aon()
  {
    return this.faO;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.order.model.a
 * JD-Core Version:    0.6.2
 */