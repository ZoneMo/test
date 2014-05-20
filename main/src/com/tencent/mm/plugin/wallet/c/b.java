package com.tencent.mm.plugin.wallet.c;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import org.json.JSONObject;

public final class b extends a
{
  public b()
  {
    m(new HashMap());
  }

  public final int TN()
  {
    return 19;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    aa.d("Micromsg.NetSceneTenpayTimeSeed", " errCode: " + paramInt + " errMsg :" + paramString);
    String str = paramJSONObject.optString("time_stamp");
    if (!cj.hX(str))
      com.tencent.mm.plugin.wallet.e.a.pO(str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.c.b
 * JD-Core Version:    0.6.2
 */