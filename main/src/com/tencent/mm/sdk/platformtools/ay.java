package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class ay extends Handler
{
  private static int gdu;
  private final int gdv;
  private final boolean geb;
  private long gec = 0L;
  private final az ged;

  public ay(Looper paramLooper, az paramaz, boolean paramBoolean)
  {
    super(paramLooper);
    this.ged = paramaz;
    this.gdv = azF();
    this.geb = paramBoolean;
  }

  public ay(az paramaz, boolean paramBoolean)
  {
    this.ged = paramaz;
    this.gdv = azF();
    this.geb = paramBoolean;
  }

  private static int azF()
  {
    if (gdu >= 8192)
      gdu = 0;
    int i = 1 + gdu;
    gdu = i;
    return i;
  }

  public final boolean azG()
  {
    return !hasMessages(this.gdv);
  }

  public final void azn()
  {
    removeMessages(this.gdv);
  }

  public final void bO(long paramLong)
  {
    this.gec = paramLong;
    azn();
    sendEmptyMessageDelayed(this.gdv, paramLong);
  }

  protected void finalize()
  {
    azn();
    super.finalize();
  }

  public void handleMessage(Message paramMessage)
  {
    if ((paramMessage.what != this.gdv) || (this.ged == null));
    while ((!this.ged.ok()) || (!this.geb))
      return;
    sendEmptyMessageDelayed(this.gdv, this.gec);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ay
 * JD-Core Version:    0.6.2
 */