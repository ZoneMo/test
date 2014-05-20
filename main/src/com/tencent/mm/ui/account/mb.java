package com.tencent.mm.ui.account;

import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;

final class mb
  implements Runnable
{
  mb(lz paramlz)
  {
  }

  public final void run()
  {
    be.uA().d(new cb(new mc(this), "launch normal"));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mb
 * JD-Core Version:    0.6.2
 */