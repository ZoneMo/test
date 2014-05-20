package com.tencent.mm.af;

import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.bw;

public final class e
{
  private static e cyl = null;
  private byte[] cbL = new byte[0];
  private bu cym = new bu(1, "speex_worker");
  private m cyn = null;

  public static e CL()
  {
    if (cyl == null)
      cyl = new e();
    return cyl;
  }

  public final void b(bw parambw)
  {
    aa.d("upload", "pushWork");
    this.cym.c(parambw);
  }

  public final void pause()
  {
    aa.d("upload", "now pause speex uploader");
    this.cym.cR(true);
  }

  public final void resume()
  {
    Looper.myQueue().addIdleHandler(new f(this));
  }

  public final void start()
  {
    if (!ba.bt(al.getContext()))
      return;
    new Handler(Looper.getMainLooper()).postDelayed(new g(this), 100L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.e
 * JD-Core Version:    0.6.2
 */