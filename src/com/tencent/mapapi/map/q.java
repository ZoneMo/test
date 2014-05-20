package com.tencent.mapapi.map;

import com.tencent.mapapi.a.c;
import com.tencent.mapapi.b.a;
import org.json.JSONArray;
import org.json.JSONObject;

final class q
  implements c
{
  q(p paramp)
  {
  }

  public final void a(int paramInt, Integer paramInteger, byte[] paramArrayOfByte, String paramString)
  {
    switch (paramInt)
    {
    default:
      return;
    case 32:
    }
    if (paramInteger.intValue() != 0)
    {
      p.a(this.VP).a(paramInteger.intValue(), null);
      return;
    }
    if (paramArrayOfByte != null);
    try
    {
      if (paramArrayOfByte.length == 0)
        throw new Exception("data error");
    }
    catch (Exception localException)
    {
      p.a(this.VP).a(2, null);
      return;
    }
    JSONObject localJSONObject1 = new JSONObject(new String(paramArrayOfByte, paramString));
    JSONObject localJSONObject2 = localJSONObject1.getJSONObject("info");
    int i = localJSONObject2.getInt("error");
    int j = localJSONObject2.getInt("type");
    if ((i != 0) || (j != 32))
      throw new Exception("data error");
    JSONArray localJSONArray = localJSONObject1.getJSONObject("detail").getJSONArray("results");
    if (localJSONArray.length() > 0)
    {
      JSONObject localJSONObject3 = localJSONArray.getJSONObject(-1 + localJSONArray.length());
      double d1 = localJSONObject3.getDouble("pointx");
      double d2 = localJSONObject3.getDouble("pointy");
      a locala = new a();
      locala.XX = localJSONObject3.getString("addr");
      locala.name = localJSONObject3.getString("name");
      locala.VA = new GeoPoint((int)(d2 * 1000000.0D), (int)(d1 * 1000000.0D));
      p.a(this.VP).a(0, locala);
      return;
    }
    p.a(this.VP).a(2, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.q
 * JD-Core Version:    0.6.2
 */