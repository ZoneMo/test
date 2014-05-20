package com.tencent.mm.plugin.wallet.offline.model;

import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.storage.e;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class a extends com.tencent.mm.plugin.wallet.c.a
{
  private String eWT = "";
  private OfflinePayResponeFields faC = null;

  public a(Bankcard paramBankcard, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("passwd", paramString);
    localHashMap.put("device_id", s.pV());
    localHashMap.put("weixin_ver", "0x" + Integer.toHexString(com.tencent.mm.protocal.a.fxr));
    localHashMap.put("bind_serialno", paramBankcard.eWT);
    localHashMap.put("bank_type", paramBankcard.eWH);
    localHashMap.put("card_tail", paramBankcard.eWQ);
    this.eWT = paramBankcard.eWT;
    m(localHashMap);
  }

  public final int TN()
  {
    return 35;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    if (paramInt != 0)
      return;
    this.faC = new OfflinePayResponeFields();
    this.faC.faE = paramJSONObject.optString("cert_key");
    this.faC.faD = paramJSONObject.optString("cert_no");
    this.faC.faF = paramJSONObject.optString("openid");
    this.faC.eWT = this.eWT;
    c.anX();
    c.pE(OfflinePayResponeFields.a(this.faC));
    be.uz().sr().set(196616, Boolean.valueOf(true));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.offline.model.a
 * JD-Core Version:    0.6.2
 */