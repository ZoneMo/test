package com.tencent.mm.ui.c;

import android.os.Handler;
import android.os.Message;
import b.a.d.c;
import b.a.d.j;
import b.a.e.b;

final class d extends Thread
{
  d(a parama)
  {
  }

  public final void run()
  {
    g localg = g.hsh;
    if (a.e(this.hsg) == null)
      localg = g.hsi;
    while (true)
    {
      Message localMessage = a.d(this.hsg).obtainMessage(1010, localg);
      a.d(this.hsg).sendMessage(localMessage);
      return;
      c localc = new c(j.hAo, "https://api.twitter.com/1.1/account/verify_credentials.json");
      a.b(this.hsg).a(a.e(this.hsg), localc);
      if (localc.aRp().Hr() != 200)
        localg = g.hsi;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.d
 * JD-Core Version:    0.6.2
 */