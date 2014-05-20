package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.storage.o;

final class by
  implements Runnable
{
  by(ca paramca)
  {
  }

  public final void run()
  {
    if ((this.cjd == null) || (!this.cjd.uX()))
    {
      be.uz().sx().aAI();
      if ((this.cjd == null) || (!this.cjd.uX()))
      {
        bv.uT();
        if ((this.cjd == null) || (!this.cjd.uX()))
        {
          bv.uU();
          if ((this.cjd == null) || (!this.cjd.uX()))
          {
            bv.uS();
            if ((this.cjd == null) || (!this.cjd.uX()))
              bv.uV();
          }
        }
      }
    }
    if (this.cjd != null)
      an.i(new bz(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.by
 * JD-Core Version:    0.6.2
 */