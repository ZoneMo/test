package com.tencent.mm.plugin.voicereminder.a;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class r extends Handler
{
  r(o paramo)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    aa.d("MicroMsg.VoiceRemindRecorder", " Recorder handleMessage");
    if (o.b(this.ePm))
      return;
    be.uB().b(this.ePm);
    be.uB().pf();
    this.ePm.bA(200);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.r
 * JD-Core Version:    0.6.2
 */