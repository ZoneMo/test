package com.tencent.mm.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.mm.booter.CoreService;
import com.tencent.mm.booter.h;
import com.tencent.mm.model.be;
import com.tencent.mm.modelstat.r;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.am;
import com.tencent.mm.network.t;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import junit.framework.Assert;

final class b
  implements ServiceConnection
{
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aa.w("MicroMsg.CoreServiceConnection", "onServiceConnected ");
    if (paramIBinder == null)
    {
      Assert.assertTrue("WorkerProfile onServiceConnected binder == null", false);
      com.tencent.mm.sdk.platformtools.at.azE().aN("WorkerProfile onServiceConnected binder == null", "it will result in accInfo being null");
    }
    am localam = new am(t.g(paramIBinder));
    be.b(localam);
    r.d(localam);
    localam.C(com.tencent.mm.platformtools.at.cHu, com.tencent.mm.platformtools.at.cHv);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    aa.w("MicroMsg.CoreServiceConnection", "onServiceDisconnected ");
    if ((be.uD()) && (!be.uG()))
    {
      be.uA().wU();
      s(al.getContext());
      return;
    }
    be.uA().wV();
    be.uA().reset();
  }

  public final void s(Context paramContext)
  {
    if (!h.k(paramContext, "noop"))
      aa.i("MicroMsg.CoreServiceConnection", "ensureServiceInstance return false");
    do
    {
      return;
      aa.i("MicroMsg.CoreServiceConnection", "prepare dispatcher / bind core service");
    }
    while (paramContext.bindService(new Intent(paramContext, CoreService.class), this, 1));
    aa.e("MicroMsg.CoreServiceConnection", "bindService failed, may be caused by some crashes");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.b
 * JD-Core Version:    0.6.2
 */