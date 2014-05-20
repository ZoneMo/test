package com.tencent.mm.app;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.booter.NotifyReceiver.NotifyService;
import com.tencent.mm.modelfriend.AddrBookObserver;
import com.tencent.mm.n.ak;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.ui.MMAppMgr;

final class t
  implements ak
{
  t(WorkerProfile paramWorkerProfile)
  {
  }

  public final void a(com.tencent.mm.n.ac paramac, boolean paramBoolean)
  {
    if ((paramBoolean) && (!paramac.wR()))
    {
      if (!WorkerProfile.nX())
        aa.w("MicroMsg.WorkerProfile", "can't kill the working process");
    }
    else
      return;
    MMAppMgr.aFj();
    aa.e("MicroMsg.WorkerProfile", "now killing the working process....");
    if (AddrBookObserver.yB())
    {
      aa.e("MicroMsg.WorkerProfile", "address book syncing, wait a minute please");
      return;
    }
    Context localContext = al.getContext();
    localContext.stopService(new Intent(localContext, NotifyReceiver.NotifyService.class));
    com.tencent.mm.m.ac.b(new u(this));
  }

  public final void nY()
  {
    WorkerProfile.b(this.bLu).s(WorkerProfile.a(this.bLu));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.t
 * JD-Core Version:    0.6.2
 */