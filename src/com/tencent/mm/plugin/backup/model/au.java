package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.sdk.platformtools.aa;

final class au
  implements Runnable
{
  au(at paramat)
  {
  }

  public final void run()
  {
    if ((!ar.b(this.cLi.cLg).Hb()) && (ar.c(this.cLi.cLg) != null))
    {
      ar.c(this.cLi.cLg).c(ar.d(this.cLi.cLg), ar.e(this.cLi.cLg));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - this.cLi.cLh);
      aa.e("MicroMsg.MMThread", "read recover finish : ", arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.au
 * JD-Core Version:    0.6.2
 */