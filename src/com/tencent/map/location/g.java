package com.tencent.map.location;

import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;

public final class g
{
  private boolean TW = false;
  private z UH = null;
  private Handler UP = null;
  private Runnable UQ = new y(this);
  private WifiManager US = null;
  private g.a UT = null;
  private aa UU = null;
  private byte[] Ui = new byte[0];
  private int jdField_a_of_type_Int = 1;
  private Context jdField_a_of_type_AndroidContentContext = null;

  public final boolean a(Context paramContext, aa paramaa)
  {
    synchronized (this.Ui)
    {
      if (this.TW)
        return true;
      if ((paramContext == null) || (paramaa == null))
        return false;
      this.UP = new Handler(Looper.getMainLooper());
      this.jdField_a_of_type_AndroidContentContext = paramContext;
      this.UU = paramaa;
      this.jdField_a_of_type_Int = 1;
      try
      {
        this.US = ((WifiManager)this.jdField_a_of_type_AndroidContentContext.getSystemService("wifi"));
        IntentFilter localIntentFilter = new IntentFilter();
        this.UT = new g.a(this);
        if (this.US != null)
        {
          g.a locala = this.UT;
          if (locala != null);
        }
        else
        {
          return false;
        }
        localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        localIntentFilter.addAction("android.net.wifi.SCAN_RESULTS");
        this.jdField_a_of_type_AndroidContentContext.registerReceiver(this.UT, localIntentFilter);
        f(0L);
        this.TW = true;
        return this.TW;
      }
      catch (Exception localException)
      {
        return false;
      }
    }
  }

  public final void f(long paramLong)
  {
    if ((this.UP != null) && (this.TW))
    {
      this.UP.removeCallbacks(this.UQ);
      this.UP.postDelayed(this.UQ, paramLong);
    }
  }

  public final void lX()
  {
    synchronized (this.Ui)
    {
      if (!this.TW)
        return;
      if ((this.jdField_a_of_type_AndroidContentContext == null) || (this.UT == null))
        return;
    }
    try
    {
      this.jdField_a_of_type_AndroidContentContext.unregisterReceiver(this.UT);
      label50: this.UP.removeCallbacks(this.UQ);
      this.TW = false;
      return;
    }
    catch (Exception localException)
    {
      break label50;
    }
  }

  public final boolean lZ()
  {
    return this.TW;
  }

  public final boolean mh()
  {
    if ((this.jdField_a_of_type_AndroidContentContext == null) || (this.US == null))
      return false;
    return this.US.isWifiEnabled();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.g
 * JD-Core Version:    0.6.2
 */