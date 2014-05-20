package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class c
  implements m
{
  private Map cmo = new HashMap();

  public c()
  {
    be.uA().a(452, this);
  }

  public static void a(int paramInt, z paramz)
  {
    aa localaa = new aa(paramInt, paramz);
    be.uA().d(localaa);
  }

  public final void Oj()
  {
    be.uA().b(452, this);
    this.cmo.clear();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    aa localaa = (aa)paramx;
    Set localSet = (Set)this.cmo.get(Integer.valueOf(localaa.apV()));
    if ((localSet != null) && (localSet.size() > 0))
    {
      HashSet localHashSet = new HashSet();
      localHashSet.addAll(localSet);
      Iterator localIterator = localHashSet.iterator();
      while (localIterator.hasNext())
      {
        x localx = (x)localIterator.next();
        if ((localx != null) && (localSet.contains(localx)))
          localx.a(paramInt1, paramInt2, localaa.apW());
      }
    }
  }

  public final void a(int paramInt, x paramx)
  {
    if (!this.cmo.containsKey(Integer.valueOf(paramInt)))
      this.cmo.put(Integer.valueOf(paramInt), new HashSet());
    if (!((Set)this.cmo.get(Integer.valueOf(paramInt))).contains(paramx))
      ((Set)this.cmo.get(Integer.valueOf(paramInt))).add(paramx);
  }

  public final void b(int paramInt, x paramx)
  {
    if (this.cmo.get(Integer.valueOf(paramInt)) != null)
      ((Set)this.cmo.get(Integer.valueOf(paramInt))).remove(paramx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.c
 * JD-Core Version:    0.6.2
 */