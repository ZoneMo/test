package com.tencent.mm.pluginsdk.ui.tools;

import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import java.util.List;

public final class a
{
  public static boolean auL()
  {
    b localb = new b((byte)0);
    localb.mz((String)be.uz().sr().get(69121));
    return (localb.ftV != null) && (localb.ftV.size() > 0);
  }

  public static boolean ra(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppNewIconUtil", "markNew fail, appId is empty");
      return false;
    }
    e locale = be.uz().sr();
    if (locale == null)
    {
      aa.e("MicroMsg.AppNewIconUtil", "markNew fail, cfgStg is null");
      return false;
    }
    b localb = new b((byte)0);
    localb.mz((String)locale.get(69121));
    if (!localb.ftV.contains(paramString))
      localb.ftV.add(paramString);
    locale.set(69121, localb.auM());
    return true;
  }

  public static boolean rb(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppNewIconUtil", "unmarkNew fail, appId is empty");
      return false;
    }
    e locale = be.uz().sr();
    if (locale == null)
    {
      aa.e("MicroMsg.AppNewIconUtil", "unmarkNew fail, cfgStg is null");
      return false;
    }
    b localb = new b((byte)0);
    localb.mz((String)locale.get(69121));
    if (localb.ftV.contains(paramString))
      localb.ftV.remove(paramString);
    locale.set(69121, localb.auM());
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a
 * JD-Core Version:    0.6.2
 */