package com.tencent.mm.model;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.n.g;
import com.tencent.mm.protocal.a.bz;
import com.tencent.mm.sdk.platformtools.aa;

final class bi
  implements Runnable
{
  bi(bz parambz)
  {
  }

  public final void run()
  {
    k localk = new k();
    long l = -1L;
    if ((be.h(be.uK()) != null) && (this.ciO != null))
    {
      be.h(be.uK()).b(this.ciO);
      l = localk.qh();
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(localk.qh());
    arrayOfObject[1] = Long.valueOf(l);
    aa.e("MicroMsg.MMCore", "dkrsa setautoauthtick [%d %d]", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bi
 * JD-Core Version:    0.6.2
 */