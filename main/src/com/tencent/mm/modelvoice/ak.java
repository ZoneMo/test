package com.tencent.mm.modelvoice;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.n.t;
import com.tencent.mm.sdk.platformtools.aa;

final class ak extends Handler
{
  ak(aj paramaj, af paramaf)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (af.b(this.cCx.cCv) <= 0)
      return;
    StringBuilder localStringBuilder = new StringBuilder("On Part :");
    if (this.cCx.cCv.cCr == null);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.SceneVoice.Recorder", bool);
      af.c(this.cCx.cCv);
      if (this.cCx.cCv.cCr == null)
        break;
      this.cCx.cCv.cCr.wI();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ak
 * JD-Core Version:    0.6.2
 */