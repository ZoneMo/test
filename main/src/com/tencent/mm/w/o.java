package com.tencent.mm.w;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

public final class o
  implements m
{
  private static Set ctA = new HashSet();
  private LinkedList ctB = new LinkedList();
  private boolean ctC = false;
  private ad ctD = new p(this);
  private Queue ctE = new LinkedList();
  private int ctF = 0;
  private long ctG = 0L;
  private boolean ctH = false;
  k ctI = new k();
  private ay ctJ = new ay(be.ut().getLooper(), new s(this), false);
  private boolean th = false;

  public o()
  {
    if (be.uA() != null)
      be.uA().a(110, this);
    this.ctB.clear();
    this.ctC = false;
  }

  private void AQ()
  {
    this.ctE.clear();
    this.th = false;
    aa.d("MicroMsg.ImgService", "Finish service use time(ms):" + this.ctI.qh());
  }

  public static boolean dI(int paramInt)
  {
    return ctA.add(Integer.valueOf(paramInt));
  }

  public static boolean dJ(int paramInt)
  {
    return ctA.remove(Integer.valueOf(paramInt));
  }

  public static void dK(int paramInt)
  {
    e locale1 = ag.Ba().dE(paramInt);
    if ((locale1 == null) || (locale1.AG() <= 0L));
    while (true)
    {
      return;
      e locale2 = ag.Ba().dH((int)locale1.AG());
      if (locale2 != null)
      {
        locale2.setStatus(-1);
        locale2.cL(264);
        ag.Ba().a((int)locale2.AG(), locale2);
      }
      for (ak localak = be.uz().sw().bU(locale2.AF()); (localak != null) && (localak.Bo() == locale1.AF()); localak = be.uz().sw().bU(locale1.AF()))
      {
        localak.setStatus(5);
        localak.cL(8);
        be.uz().sw().a((int)localak.Bo(), localak);
        return;
        locale1.setStatus(-1);
        locale1.cL(264);
        ag.Ba().a(paramInt, locale1);
      }
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    be.ut().o(new q(this, paramx));
  }

  public final void a(int paramInt1, String paramString1, String paramString2, ArrayList paramArrayList, int paramInt2, boolean paramBoolean)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (v.b(str, paramString2, paramBoolean));
      y localy;
      for (int i = 1; ; i = 0)
      {
        localy = new y(paramInt1, paramString1, paramString2, str, i, paramInt2, this.ctD);
        if (!this.ctC)
          break label91;
        this.ctB.offer(localy);
        break;
      }
      label91: be.uA().d(localy);
      this.ctC = true;
    }
  }

  public final void run()
  {
    be.ut().o(new r(this));
  }

  public final void stop()
  {
    this.ctF = 0;
    be.uA().b(110, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.o
 * JD-Core Version:    0.6.2
 */