package com.tencent.mm.model;

import android.content.Context;
import android.provider.Settings.Secure;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class ce
{
  private static bu cjl = null;
  private static boolean cjm = false;

  public static boolean checkMsgLevel()
  {
    return NorMsgSource.checkMsgLevel();
  }

  public static void dC(String paramString)
  {
    aa.e("MicroMsg.NorMsgSource", "parseMsgSource msgSrc: %s", new Object[] { paramString });
    if (cj.hX(paramString))
      return;
    be.ut().a(new cf(paramString), 1800000L);
  }

  public static String uY()
  {
    String str = (String)be.uz().sr().get(70, null);
    if (!cj.hX(str))
      be.uz().sr().set(70, "");
    aa.e("MicroMsg.NorMsgSource", "getMsg ccr[%s]", new Object[] { str });
    return "<msgsource>" + cj.hW(str) + "</msgsource>";
  }

  public static String uZ()
  {
    Context localContext = al.getContext();
    if (localContext == null)
      return null;
    return cj.bF(localContext);
  }

  public static String va()
  {
    Object[] arrayOfObject = new Object[2];
    if (vb());
    for (int i = 1; ; i = 0)
    {
      arrayOfObject[0] = Integer.valueOf(i);
      boolean bool = NorMsgSource.checkMsgLevel();
      int j = 0;
      if (bool)
        j = 1;
      arrayOfObject[1] = Integer.valueOf(j);
      return String.format("<softtype><lctmoc>%d</lctmoc><level>%d</level></softtype>", arrayOfObject);
    }
  }

  public static boolean vb()
  {
    Context localContext = al.getContext();
    if (localContext == null)
      aa.w("MicroMsg.NorMsgSource", "Failed checking mock location: application context not initialized.");
    while (Settings.Secure.getInt(localContext.getContentResolver(), "mock_location", 0) == 0)
      return false;
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ce
 * JD-Core Version:    0.6.2
 */