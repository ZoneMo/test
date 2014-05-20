package com.tencent.mm.p;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import org.json.JSONObject;

public final class i
{
  public int cnK = 0;
  public String cnL;
  public String cnM;
  public String cnN;

  public static i eF(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    aa.d("MicroMsg.BizInfo", "biz verify info is [%s]", new Object[] { paramString });
    i locali = new i();
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      locali.cnK = localJSONObject.getInt("Type");
      locali.cnL = localJSONObject.getString("Description");
      locali.cnM = localJSONObject.optString("Name");
      locali.cnN = localJSONObject.optString("IntroUrl");
      label81: Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(locali.cnK);
      arrayOfObject[1] = locali.cnL;
      arrayOfObject[2] = locali.cnM;
      arrayOfObject[3] = locali.cnN;
      aa.d("MicroMsg.BizInfo", "type[%d],desc[%s],name[%s],url[%s]", arrayOfObject);
      return locali;
    }
    catch (Exception localException)
    {
      break label81;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.i
 * JD-Core Version:    0.6.2
 */