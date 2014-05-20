package com.tencent.mm.n;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.network.r;
import com.tencent.mm.network.v;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.ba;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import junit.framework.Assert;

public final class ac
  implements m
{
  private static ac cmk = null;
  private static int cmt = 1;
  private an cip = null;
  private r cml;
  private Vector cmm = new Vector();
  private Vector cmn = new Vector();
  private final Map cmo = new HashMap();
  private final ak cmp;
  private long cmq = 21600000L;
  private boolean cmr = false;
  private ay cms = new ay(new ad(this), true);
  private boolean foreground = false;
  private final Handler handler = new ae(this, Looper.getMainLooper());
  private final Object lock = new Object();

  private ac(ak paramak)
  {
    this.cmp = paramak;
  }

  public static ac a(ak paramak)
  {
    if (cmk == null)
      cmk = new ac(paramak);
    return cmk;
  }

  private void b(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    this.handler.post(new ai(this, paramx, paramInt1, paramInt2, paramString));
  }

  private void e(x paramx)
  {
    aa.i("MicroMsg.netscene.NetSceneQueue", "doSceneImp start: type=" + paramx.getType() + " id=" + paramx.hashCode() + " cur_running_cnt=" + this.cmm.size() + " cur_waiting_cnt=" + this.cmn.size());
    if ((wX()) && (this.cml != null))
      aa.i("MicroMsg.netscene.NetSceneQueue", "run: type=" + paramx.getType() + " id=" + paramx.hashCode() + " cur_running_cnt=" + this.cmm.size());
    label330: 
    do
    {
      while (true)
      {
        synchronized (this.lock)
        {
          this.cmm.add(paramx);
          aa.i("MicroMsg.netscene.NetSceneQueue", "runningQueue_size=" + this.cmm.size());
          this.cip.o(new ag(this, paramx));
          if (this.cml != null)
            break;
          if (this.cmp != null)
            break label330;
          aa.e("MicroMsg.netscene.NetSceneQueue", "prepare dispatcher failed, null queue idle");
          return;
        }
        aa.i("MicroMsg.netscene.NetSceneQueue", "waited: type=" + paramx.getType() + " id=" + paramx.hashCode() + " cur_waiting_cnt=" + this.cmn.size());
        synchronized (this.lock)
        {
          this.cmn.add(paramx);
          aa.i("MicroMsg.netscene.NetSceneQueue", "waitingQueue_size = " + this.cmn.size());
        }
      }
      new ay(Looper.getMainLooper(), new aj(this), true).bO(100 * cmt);
    }
    while (cmt >= 512);
    cmt = 2 * cmt;
    return;
    cmt = 1;
  }

  private boolean f(x paramx)
  {
    int i = paramx.getType();
    switch (i)
    {
    default:
    case 10:
    case 24:
    case 37:
    case 38:
    case 39:
    case 133:
    case 159:
    case 214:
    case 400:
    case 522:
    }
    while (true)
    {
      return true;
      synchronized (this.lock)
      {
        Iterator localIterator1 = this.cmm.iterator();
        while (localIterator1.hasNext())
        {
          x localx2 = (x)localIterator1.next();
          if (localx2.getType() == i)
          {
            aa.i("MicroMsg.netscene.NetSceneQueue", "forbid in running: type=" + paramx.getType() + " id=" + paramx.hashCode() + " cur_running_cnt=" + this.cmm.size());
            if (paramx.b(localx2))
              return true;
            if (paramx.a(localx2))
            {
              aa.e("MicroMsg.netscene.NetSceneQueue", "forbid in running diagnostic: type=" + paramx.getType() + " id=" + paramx.hashCode() + " cur_running_cnt=" + this.cmm.size() + " ---" + localx2.hashCode());
              if (!this.foreground)
              {
                aa.appenderFlush();
                Assert.assertTrue("forbid in running diagnostic: type=" + paramx.getType() + "acinfo[" + localx2.getInfo() + "] scinfo[" + paramx.getInfo() + "]", false);
              }
              c(localx2);
              return true;
            }
            return false;
          }
        }
        Iterator localIterator2 = this.cmn.iterator();
        x localx1;
        do
        {
          if (!localIterator2.hasNext())
            break;
          localx1 = (x)localIterator2.next();
        }
        while (localx1.getType() != i);
        aa.i("MicroMsg.netscene.NetSceneQueue", "forbid in waiting: type=" + paramx.getType() + " id=" + paramx.hashCode() + " cur_waiting_cnt=" + this.cmn.size());
        if (paramx.b(localx1))
          return true;
        if (paramx.a(localx1))
        {
          aa.e("MicroMsg.netscene.NetSceneQueue", "forbid in waiting diagnostic: type=" + paramx.getType() + " id=" + paramx.hashCode() + " cur_waiting_cnt=" + this.cmn.size());
          if (!this.foreground)
          {
            aa.appenderFlush();
            Assert.assertTrue("forbid in waiting diagnostic: type=" + paramx.getType(), false);
          }
          c(localx1);
          return true;
        }
        return false;
      }
    }
  }

  private void wW()
  {
    while (true)
    {
      int j;
      synchronized (this.lock)
      {
        if (this.cmn.size() > 0)
        {
          x localx1 = (x)this.cmn.get(0);
          int i = localx1.getPriority();
          j = 1;
          k = i;
          localObject3 = localx1;
          if (j < this.cmn.size())
          {
            if (((x)this.cmn.get(j)).getPriority() > k)
            {
              this.cmn.get(j);
              if (wX())
              {
                x localx2 = (x)this.cmn.get(j);
                int n = localx2.getPriority();
                localObject4 = localx2;
                m = n;
                break label186;
              }
            }
          }
          else
          {
            this.cmn.remove(localObject3);
            aa.i("MicroMsg.netscene.NetSceneQueue", "waiting2running waitingQueue_size = " + this.cmn.size());
            e((x)localObject3);
          }
        }
        else
        {
          return;
        }
      }
      int m = k;
      Object localObject4 = localObject3;
      label186: j++;
      Object localObject3 = localObject4;
      int k = m;
    }
  }

  private boolean wX()
  {
    return this.cmm.size() < 20;
  }

  public final void T(boolean paramBoolean)
  {
    this.cmr = paramBoolean;
    if (!this.cmr)
    {
      this.cms.azn();
      return;
    }
    aa.e("MicroMsg.netscene.NetSceneQueue", "the working process is ready to be killed");
    this.cms.bO(this.cmq);
  }

  public final void U(boolean paramBoolean)
  {
    this.foreground = paramBoolean;
    if (this.cml == null)
    {
      aa.e("MicroMsg.netscene.NetSceneQueue", "setForeground autoAuth  == null");
      return;
    }
    this.cml.V(paramBoolean);
    at.U(paramBoolean);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    paramx.S(true);
    int i = paramx.getType();
    aa.i("MicroMsg.netscene.NetSceneQueue", "doSceneImp end: type=" + i + " id=" + paramx.hashCode() + " [" + paramInt1 + "," + paramInt2 + "]  cur_running_cnt=" + this.cmm.size() + " cur_waiting_cnt=" + this.cmn.size() + " errMsg = " + paramString);
    synchronized (this.lock)
    {
      this.cmm.remove(paramx);
      aa.i("MicroMsg.netscene.NetSceneQueue", "runningQueue_size = " + this.cmm.size());
      wW();
      b(paramInt1, paramInt2, paramString, paramx);
      if ((this.cmr) && (this.cmm.isEmpty()) && (this.cmn.isEmpty()))
        this.cms.bO(this.cmq);
      return;
    }
  }

  public final void a(int paramInt, m paramm)
  {
    synchronized (this.cmo)
    {
      if (!this.cmo.containsKey(Integer.valueOf(paramInt)))
        this.cmo.put(Integer.valueOf(paramInt), new HashSet());
      if (!((Set)this.cmo.get(Integer.valueOf(paramInt))).contains(paramm))
        ((Set)this.cmo.get(Integer.valueOf(paramInt))).add(paramm);
      return;
    }
  }

  public final void a(an paraman)
  {
    this.cip = paraman;
  }

  public final void b(int paramInt, m paramm)
  {
    try
    {
      synchronized (this.cmo)
      {
        if (this.cmo.get(Integer.valueOf(paramInt)) != null)
          ((Set)this.cmo.get(Integer.valueOf(paramInt))).remove(paramm);
        label46: return;
      }
    }
    catch (Exception localException)
    {
      break label46;
    }
  }

  public final void b(r paramr)
  {
    this.cml = paramr;
    wW();
  }

  public final void c(x paramx)
  {
    if (paramx == null)
      return;
    paramx.cancel();
    synchronized (this.lock)
    {
      this.cmn.remove(paramx);
      this.cmm.remove(paramx);
      return;
    }
  }

  public final void cancel(int paramInt)
  {
    this.cip.o(new af(this, paramInt));
  }

  public final boolean d(x paramx)
  {
    Assert.assertTrue(true);
    if (this.cip != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("worker thread has not been set", bool);
      if (f(paramx))
        break;
      return false;
    }
    e(paramx);
    return true;
  }

  public final String getNetworkServerIp()
  {
    if (this.cml != null)
      return this.cml.getNetworkServerIp();
    return "unknown";
  }

  public final void reset()
  {
    if (this.cml != null)
      this.cml.reset();
    wU();
    Vector localVector = this.cmn;
    this.cmn = new Vector();
    Iterator localIterator = localVector.iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)localIterator.next();
      aa.i("MicroMsg.netscene.NetSceneQueue", "reset::cancel scene " + localx.getType());
      localx.cancel();
      b(3, -1, "doScene failed clearWaitingQueue", localx);
    }
    localVector.clear();
  }

  public final r uN()
  {
    return this.cml;
  }

  public final boolean wR()
  {
    return this.foreground;
  }

  public final int wS()
  {
    try
    {
      if ((this.cml != null) && (this.cml.xa() != null))
        return this.cml.xa().EP();
      aa.e("MicroMsg.netscene.NetSceneQueue", "[arthurdan.getNetworkStatus] Notice!!! autoAuth and autoAuth.getNetworkEvent() is null!!!!");
      label42: if (ba.bk(al.getContext()))
        return 1;
      return 0;
    }
    catch (Exception localException)
    {
      break label42;
    }
  }

  public final boolean wT()
  {
    if (this.cml != null)
      return this.cml.wT();
    return true;
  }

  public final void wU()
  {
    Vector localVector = this.cmm;
    this.cmm = new Vector();
    Iterator localIterator = localVector.iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)localIterator.next();
      aa.i("MicroMsg.netscene.NetSceneQueue", "reset::cancel scene " + localx.getType());
      localx.cancel();
      b(3, -1, "doScene failed clearRunningQueue", localx);
    }
    localVector.clear();
  }

  public final void wV()
  {
    aa.i("MicroMsg.netscene.NetSceneQueue", "resetDispatcher");
    if (this.cml != null)
    {
      this.cml.reset();
      this.cml = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ac
 * JD-Core Version:    0.6.2
 */