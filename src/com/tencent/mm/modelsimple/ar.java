package com.tencent.mm.modelsimple;

import com.tencent.mm.m.ab;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.h;
import java.io.File;

public final class ar
{
  private static m cjh = null;
  private static boolean cxO = false;
  private static int cxP = 3;
  private static long cxQ = 0L;

  public static void run()
  {
    if (cxO)
    {
      aa.i("MicroMsg.PostTaskUploadHDHeadImg", "is uploading hdHeadImg now!");
      return;
    }
    if ((cxQ == 0L) || (cj.O(cxQ) > 180000L))
    {
      cxQ = cj.FE();
      cxP = 3;
    }
    if (cxP <= 0)
    {
      aa.i("MicroMsg.PostTaskUploadHDHeadImg", "frequency limit");
      return;
    }
    cxP = -1 + cxP;
    String str = h.ggB + "temp.avatar.hd";
    if (!new File(str).exists())
    {
      aa.d("MicroMsg.PostTaskUploadHDHeadImg", "has uploaded HDHeadImg and delete it");
      return;
    }
    if (cjh == null)
      cjh = new as(str);
    be.uA().a(157, cjh);
    ab localab = new ab(1, str);
    be.uA().d(localab);
    cxO = true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ar
 * JD-Core Version:    0.6.2
 */