package com.tencent.mm.pluginsdk.c;

import com.tencent.mm.c.a.du;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public abstract class c
  implements m
{
  private static HashMap fgL = new HashMap();
  private static HashMap fgM = new HashMap();
  private int fgK = 0;

  public static void d(e parame)
  {
    Iterator localIterator = fgL.entrySet().iterator();
    Map.Entry localEntry;
    do
    {
      if (!localIterator.hasNext())
        break;
      localEntry = (Map.Entry)localIterator.next();
    }
    while (localEntry.getValue() != parame);
    for (x localx = (x)localEntry.getKey(); ; localx = null)
    {
      if (localx != null)
      {
        be.uA().c(localx);
        fgL.remove(localx);
      }
      return;
    }
  }

  public final void GA()
  {
    if (this.fgK == 0)
      be.uA().a(Lm(), this);
    this.fgK = (1 + this.fgK);
  }

  public abstract int Lm();

  public abstract e a(x paramx, e parame);

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    e locale;
    if (Lm() == paramx.getType())
    {
      locale = (e)fgL.remove(paramx);
      if (locale != null);
    }
    else
    {
      return;
    }
    du localdu = new du();
    localdu.bOL.bON = a(paramx, locale);
    localdu.bOL.bLI = paramInt1;
    localdu.bOL.bLJ = paramInt2;
    localdu.bOL.bOM = paramString;
    a.ayH().f(localdu);
  }

  public final void apF()
  {
    if (this.fgK == 0);
    do
    {
      return;
      this.fgK = (-1 + this.fgK);
    }
    while (this.fgK != 0);
    be.uA().b(Lm(), this);
  }

  public abstract x b(e parame);

  public final void e(e parame)
  {
    x localx = b(parame);
    if (localx != null)
    {
      be.uA().d(localx);
      fgL.put(localx, parame);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.c.c
 * JD-Core Version:    0.6.2
 */