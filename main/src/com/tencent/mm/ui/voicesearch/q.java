package com.tencent.mm.ui.voicesearch;

import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.ac;
import com.tencent.mm.storage.i;

final class q
  implements Runnable
{
  q(j paramj, String paramString)
  {
  }

  public final void run()
  {
    if (j.b(this.htK).isHidden())
    {
      j.b(this.htK).qQ();
      if (j.c(this.htK))
      {
        aj localaj = new aj(this.htL);
        be.uA().d(localaj);
        j.d(this.htK);
      }
      return;
    }
    j.b(this.htK).qP();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.q
 * JD-Core Version:    0.6.2
 */