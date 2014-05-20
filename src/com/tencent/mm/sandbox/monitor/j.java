package com.tencent.mm.sandbox.monitor;

import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.h;
import java.io.File;

public abstract class j
  implements com.tencent.mm.sandbox.a
{
  public static final String gaN = h.cfE;
  protected int gaO;
  protected int gaP;
  protected int gaQ;
  protected String gaR;

  public j(int paramInt1, String paramString, int paramInt2)
  {
    this.gaP = paramInt1;
    this.gaR = paramString;
    this.gaO = paramInt2;
    this.gaQ = c.ar(ayA());
    File localFile = new File(gaN);
    if (!localFile.exists())
      localFile.mkdirs();
    aa.d("MM.GetUpdatePack", "NetSceneGetUpdatePack : temp path = " + ayA() + " packOffset = " + this.gaQ);
  }

  public static boolean sp(String paramString)
  {
    return c.as(gaN + paramString + ".temp");
  }

  public static String sq(String paramString)
  {
    String str1 = gaN + paramString + ".temp";
    String str2 = gaN + paramString + ".apk";
    if ((c.as(str1)) && ((com.tencent.mm.b.a.ay(str1)) || (paramString.equalsIgnoreCase(f.au(str1)))))
    {
      c.a(gaN, paramString + ".temp", paramString + ".apk");
      return str2;
    }
    if (c.as(str2))
    {
      if ((com.tencent.mm.b.a.ay(str2)) || (paramString.equalsIgnoreCase(f.au(str2))))
      {
        aa.d("MM.GetUpdatePack", "getReadyPack update pack ok");
        return str2;
      }
      aa.e("MM.GetUpdatePack", "getReadyPack: update pack MD5 not same");
      c.deleteFile(str2);
    }
    return null;
  }

  protected String ayA()
  {
    return gaN + this.gaR + ".temp";
  }

  public String ayB()
  {
    return gaN + this.gaR + ".apk";
  }

  public final void ayC()
  {
    try
    {
      aa.d("MM.GetUpdatePack", "deleteTempFile");
      File localFile = new File(ayA());
      if (localFile.exists())
        localFile.delete();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MM.GetUpdatePack", "error in deleteTempFile");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.j
 * JD-Core Version:    0.6.2
 */