package com.tencent.mm.app;

import android.os.Handler;

public final class f
{
  public static f bKU;
  private boolean bKV;
  private Handler bKW = new g(this);

  public static f nC()
  {
    if (bKU == null)
      bKU = new f();
    return bKU;
  }

  public final void resume()
  {
    this.bKV = true;
    this.bKW.removeMessages(-1999);
    this.bKW.removeMessages(-2999);
  }

  public final void start()
  {
    this.bKV = false;
    this.bKW.removeMessages(-1999);
    this.bKW.removeMessages(-2999);
    this.bKW.sendEmptyMessageDelayed(-1999, 3000L);
    this.bKW.sendEmptyMessageDelayed(-2999, 30000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.f
 * JD-Core Version:    0.6.2
 */