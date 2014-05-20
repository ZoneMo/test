package com.tencent.mm.modelvoice;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.tencent.mm.sdk.platformtools.aa;

final class bn
  implements MediaPlayer.OnErrorListener
{
  bn(bl parambl)
  {
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (bl.d(this.cDi) != null)
      bl.d(this.cDi).pB();
    try
    {
      bl.b(this.cDi).release();
      bl.a(this.cDi, -1);
      return false;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("VoicePlayer", "setErrorListener File[" + bl.c(this.cDi) + "] ErrMsg[" + localException.getStackTrace() + "]");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bn
 * JD-Core Version:    0.6.2
 */