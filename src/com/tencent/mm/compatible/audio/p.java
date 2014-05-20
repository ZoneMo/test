package com.tencent.mm.compatible.audio;

import android.media.AudioRecord;
import android.media.AudioRecord.OnRecordPositionUpdateListener;
import com.tencent.mm.sdk.platformtools.aa;

final class p
  implements AudioRecord.OnRecordPositionUpdateListener
{
  p(o paramo)
  {
  }

  public final void onMarkerReached(AudioRecord paramAudioRecord)
  {
  }

  public final void onPeriodicNotification(AudioRecord paramAudioRecord)
  {
    aa.d("MicroMsg.MMPcmRecorder", "onPeriodicNotification ustime " + (System.currentTimeMillis() - o.i(this.ccd)));
    o.c(this.ccd, System.currentTimeMillis());
    if (o.j(this.ccd) != null)
    {
      if (o.k(this.ccd))
        o.a(this.ccd, new byte[o.a(this.ccd)]);
      int i = o.j(this.ccd).read(o.l(this.ccd), 0, o.a(this.ccd));
      aa.d("MicroMsg.MMPcmRecorder", "OnRecordPositionUpdateListener:read len " + i);
      if ((o.g(this.ccd) != null) && (i > 0))
        o.g(this.ccd).e(o.l(this.ccd), i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.p
 * JD-Core Version:    0.6.2
 */