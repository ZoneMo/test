package com.tencent.mm.plugin.backup.model;

import android.os.Handler;
import android.os.Looper;

final class e extends Thread
{
  e(d paramd)
  {
  }

  public final void run()
  {
    Looper.prepare();
    d.a(this.cJY, new Handler());
    Looper.loop();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.e
 * JD-Core Version:    0.6.2
 */