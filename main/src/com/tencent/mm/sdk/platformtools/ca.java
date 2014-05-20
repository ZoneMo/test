package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.hardware.SensorManager;
import java.util.List;

public final class ca
{
  private cb gfd;
  private SensorManager manager;

  public ca(Context paramContext)
  {
    this.manager = ((SensorManager)paramContext.getSystemService("sensor"));
  }

  public final void azK()
  {
    if ((this.manager != null) && (this.gfd != null))
      this.manager.unregisterListener(this.gfd, 2);
  }

  public final boolean r(Runnable paramRunnable)
  {
    if (this.manager == null);
    List localList;
    do
    {
      return false;
      localList = this.manager.getSensorList(1);
    }
    while ((localList == null) || (localList.size() <= 0));
    this.gfd = new cb(paramRunnable);
    this.manager.registerListener(this.gfd, 2, 3);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ca
 * JD-Core Version:    0.6.2
 */