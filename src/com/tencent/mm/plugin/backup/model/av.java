package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class av
  implements Runnable
{
  av(at paramat)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.MMThread", "readFromSdcard end");
    ar.g(this.cLi.cLg);
    q.a(cj.FE(), 1, ar.b(this.cLi.cLg).Ha());
    if (ar.c(this.cLi.cLg) != null)
    {
      ar.c(this.cLi.cLg).c(ar.e(this.cLi.cLg), ar.e(this.cLi.cLg));
      ar.c(this.cLi.cLg).Ho();
    }
    this.cLi.cLg.g(true, false);
    d.Gn().Ht();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.av
 * JD-Core Version:    0.6.2
 */