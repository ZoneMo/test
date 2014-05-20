package com.tencent.mm.ui.contact;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

final class al
  implements Runnable
{
  al(BizContactEntranceView paramBizContactEntranceView)
  {
  }

  public final void run()
  {
    long l1 = ab.ye().cU(1);
    long l2 = cj.ag(be.uz().sr().get(233473));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(l1);
    arrayOfObject[1] = Long.valueOf(l2);
    aa.e("MicroMsg.BizContactEntranceView", "last updateTime %d, enterTime %d", arrayOfObject);
    an.i(new am(this, l1, l2));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.al
 * JD-Core Version:    0.6.2
 */