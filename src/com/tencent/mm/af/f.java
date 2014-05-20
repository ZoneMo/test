package com.tencent.mm.af;

import android.os.MessageQueue.IdleHandler;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;

final class f
  implements MessageQueue.IdleHandler
{
  f(e parame)
  {
  }

  public final boolean queueIdle()
  {
    if (be.uA().wR())
    {
      aa.w("upload", "skiped resume speex uploader, not foreground");
      return false;
    }
    aa.d("upload", "now resume speex uploader");
    e.a(this.cyo).cR(false);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.f
 * JD-Core Version:    0.6.2
 */