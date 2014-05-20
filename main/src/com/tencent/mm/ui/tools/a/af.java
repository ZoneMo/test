package com.tencent.mm.ui.tools.a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;

final class af
{
  private final Handler handler;
  private final e hpY;
  private final Boolean hqW = Boolean.valueOf(false);
  private final HandlerThread hqX;
  long hqY;
  long hqZ;
  long hra;
  long hrb;
  long hrc;
  long hrd;
  int hre;
  int hrf;

  af(e parame)
  {
    if (this.hqW.booleanValue())
    {
      this.hpY = parame;
      this.hqX = new HandlerThread("Monet-Stats", 10);
      this.hqX.start();
      this.handler = new ag(this.hqX.getLooper(), this);
      return;
    }
    this.hpY = null;
    this.hqX = null;
    this.handler = null;
  }

  private void a(Bitmap paramBitmap, int paramInt)
  {
    if (this.handler != null)
    {
      int i = ah.s(paramBitmap);
      this.handler.sendMessage(this.handler.obtainMessage(paramInt, i, 0));
    }
  }

  final void aOW()
  {
    if (this.handler != null)
      this.handler.sendEmptyMessage(1);
  }

  final void aOX()
  {
    if (this.handler != null)
      this.handler.sendEmptyMessage(2);
  }

  final void q(Bitmap paramBitmap)
  {
    a(paramBitmap, 3);
  }

  final void r(Bitmap paramBitmap)
  {
    a(paramBitmap, 4);
  }

  final void shutdown()
  {
    if (this.hqX != null)
      this.hqX.quit();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.af
 * JD-Core Version:    0.6.2
 */