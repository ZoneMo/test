package com.tencent.mm.compatible.audio;

import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.audiofx.NoiseSuppressor;
import com.tencent.mm.sdk.platformtools.aa;

public final class n
  implements l
{
  private NoiseSuppressor cbu = null;

  @TargetApi(16)
  public n(AudioRecord paramAudioRecord)
  {
    boolean bool = NoiseSuppressor.isAvailable();
    aa.d("MicroMsg.MMNoiseSuppressor", "available  " + bool);
    if (bool)
      this.cbu = NoiseSuppressor.create(paramAudioRecord.getAudioSessionId());
  }

  @TargetApi(16)
  public final boolean isAvailable()
  {
    return NoiseSuppressor.isAvailable();
  }

  @TargetApi(16)
  public final boolean pa()
  {
    if (this.cbu != null);
    try
    {
      int i = this.cbu.setEnabled(true);
      if (i == 0)
        return true;
      aa.d("MicroMsg.MMNoiseSuppressor", "setEnabled failed " + i);
      label43: return false;
    }
    catch (Exception localException)
    {
      break label43;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.n
 * JD-Core Version:    0.6.2
 */