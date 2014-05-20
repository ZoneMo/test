package com.tencent.mm.booter;

import com.tencent.mm.model.ah;
import com.tencent.mm.model.ai;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.bg;
import com.tencent.mm.sdk.platformtools.bi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
  implements ah
{
  private bg bZe = new bg();
  private bi bZf = new b(this);
  private boolean bZg = false;
  private com.tencent.mm.compatible.g.a bZh;
  private boolean bZi = false;
  private List bZj = new ArrayList();

  public a()
  {
    this.bZe.a(this.bZf);
    this.bZe.bz(al.getContext());
    this.bZh = null;
    com.tencent.mm.compatible.a.a.a(8, new d(this));
    if (this.bZh != null)
    {
      this.bZh.requestFocus();
      this.bZh.a(new c(this));
    }
  }

  public final void a(ai paramai)
  {
    if (paramai != null)
      this.bZj.add(paramai);
  }

  public final void b(ai paramai)
  {
    if (paramai != null)
      this.bZj.remove(paramai);
  }

  public final void of()
  {
    Iterator localIterator = this.bZj.iterator();
    while (localIterator.hasNext())
    {
      ai localai = (ai)localIterator.next();
      if (localai != null)
        localai.tX();
    }
  }

  public final void og()
  {
    Iterator localIterator = this.bZj.iterator();
    while (localIterator.hasNext())
    {
      ai localai = (ai)localIterator.next();
      if (localai != null)
        localai.tY();
    }
  }

  public final void oh()
  {
    Iterator localIterator = this.bZj.iterator();
    while (localIterator.hasNext())
      localIterator.next();
  }

  public final void oi()
  {
    Iterator localIterator = this.bZj.iterator();
    while (localIterator.hasNext())
      localIterator.next();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.a
 * JD-Core Version:    0.6.2
 */