package com.tencent.mm.jni.platformcomm;

import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;

public class WakerLock
{
  private static final String TAG = "MicroMsg.WakerLock";
  private Handler mHandler = null;
  private Runnable mReleaser = new g(this);
  private PowerManager.WakeLock wakeLock = null;

  public WakerLock(Context paramContext)
  {
    this.wakeLock = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "MicroMsg.WakerLock");
    this.wakeLock.setReferenceCounted(false);
    this.mHandler = new Handler(paramContext.getMainLooper());
  }

  protected void finalize()
  {
    unLock();
  }

  public boolean isLocking()
  {
    return this.wakeLock.isHeld();
  }

  public void lock()
  {
    this.mHandler.removeCallbacks(this.mReleaser);
    this.wakeLock.acquire();
  }

  public void lock(long paramLong)
  {
    lock();
    this.mHandler.postDelayed(this.mReleaser, paramLong);
  }

  public void unLock()
  {
    this.mHandler.removeCallbacks(this.mReleaser);
    if (this.wakeLock.isHeld())
      this.wakeLock.release();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.jni.platformcomm.WakerLock
 * JD-Core Version:    0.6.2
 */