package com.tencent.mm.modelvoice;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class ar extends Handler
{
  ar(ap paramap)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    aa.d("MicroMsg.SceneVoice.Recorder", "dkbt Recorder handleMessage");
    if (ap.j(this.cCB))
      return;
    be.uB().b(this.cCB);
    be.uB().pf();
    this.cCB.bA(200);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ar
 * JD-Core Version:    0.6.2
 */