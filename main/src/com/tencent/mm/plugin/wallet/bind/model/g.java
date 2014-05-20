package com.tencent.mm.plugin.wallet.bind.model;

import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class g extends com.tencent.mm.plugin.wallet.c.a
{
  public boolean eXG = true;
  public ArrayList eXH = null;
  public int eXI = -1;
  public String eXJ = "";
  private JSONObject eXK;

  public g(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("req_key", paramString);
    m(localHashMap);
  }

  public final int TN()
  {
    return 2;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    int i = -1;
    if (paramInt != 0)
      return;
    this.eXK = paramJSONObject;
    this.eXH = new ArrayList();
    while (true)
    {
      int k;
      try
      {
        this.eXI = paramJSONObject.getInt("is_reg");
        String str = paramJSONObject.optString("time_stamp");
        this.eXJ = paramJSONObject.optString("true_name");
        if (!cj.hX(str))
          com.tencent.mm.plugin.wallet.e.a.pO(str);
        boolean bool = "1".equals(paramJSONObject.optString("is_offline_pay"));
        this.eXG = "2".equals(paramJSONObject.optString("icard_user_flag", "2"));
        JSONArray localJSONArray = paramJSONObject.getJSONArray("Array");
        int j = localJSONArray.length();
        k = 0;
        if (k < j)
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(k);
          i = paramJSONObject.optInt("cre_type", -1);
          Bankcard localBankcard = Bankcard.e(localJSONObject);
          if (localBankcard != null)
          {
            if (cj.hX(localBankcard.eWI))
              localBankcard.eWI = this.eXJ;
            this.eXH.add(localBankcard);
          }
        }
        else
        {
          if (paramJSONObject.has("cre_type"))
            i = paramJSONObject.optInt("cre_type", -1);
          c.anX().a(this.eXH, this.eXI, this.eXJ, i, this.eXG, bool);
          aa.d("MicroMsg.NetSceneTenpayQueryBindBankcard", "got data---isReg:" + this.eXI + ",bankcard.size:" + this.eXH.size());
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        return;
      }
      k++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.g
 * JD-Core Version:    0.6.2
 */