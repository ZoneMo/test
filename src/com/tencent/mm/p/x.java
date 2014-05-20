package com.tencent.mm.p;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import java.util.ArrayList;

public final class x
  implements m
{
  private final ArrayList coj = new ArrayList();

  public x()
  {
    be.uA().a(363, this);
  }

  private void yb()
  {
    if (this.coj.size() > 0)
      be.uA().d(new aa((String)this.coj.get(-1 + this.coj.size())));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    aa localaa = (aa)paramx;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      a locala = ab.ye().eG(localaa.getUserName());
      if (locala != null)
      {
        locala.field_brandListContent = localaa.yc();
        locala.field_brandListVersion = locala.xv();
        ab.ye().b(locala);
      }
    }
    this.coj.remove(localaa.getUserName());
    yb();
  }

  public final void eQ(String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.coj.size());
    arrayOfObject[1] = paramString;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.BrandListUpdateService", "current queue size %d, add userName %s", arrayOfObject);
    if (!this.coj.contains(paramString))
    {
      this.coj.add(paramString);
      if (this.coj.size() == 1)
        yb();
    }
  }

  public final void release()
  {
    be.uA().b(363, this);
    this.coj.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.x
 * JD-Core Version:    0.6.2
 */