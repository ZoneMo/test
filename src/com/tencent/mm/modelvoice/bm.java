package com.tencent.mm.modelvoice;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.tencent.mm.sdk.platformtools.aa;

final class bm
  implements MediaPlayer.OnCompletionListener
{
  bm(bl parambl)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (bl.a(this.cDi) != null)
      bl.a(this.cDi).wE();
    try
    {
      bl.b(this.cDi).release();
      bl.a(this.cDi, 0);
      return;
    }
    catch (Exception localException)
    {
      aa.e("VoicePlayer", "setCompletion File[" + bl.c(this.cDi) + "] ErrMsg[" + localException.getStackTrace() + "]");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bm
 * JD-Core Version:    0.6.2
 */