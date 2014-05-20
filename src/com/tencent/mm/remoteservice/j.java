package com.tencent.mm.remoteservice;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.LinkedList;
import java.util.List;

public final class j
{
  private Context context;
  private ServiceConnection eMy = new k(this);
  private List gaA = new LinkedList();
  private f gaB;

  public j(Context paramContext)
  {
    this.context = paramContext;
  }

  final void a(c paramc, String paramString, Bundle paramBundle)
  {
    if (isConnected());
    try
    {
      this.gaB.a(paramc.getClass().getName(), paramString, paramBundle, paramc);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }

  public final boolean isConnected()
  {
    return (this.gaB != null) && (this.gaB.asBinder().isBinderAlive());
  }

  public final void n(Runnable paramRunnable)
  {
    new StringBuilder("RemoteServiceProxy construct, thread id:").append(Thread.currentThread().getId()).toString();
    if (isConnected())
    {
      paramRunnable.run();
      return;
    }
    this.gaA.add(paramRunnable);
    Intent localIntent = new Intent(this.context, RemoteService.class);
    this.context.bindService(localIntent, this.eMy, 1);
  }

  public final void release()
  {
    if ((this.gaB != null) && (this.eMy != null))
    {
      this.context.unbindService(this.eMy);
      this.gaB = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.remoteservice.j
 * JD-Core Version:    0.6.2
 */