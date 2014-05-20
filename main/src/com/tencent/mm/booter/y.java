package com.tencent.mm.booter;

import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;

final class y extends Handler
{
  y(w paramw, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    aa.i("MicroMsg.MMNotification", "play sound handler, try to stop notify mediaplayer");
    try
    {
      if ((w.e(this.cav)) && (w.f(this.cav) != null) && (w.f(this.cav).isPlaying()))
      {
        w.f(this.cav).stop();
        w.f(this.cav).release();
        w.g(this.cav);
      }
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localIllegalStateException.getMessage();
      aa.c("MicroMsg.MMNotification", "Exception in playSoundHander %s", arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.y
 * JD-Core Version:    0.6.2
 */