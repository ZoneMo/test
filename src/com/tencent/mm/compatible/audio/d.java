package com.tencent.mm.compatible.audio;

import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.audiofx.AcousticEchoCanceler;
import com.tencent.mm.sdk.platformtools.aa;

public final class d
  implements l
{
  private AcousticEchoCanceler cbi = null;

  @TargetApi(16)
  public d(AudioRecord paramAudioRecord)
  {
    boolean bool = AcousticEchoCanceler.isAvailable();
    aa.d("MicroMsg.MMAcousticEchoCanceler", "available  " + bool);
    if (bool)
      this.cbi = AcousticEchoCanceler.create(paramAudioRecord.getAudioSessionId());
  }

  @TargetApi(16)
  public final boolean isAvailable()
  {
    return AcousticEchoCanceler.isAvailable();
  }

  @TargetApi(16)
  public final boolean pa()
  {
    if (this.cbi != null);
    try
    {
      int i = this.cbi.setEnabled(true);
      if (i == 0)
        return true;
      aa.d("MicroMsg.MMAcousticEchoCanceler", "setEnabled failed " + i);
      label43: return false;
    }
    catch (Exception localException)
    {
      break label43;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.d
 * JD-Core Version:    0.6.2
 */