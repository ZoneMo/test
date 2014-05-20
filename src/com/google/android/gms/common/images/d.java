package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.cs;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.r;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class d
  implements Runnable
{
  private final Bitmap KD;
  private final CountDownLatch KE;
  private boolean KF;
  private final Uri Ky;

  public d(ImageManager paramImageManager, Uri paramUri, Bitmap paramBitmap, boolean paramBoolean, CountDownLatch paramCountDownLatch)
  {
    this.Ky = paramUri;
    this.KD = paramBitmap;
    this.KF = paramBoolean;
    this.KE = paramCountDownLatch;
  }

  private void a(ImageManager.c paramc, boolean paramBoolean)
  {
    paramc.KA = true;
    ArrayList localArrayList = ImageManager.c.a(paramc);
    int i = localArrayList.size();
    int j = 0;
    if (j < i)
    {
      cs localcs = (cs)localArrayList.get(j);
      if (paramBoolean)
        localcs.a(ImageManager.a(this.KB), this.KD);
      while (true)
      {
        if (localcs.LL != 1)
          ImageManager.c(this.KB).remove(localcs);
        j++;
        break;
        localcs.l(ImageManager.a(this.KB));
      }
    }
    paramc.KA = false;
  }

  public final void run()
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread())
    {
      new StringBuilder("checkMainThread: current thread ").append(Thread.currentThread()).append(" IS NOT the main thread ").append(Looper.getMainLooper().getThread()).append("!").toString();
      throw new IllegalStateException("OnBitmapLoadedRunnable must be executed in the main thread");
    }
    boolean bool;
    if (this.KD != null)
      bool = true;
    while (ImageManager.f(this.KB) != null)
      if (this.KF)
      {
        ImageManager.f(this.KB).g(-1);
        System.gc();
        this.KF = false;
        ImageManager.e(this.KB).post(this);
        return;
        bool = false;
      }
      else if (bool)
      {
        ImageManager.f(this.KB).put(new ct(this.Ky), this.KD);
      }
    ImageManager.c localc = (ImageManager.c)ImageManager.b(this.KB).remove(this.Ky);
    if (localc != null)
      a(localc, bool);
    this.KE.countDown();
    synchronized (ImageManager.hs())
    {
      ImageManager.ht().remove(this.Ky);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.images.d
 * JD-Core Version:    0.6.2
 */