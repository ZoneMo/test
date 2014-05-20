package com.tencent.mm.n;

import com.tencent.mm.network.ab;
import com.tencent.mm.sdk.platformtools.aa;

final class ao
  implements Runnable
{
  ao(an paraman)
  {
  }

  public final void run()
  {
    aa.w("MicroMsg.RemoteOnGYNetEnd", "time exceed, force to callback");
    an.b(this.cmK).a(-1, 3, -1, "time exceed, force to callback", an.a(this.cmK), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ao
 * JD-Core Version:    0.6.2
 */