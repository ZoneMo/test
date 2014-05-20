package com.tencent.mm.pluginsdk.c;

import com.tencent.mm.c.a.di;
import com.tencent.mm.c.a.dj;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import java.util.ArrayList;

public abstract class a extends g
{
  protected ArrayList fgJ = new ArrayList(3);

  public static void a(String paramString, a parama)
  {
    if (!parama.fgJ.contains(paramString))
      parama.fgJ.add(paramString);
    com.tencent.mm.sdk.b.a.ayH().a("MStorageNotify", parama);
    e.qi(paramString);
  }

  public static void b(String paramString, a parama)
  {
    e.qj(paramString);
    com.tencent.mm.sdk.b.a.ayH().b("MStorageNotify", parama);
    if (parama.fgJ.contains(paramString))
      parama.fgJ.remove(paramString);
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    if ((parame instanceof di))
    {
      di localdi = (di)parame;
      if ((localdi.bOp.bOq != null) && (this.fgJ.contains(localdi.bOp.bOq.getId())))
        c(localdi.bOp.bOq);
    }
    return false;
  }

  public abstract void c(com.tencent.mm.sdk.b.e parame);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.c.a
 * JD-Core Version:    0.6.2
 */