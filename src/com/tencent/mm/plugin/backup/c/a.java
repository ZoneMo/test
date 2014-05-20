package com.tencent.mm.plugin.backup.c;

import com.tencent.mm.ai.q;
import com.tencent.mm.ai.r;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.model.am;
import com.tencent.mm.plugin.backup.model.ax;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.sdk.platformtools.l;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class a
{
  public static void b(HashMap paramHashMap)
  {
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      ak localak = d.Gj().sw().uW(str1);
      int i = ((Integer)paramHashMap.get(str1)).intValue();
      String str2 = localak.aCl();
      n localn = d.Gj().sx().tZ(str2);
      if ((localn == null) || (localn.rQ() <= localak.DL()) || (localn.rQ() == 9223372036854775807L))
      {
        int j = 0;
        if (localn == null)
        {
          localn = new n(str2);
          j = 1;
        }
        localn.bZ(localak.rO());
        localn.bY(i + localn.rN());
        localn.t(localak);
        localn.bP(Integer.toString(localak.getType()));
        localn.p(0x0 & localn.rT() | 0xFFFFFFFF & localak.DL());
        if (j != 0)
          d.Gj().sx().c(localn);
        else
          d.Gj().sx().a(localn, str2);
      }
    }
  }

  public static boolean cp(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return false;
    return paramString.endsWith("@chatroom");
  }

  public static long d(ak paramak)
  {
    i locali = d.Gj().su().tO(paramak.aCl());
    if ((locali == null) || (locali.rj() == 0))
    {
      if (au.hX(paramak.aCl()))
        break label79;
      d.Gn().d(2, paramak.aCl());
      d.Gj().su().B(new i(paramak.aCl()));
    }
    while (true)
    {
      return d.Gj().sw().v(paramak);
      label79: if ((paramak.aCl().endsWith("@chatroom")) && (d.Gj().sA().tv(paramak.aCl()) == null))
        d.Gn().d(2, paramak.aCl());
    }
  }

  public static int dw(String paramString)
  {
    return dx(paramString);
  }

  private static int dx(String paramString)
  {
    if (paramString == null);
    int i;
    do
    {
      do
        return -1;
      while (paramString.length() <= 0);
      i = paramString.indexOf(':');
    }
    while ((i != -1) && (paramString.substring(0, i).contains("<")));
    return i;
  }

  public static String dz(String paramString)
  {
    int i = dx(paramString);
    if (i == -1);
    while (i + 2 >= paramString.length())
      return paramString;
    return paramString.substring(i + 2);
  }

  public static String fU(String paramString)
  {
    String str1 = l.a(d.Gj().sG(), "msg_", paramString, ".amr", 2);
    if (au.hX(str1))
      str1 = null;
    String str2;
    do
    {
      do
        return str1;
      while (new File(str1).exists());
      str2 = d.Gj().sF() + paramString;
      if (new File(str2 + ".amr").exists())
      {
        m.f(str2 + ".amr", str1, true);
        return str1;
      }
    }
    while (!new File(str2).exists());
    m.f(str2, str1, true);
    return str1;
  }

  public static q hh(String paramString)
  {
    if (au.hX(paramString))
      return null;
    return d.Gj().DE().gW(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.c.a
 * JD-Core Version:    0.6.2
 */