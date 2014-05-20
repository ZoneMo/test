package com.tencent.mm.app;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Process;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.loader.PluginResourceLoader;
import com.tencent.mm.compatible.loader.g;
import com.tencent.mm.compatible.loader.j;
import com.tencent.mm.platformtools.i;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.tools.a.u;
import java.io.File;

public class MMApplication extends Application
{
  public static MMApplication bKS;
  public static long bKT;
  private com.tencent.mm.compatible.loader.h bKR = null;

  public Resources getResources()
  {
    Object localObject = g.cff;
    if (localObject == null)
      localObject = super.getResources();
    return localObject;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    aa.d("MicroMsg.MMApplication", "configuration changed");
    if (g.cff.cfm.getDisplayMetrics() != null)
      g.cff.updateConfiguration(paramConfiguration, g.cff.cfm.getDisplayMetrics());
    while (true)
    {
      super.onConfigurationChanged(paramConfiguration);
      if (this.bKR != null)
        this.bKR.bc();
      return;
      g.cff.updateConfiguration(paramConfiguration, null);
    }
  }

  public void onCreate()
  {
    bKT = System.currentTimeMillis();
    al.setContext(this);
    bKS = this;
    com.tencent.mm.storage.h.ggu = "/data/data/" + al.getContext().getPackageName() + "/";
    com.tencent.mm.storage.h.cfC = com.tencent.mm.storage.h.ggu + "MicroMsg/";
    SharedPreferences localSharedPreferences = getSharedPreferences("system_config_prefs", 0);
    int i = 0;
    if (localSharedPreferences != null)
      i = localSharedPreferences.getInt("default_uin", 0);
    at.ac(String.valueOf(i), a.fxr);
    long l1 = System.currentTimeMillis();
    i locali = new i(com.tencent.mm.storage.h.cfC + "NowRev.ini");
    String str1 = locali.getValue("NowRev");
    long l2 = System.currentTimeMillis();
    long l3 = l2 - l1;
    long l4 = 0L;
    if (!"613228".equals(str1))
    {
      c.b(new File(al.getContext().getDir("lib", 0).getAbsolutePath()));
      c.b(new File(al.getContext().getDir("dex", 0).getAbsolutePath()));
      c.b(new File(al.getContext().getDir("cache", 0).getAbsolutePath()));
      locali.N("NowRev", "613228");
      l4 = System.currentTimeMillis() - l2;
    }
    String str2 = cj.r(this, Process.myPid());
    long l5 = System.currentTimeMillis();
    g.a(this);
    this.bKR = new j().a(this, str2);
    if (this.bKR != null)
      this.bKR.onCreate();
    Object[] arrayOfObject = new Object[9];
    arrayOfObject[0] = str2;
    arrayOfObject[1] = Long.valueOf(cj.N(bKT));
    arrayOfObject[2] = Long.valueOf(cj.N(l5));
    arrayOfObject[3] = Integer.valueOf(i);
    arrayOfObject[4] = str1;
    arrayOfObject[5] = "613228";
    arrayOfObject[6] = Long.valueOf(l3);
    arrayOfObject[7] = Long.valueOf(l4);
    arrayOfObject[8] = com.tencent.mm.storage.h.cfC;
    aa.d("MicroMsg.MMApplication", "APPonCreate proc:%s time:%d(loader:%d) defuin:%d old:%s new:%s time[%d,%d] path:%s", arrayOfObject);
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    u.close();
  }

  public void onTerminate()
  {
    super.onTerminate();
    if (this.bKR != null)
      this.bKR.onTerminate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.MMApplication
 * JD-Core Version:    0.6.2
 */