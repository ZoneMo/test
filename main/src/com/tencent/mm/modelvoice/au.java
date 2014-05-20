package com.tencent.mm.modelvoice;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.n.t;
import com.tencent.mm.sdk.platformtools.aa;

final class au extends Handler
{
  au(at paramat, ap paramap)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (ap.b(this.cCD.cCB) <= 0)
      return;
    StringBuilder localStringBuilder = new StringBuilder("On Part :");
    if (ap.c(this.cCD.cCB) == null);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.SceneVoice.Recorder", bool);
      ap.d(this.cCD.cCB);
      if (ap.c(this.cCD.cCB) == null)
        break;
      ap.c(this.cCD.cCB).wI();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.au
 * JD-Core Version:    0.6.2
 */