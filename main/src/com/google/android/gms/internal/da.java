package com.google.android.gms.internal;

import android.os.Handler;
import android.os.IInterface;
import com.google.android.gms.common.b;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import java.util.ArrayList;

public abstract class da
  implements b
{
  public static final String[] Rg = { "service_esmobile", "service_googleme" };
  private IInterface QZ;
  private ArrayList Ra;
  final ArrayList Rb;
  private boolean Rc;
  private ArrayList Rd;
  private boolean Re;
  private final ArrayList Rf;
  final Handler mHandler;

  public final void a(c paramc)
  {
    i.M(paramc);
    synchronized (this.Ra)
    {
      if (this.Ra.contains(paramc))
      {
        new StringBuilder("registerConnectionCallbacks(): listener ").append(paramc).append(" is already registered").toString();
        if (isConnected())
          this.mHandler.sendMessage(this.mHandler.obtainMessage(4, paramc));
        return;
      }
      if (this.Rc)
        this.Ra = new ArrayList(this.Ra);
      this.Ra.add(paramc);
    }
  }

  public final void a(d paramd)
  {
    i.M(paramd);
    synchronized (this.Rd)
    {
      if (this.Rd.contains(paramd))
      {
        new StringBuilder("registerConnectionFailedListener(): listener ").append(paramd).append(" is already registered").toString();
        return;
      }
      if (this.Re)
        this.Rd = new ArrayList(this.Rd);
      this.Rd.add(paramd);
    }
  }

  public final void a(db paramdb)
  {
    synchronized (this.Rf)
    {
      this.Rf.add(paramdb);
      this.mHandler.sendMessage(this.mHandler.obtainMessage(2, paramdb));
      return;
    }
  }

  public final boolean b(c paramc)
  {
    i.M(paramc);
    synchronized (this.Ra)
    {
      boolean bool = this.Ra.contains(paramc);
      return bool;
    }
  }

  public final boolean b(d paramd)
  {
    i.M(paramd);
    synchronized (this.Rd)
    {
      boolean bool = this.Rd.contains(paramd);
      return bool;
    }
  }

  public final void c(c paramc)
  {
    i.M(paramc);
    synchronized (this.Ra)
    {
      if (this.Ra != null)
      {
        if (this.Rc)
          this.Ra = new ArrayList(this.Ra);
        if (this.Ra.remove(paramc))
          break label77;
        new StringBuilder("unregisterConnectionCallbacks(): listener ").append(paramc).append(" not found").toString();
      }
      label77: 
      while ((!this.Rc) || (this.Rb.contains(paramc)))
        return;
      this.Rb.add(paramc);
    }
  }

  public final void c(d paramd)
  {
    i.M(paramd);
    synchronized (this.Rd)
    {
      if (this.Rd != null)
      {
        if (this.Re)
          this.Rd = new ArrayList(this.Rd);
        if (!this.Rd.remove(paramd))
          new StringBuilder("unregisterConnectionFailedListener(): listener ").append(paramd).append(" not found").toString();
      }
      return;
    }
  }

  public final boolean isConnected()
  {
    return this.QZ != null;
  }

  protected final void lh()
  {
    if (!isConnected())
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
  }

  protected final IInterface li()
  {
    lh();
    return this.QZ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.da
 * JD-Core Version:    0.6.2
 */