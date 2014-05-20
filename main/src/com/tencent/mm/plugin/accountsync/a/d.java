package com.tencent.mm.plugin.accountsync.a;

import android.content.Context;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.ch;

final class d
  implements Runnable
{
  d(b paramb, int paramInt)
  {
  }

  public final void run()
  {
    if (b.b(this.cHW) != null)
      b.b(this.cHW).setMessage(b.c(this.cHW).getString(n.beb) + this.cHX + "%");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.a.d
 * JD-Core Version:    0.6.2
 */