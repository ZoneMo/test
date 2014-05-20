package com.tencent.mm.d;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.ui.base.h;
import java.util.Map;
import org.json.JSONObject;

public final class a
{
  public int bLX;
  public int bLY;
  public int bLZ;
  public String bMa;
  public String desc;
  public String url;

  public static a be(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    a locala = new a();
    Map localMap = u.aL(paramString, "e");
    if (localMap == null)
    {
      aa.d("MrcroMsg.Broadcast", "this is not errmsg");
      return null;
    }
    locala.desc = ((String)localMap.get(".e.Content"));
    locala.url = ((String)localMap.get(".e.Url"));
    locala.bMa = ((String)localMap.get(".e.Title"));
    locala.bLZ = cj.getInt((String)localMap.get(".e.Action"), 0);
    locala.bLY = cj.getInt((String)localMap.get(".e.ShowType"), 0);
    locala.bLX = cj.getInt((String)localMap.get(".e.DispSec"), 30);
    if (bv(locala.bLY))
      return locala;
    try
    {
      JSONObject localJSONObject = new JSONObject((String)localMap.get(".e"));
      locala.desc = localJSONObject.getString("Content");
      locala.url = localJSONObject.getString("Url");
      locala.bMa = localJSONObject.getString("Title");
      locala.bLZ = cj.getInt(localJSONObject.getString("Action"), 0);
      locala.bLY = cj.getInt(localJSONObject.getString("ShowType"), 0);
      locala.bLX = cj.getInt(localJSONObject.getString("DispSec"), 30);
      boolean bool = bv(locala.bLY);
      if (bool)
        return locala;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static boolean bv(int paramInt)
  {
    if (paramInt == 4);
    while ((paramInt == 1) || (paramInt == 5))
      return true;
    return false;
  }

  public final boolean a(Context paramContext, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (this.bLY == 4)
    {
      h.a(paramContext, this.desc, this.bMa, paramOnClickListener1, paramOnClickListener2);
      return true;
    }
    if (this.bLY == 1)
    {
      h.p(paramContext, this.desc, this.bMa);
      return true;
    }
    if (this.bLY == 5)
    {
      h.p(paramContext, this.desc, this.bMa);
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.d.a
 * JD-Core Version:    0.6.2
 */