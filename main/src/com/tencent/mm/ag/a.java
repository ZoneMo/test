package com.tencent.mm.ag;

import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.platformtools.n;
import com.tencent.mm.platformtools.o;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.HashMap;

public class a
  implements bb
{
  private static HashMap bZd;
  private o cAg;
  private d cAh;
  private String chB;

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("WEBVIEW_CACHE_INFO_TABLE".hashCode()), new b());
  }

  public static String Dj()
  {
    return Dk().chB + "tools/";
  }

  private static a Dk()
  {
    a locala = (a)be.uh().dN(a.class.getName());
    if (locala == null)
    {
      locala = new a();
      be.uh().a(a.class.getName(), locala);
    }
    return locala;
  }

  public static d Dl()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Dk().cAh == null)
      Dk().cAh = new d(Dk().cAg);
    return Dk().cAh;
  }

  public final void N(boolean paramBoolean)
  {
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
    a locala = Dk();
    if ((cj.hX(paramString1)) || (cj.hX(locala.chB)) || (!paramString1.equals(locala.chB)))
    {
      String str = paramString2 + "CommonOneMicroMsg.db";
      aa.d("MicroMsg.SubCoreTools", "setAccPath accPath = " + paramString1 + ", cachePath = " + paramString2);
      locala.chB = paramString1;
      File localFile1 = new File(paramString1);
      if (!localFile1.exists())
        localFile1.mkdirs();
      File localFile2 = new File(Dj());
      if (!localFile2.exists())
        localFile2.mkdir();
      locala.cAg = n.a(locala.hashCode(), str, bZd);
      locala.cAh = new d(locala.cAg);
    }
  }

  public final void qy()
  {
    if (this.cAg != null)
    {
      this.cAg.eN(hashCode());
      this.cAg = null;
    }
    this.chB = "";
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ag.a
 * JD-Core Version:    0.6.2
 */