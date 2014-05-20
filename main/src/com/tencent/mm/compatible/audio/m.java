package com.tencent.mm.compatible.audio;

import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.audiofx.AutomaticGainControl;
import com.tencent.mm.sdk.platformtools.aa;

public final class m
  implements l
{
  private AutomaticGainControl cbt = null;

  @TargetApi(16)
  public m(AudioRecord paramAudioRecord)
  {
    boolean bool = AutomaticGainControl.isAvailable();
    aa.d("MicroMsg.MMAutomaticGainControl", "available  " + bool);
    if (bool)
      this.cbt = AutomaticGainControl.create(paramAudioRecord.getAudioSessionId());
  }

  @TargetApi(16)
  public final boolean isAvailable()
  {
    return AutomaticGainControl.isAvailable();
  }

  @TargetApi(16)
  public final boolean pa()
  {
    if (this.cbt != null);
    try
    {
      int i = this.cbt.setEnabled(true);
      if (i == 0)
        return true;
      aa.d("MicroMsg.MMAutomaticGainControl", "setEnabled failed " + i);
      label43: return false;
    }
    catch (Exception localException)
    {
      break label43;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.m
 * JD-Core Version:    0.6.2
 */