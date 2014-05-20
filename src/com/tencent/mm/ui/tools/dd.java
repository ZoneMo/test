package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import java.lang.ref.WeakReference;

public final class dd extends Handler
{
  WeakReference hlc;
  private long hld;
  private boolean hle;

  public dd(WeakReference paramWeakReference)
  {
    this.hlc = paramWeakReference;
  }

  private void b(int paramInt, long paramLong1, long paramLong2)
  {
    this.hld = paramLong2;
    sendEmptyMessageDelayed(paramInt, paramLong1);
  }

  public final void aNv()
  {
    b(2, 500L, 0L);
  }

  public final void aNw()
  {
    b(1, 15L, 15L);
  }

  public final void aNx()
  {
    removeMessages(2);
  }

  public final void et(boolean paramBoolean)
  {
    this.hle = paramBoolean;
    b(0, 350L, 0L);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    removeMessages(paramMessage.what);
    MMGestureGallery localMMGestureGallery;
    if (this.hlc != null)
    {
      localMMGestureGallery = (MMGestureGallery)this.hlc.get();
      if (localMMGestureGallery != null)
      {
        if (paramMessage.what != 0)
          break label95;
        if ((MMGestureGallery.i(localMMGestureGallery) == 1) || (this.hle))
        {
          aa.d("MicroMsg.MMGestureGallery", "single click over!");
          if (MMGestureGallery.f(localMMGestureGallery) != null)
            MMGestureGallery.c(localMMGestureGallery).post(new de(this, localMMGestureGallery));
        }
        MMGestureGallery.a(localMMGestureGallery, 0);
      }
    }
    label95: 
    do
    {
      return;
      if (paramMessage.what == 1)
      {
        if ((MMGestureGallery.z(localMMGestureGallery) != null) && (!MMGestureGallery.z(localMMGestureGallery).vN()))
        {
          MMGestureGallery.z(localMMGestureGallery).play();
          sendEmptyMessageDelayed(paramMessage.what, this.hld);
          return;
        }
        MMGestureGallery.A(localMMGestureGallery);
        return;
      }
      removeMessages(2);
    }
    while (MMGestureGallery.B(localMMGestureGallery) == null);
    MMGestureGallery.c(localMMGestureGallery).post(new df(this, localMMGestureGallery));
  }

  public final void release()
  {
    removeMessages(0);
    removeMessages(1);
    removeMessages(2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dd
 * JD-Core Version:    0.6.2
 */