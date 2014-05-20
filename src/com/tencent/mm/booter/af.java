package com.tencent.mm.booter;

import android.os.MessageQueue.IdleHandler;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.an;

final class af
  implements MessageQueue.IdleHandler
{
  af(ad paramad)
  {
  }

  public final boolean queueIdle()
  {
    ad localad = this.caD;
    be.ut().o(new ag(localad));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.af
 * JD-Core Version:    0.6.2
 */