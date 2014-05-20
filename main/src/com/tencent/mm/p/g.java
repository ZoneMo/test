package com.tencent.mm.p;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class g
{
  public int cnB;
  public List cnC = null;

  public static g eE(String paramString)
  {
    aa.d("MicroMsg.BizInfo", "MenuInfo = " + paramString);
    g localg = new g();
    if ((paramString == null) || (paramString.length() <= 0))
      return localg;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      localg.cnB = localJSONObject.getInt("update_time");
      localg.cnC = h.b(localJSONObject.optJSONArray("button_list"));
      return localg;
    }
    catch (JSONException localJSONException)
    {
    }
    return localg;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.g
 * JD-Core Version:    0.6.2
 */