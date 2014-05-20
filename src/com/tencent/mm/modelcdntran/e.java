package com.tencent.mm.modelcdntran;

import java.util.Map;
import java.util.Queue;

final class e
  implements Runnable
{
  e(b paramb, m paramm)
  {
  }

  public final void run()
  {
    b.a(this.cph).add(this.cpi.field_mediaId);
    b.b(this.cph).put(this.cpi.field_mediaId, this.cpi);
    this.cph.yt();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.e
 * JD-Core Version:    0.6.2
 */