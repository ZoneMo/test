package com.tencent.mm.plugin.d.c;

import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.HashMap;

public class p
  implements bb
{
  public static boolean mk(String paramString)
  {
    if ((cj.hX(paramString)) || (!be.se()));
    File localFile1;
    do
    {
      return false;
      localFile1 = new File(paramString);
    }
    while (!localFile1.exists());
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = be.uz().sS();
    arrayOfObject1[1] = Long.valueOf(cj.FD());
    File localFile2 = new File(String.format("%s/temp_%s", arrayOfObject1));
    if (localFile2.exists())
      localFile2.delete();
    Object[] arrayOfObject2 = new Object[4];
    arrayOfObject2[0] = localFile1.getAbsolutePath();
    arrayOfObject2[1] = Long.valueOf(localFile1.length());
    arrayOfObject2[2] = localFile2.getAbsolutePath();
    arrayOfObject2[3] = Long.valueOf(localFile2.length());
    aa.d("MicroMsg.SubCoreReport", "mv %s[%d bytes] to %s[%d bytes]", arrayOfObject2);
    return localFile1.renameTo(localFile2);
  }

  public final void N(boolean paramBoolean)
  {
    m.dZN.init();
    be.ut().o(new q(this));
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    m.dZN.Zk();
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.p
 * JD-Core Version:    0.6.2
 */