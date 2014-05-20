package com.tencent.mm.plugin.safedevice.a;

import android.content.Context;
import android.os.Build;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.protocal.a.br;
import com.tencent.mm.protocal.a.bt;
import com.tencent.mm.protocal.a.gf;
import com.tencent.mm.protocal.a.kb;
import com.tencent.mm.protocal.a.rt;
import com.tencent.mm.protocal.a.ry;
import com.tencent.mm.protocal.a.rz;
import com.tencent.mm.protocal.a.yu;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class e
{
  public static String Zs()
  {
    return Build.MANUFACTURER + "-" + Build.MODEL;
  }

  public static void a(rt paramrt)
  {
    if (paramrt == null)
      aa.e("MicroMsg.SafeDeviceStorageLogic", "null resp");
    kb localkb;
    do
    {
      do
      {
        bt localbt;
        do
        {
          br localbr;
          do
          {
            return;
            if (!(paramrt instanceof br))
              break;
            localbr = (br)paramrt;
          }
          while (localbr == null);
          a(localbr.fBT);
          return;
          if (!(paramrt instanceof bt))
            break;
          localbt = (bt)paramrt;
        }
        while (localbt == null);
        a(localbt.fBT);
        return;
      }
      while (!(paramrt instanceof kb));
      localkb = (kb)paramrt;
    }
    while ((localkb == null) || (localkb.fLW == null));
    a(localkb.fLW.fBT);
  }

  private static void a(rz paramrz)
  {
    if ((paramrz != null) && (paramrz.fAD != null))
    {
      LinkedList localLinkedList = paramrz.fAD;
      if ((localLinkedList != null) && (localLinkedList.size() >= 0))
      {
        f.Zu().Zr();
        Iterator localIterator = localLinkedList.iterator();
        while (localIterator.hasNext())
        {
          ry localry = (ry)localIterator.next();
          f.Zu().a(new c(localry));
        }
      }
    }
  }

  public static String aG(Context paramContext)
  {
    if (paramContext == null)
      return al.getContext().getString(n.bwC);
    return paramContext.getString(n.bwC);
  }

  public static void j(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!be.se());
    int i;
    int j;
    do
    {
      return;
      i = v.tm();
      if (!paramBoolean1)
        break;
      j = i | 0x4000;
      be.uz().sr().set(40, Integer.valueOf(j));
    }
    while (!paramBoolean2);
    gf localgf = new gf();
    localgf.fIH = 28;
    if (paramBoolean1);
    for (int k = 1; ; k = 2)
    {
      localgf.fII = k;
      be.uz().st().a(new az(23, localgf));
      a.cHT.nE();
      return;
      j = i & 0xFFFFBFFF;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a.e
 * JD-Core Version:    0.6.2
 */