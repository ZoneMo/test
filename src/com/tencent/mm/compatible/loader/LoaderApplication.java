package com.tencent.mm.compatible.loader;

import android.app.Application;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.tencent.mm.sdk.platformtools.al;

public class LoaderApplication extends Application
{
  private h bKR = null;

  public Resources getResources()
  {
    return g.cff;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.bKR == null)
      return;
    this.bKR.bc();
  }

  public void onCreate()
  {
    al.setContext(this);
    g.a(this);
    try
    {
      this.bKR = ((i)g.cfe.loadClass(al.azr() + ".compatible.loader.ProfileFactoryImpl").newInstance()).a(this, null);
      label52: if (this.bKR == null)
        return;
      this.bKR.onCreate();
      return;
    }
    catch (Exception localException)
    {
      break label52;
    }
  }

  public void onTerminate()
  {
    if (this.bKR == null)
      return;
    this.bKR.onTerminate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.loader.LoaderApplication
 * JD-Core Version:    0.6.2
 */