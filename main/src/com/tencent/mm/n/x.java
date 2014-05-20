package com.tencent.mm.n;

import android.os.Handler;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.cj;
import junit.framework.Assert;

public abstract class x
{
  private r clU;
  protected long clV = cj.FE();
  private int clW = -1;
  private int clX = -99;
  private an clY;
  private m clZ;
  private boolean cma;
  public Handler cmb;
  private int priority = 0;

  public final void S(boolean paramBoolean)
  {
    this.cma = paramBoolean;
  }

  public abstract int a(r paramr, m paramm);

  protected final int a(r paramr, aj paramaj, ab paramab)
  {
    c(paramr);
    if (this.clX == -99)
    {
      this.clX = we();
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneBase", "initilized security limit count to " + this.clX);
    }
    if (we() > 1)
      switch (y.cmc[a(paramaj).ordinal()])
      {
      default:
        Assert.assertTrue("invalid security verification status", false);
      case 3:
      case 1:
      case 2:
      }
    while (wL())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBase", "dispatch failed, scene limited for security, current limit=" + we());
      a(z.cme);
      this.clW = -1;
      return this.clW;
      Assert.assertTrue("scene security verification not passed, type=" + paramaj.getType() + ", uri=" + paramaj.getUri() + ", CHECK NOW", false);
      continue;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBase", "scene security verification not passed, type=" + paramaj.getType() + ", uri=" + paramaj.getUri());
      this.clX = (-1 + this.clX);
      a(z.cmd);
      this.clW = -1;
      return this.clW;
    }
    this.clX = (-1 + this.clX);
    ar localar = new ar(paramaj);
    if (this.clY != null)
      this.clY.cancel();
    if (this.cmb == null);
    for (this.clY = new an(paramaj, paramab, this, this.clZ); ; this.clY = new an(paramaj, paramab, this, this.clZ, this.cmb))
    {
      this.clW = paramr.a(localar, this.clY);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.clW);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBase", "dispatcher send, %d", arrayOfObject);
      if (this.clW >= 0)
        break;
      paramab.a(-1, 3, -1, "send to network failed", paramaj, null);
      return 99999999;
    }
    this.clY.xb();
    return this.clW;
  }

  protected aa a(aj paramaj)
  {
    return aa.cmg;
  }

  public final void a(m paramm)
  {
    this.clZ = paramm;
  }

  protected void a(z paramz)
  {
  }

  protected boolean a(x paramx)
  {
    return false;
  }

  protected boolean b(x paramx)
  {
    return false;
  }

  protected final void c(r paramr)
  {
    this.clV = cj.FE();
    this.clU = paramr;
  }

  protected void cancel()
  {
    if (this.clY != null)
      this.clY.cancel();
    if ((this.clW != -1) && (this.clU != null))
      this.clU.cancel(this.clW);
  }

  public String getInfo()
  {
    return "";
  }

  public final int getPriority()
  {
    return this.priority;
  }

  public abstract int getType();

  public final void reset()
  {
    this.clV = cj.FE();
    this.clW = -1;
    this.clX = -99;
  }

  protected boolean wL()
  {
    return this.clX <= 0;
  }

  protected final r wM()
  {
    return this.clU;
  }

  public boolean wN()
  {
    return we() == 1;
  }

  public final boolean wO()
  {
    return this.cma;
  }

  protected final void wP()
  {
    this.clW = -1;
  }

  protected int we()
  {
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.x
 * JD-Core Version:    0.6.2
 */