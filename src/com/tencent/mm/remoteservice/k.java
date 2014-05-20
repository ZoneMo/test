package com.tencent.mm.remoteservice;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.List;

final class k
  implements ServiceConnection
{
  k(j paramj)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    j.a(this.gaC, g.v(paramIBinder));
    Runnable[] arrayOfRunnable = (Runnable[])j.a(this.gaC).toArray(new Runnable[j.a(this.gaC).size()]);
    int i = arrayOfRunnable.length;
    for (int j = 0; j < i; j++)
      arrayOfRunnable[j].run();
    j.a(this.gaC).clear();
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    j.a(this.gaC, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.remoteservice.k
 * JD-Core Version:    0.6.2
 */