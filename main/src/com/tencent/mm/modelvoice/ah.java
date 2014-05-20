package com.tencent.mm.modelvoice;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class ah extends Handler
{
  ah(af paramaf)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    aa.d("MicroMsg.SceneVoice.Recorder", "dkbt Recorder handleMessage");
    if (af.i(this.cCv))
      return;
    be.uB().b(this.cCv);
    be.uB().pf();
    this.cCv.bA(200);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ah
 * JD-Core Version:    0.6.2
 */