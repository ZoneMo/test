package com.tencent.mm.plugin.wallet.bind.model;

import com.tencent.mm.a.j;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class h extends a
{
  public boolean eXG = true;
  public ArrayList eXH = null;
  private JSONObject eXK;
  public boolean eXL = false;
  public String eXM;
  private String eXN;
  public String etE;

  public h(String paramString, PayInfo paramPayInfo)
  {
    HashMap localHashMap = new HashMap();
    a(paramPayInfo, localHashMap);
    j localj = new j(cj.a((Integer)be.uz().sr().get(9), 0));
    this.eXN = paramString;
    localHashMap.put("import_code", paramString);
    localHashMap.put("qqid", localj.toString());
    m(localHashMap);
  }

  public final int TN()
  {
    return 37;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    if (paramInt != 0)
      return;
    this.eXK = paramJSONObject;
    this.eXH = new ArrayList();
    while (true)
    {
      int j;
      try
      {
        this.eXL = "1".equals(paramJSONObject.optString("is_reg", "0"));
        this.etE = paramJSONObject.optString("token", "");
        JSONArray localJSONArray = paramJSONObject.getJSONArray("Array");
        int i = localJSONArray.length();
        j = 0;
        if (j < i)
        {
          JSONObject localJSONObject1 = localJSONArray.getJSONObject(j);
          Bankcard localBankcard = Bankcard.e(localJSONObject1);
          if (localBankcard != null)
          {
            if (2 != localJSONObject1.optInt("bank_acc_type", 2))
              break label310;
            bool1 = true;
            localBankcard.eWU = bool1;
            localBankcard.eWQ = localJSONObject1.optString("bank_tail");
            localBankcard.eWP = ("************" + localBankcard.eWQ);
            localBankcard.eWI = localJSONObject1.optString("true_name");
            localBankcard.eWO = localJSONObject1.optString("cre_id");
            localBankcard.eWY = localJSONObject1.optInt("cre_type", -1);
            localBankcard.eWZ = this.eXN;
            if (1 != localJSONObject1.optInt("samecardexist", 0))
              break label316;
            bool2 = true;
            localBankcard.eXa = bool2;
            JSONObject localJSONObject2 = localJSONObject1.optJSONObject("bankappservice");
            if (localJSONObject2 != null)
              this.eXM = localJSONObject2.optString("username");
            this.eXH.add(localBankcard);
          }
        }
        else
        {
          aa.d("MicroMsg.NetSceneTenpayQueryBindBankcard", "got data---isReg:" + this.eXL + ",bankcard.size:" + this.eXH.size());
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        return;
      }
      j++;
      continue;
      label310: boolean bool1 = false;
      continue;
      label316: boolean bool2 = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.h
 * JD-Core Version:    0.6.2
 */