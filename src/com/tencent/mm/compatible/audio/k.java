package com.tencent.mm.compatible.audio;

import android.media.AudioRecord;
import android.os.Build.VERSION;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.sdk.platformtools.aa;

public final class k
{
  private l cbq = null;
  private l cbr = null;
  private l cbs = null;

  public final boolean a(AudioRecord paramAudioRecord)
  {
    aa.d("MicroMsg.MMAudioPreProcess", "api " + Build.VERSION.SDK_INT);
    if (i.bH(16))
      return false;
    if (paramAudioRecord == null)
    {
      aa.d("MicroMsg.MMAudioPreProcess", "audio is null");
      return false;
    }
    if (s.ceN.cdY != 1)
    {
      aa.d("MicroMsg.MMAudioPreProcess", "disable by config");
      return false;
    }
    this.cbq = new n(paramAudioRecord);
    if ((this.cbq != null) && (this.cbq.isAvailable()))
      this.cbq.pa();
    this.cbr = new d(paramAudioRecord);
    if ((this.cbr != null) && (this.cbr.isAvailable()))
      this.cbr.pa();
    this.cbs = new m(paramAudioRecord);
    if ((this.cbs != null) && (this.cbs.isAvailable()))
      this.cbs.pa();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.k
 * JD-Core Version:    0.6.2
 */