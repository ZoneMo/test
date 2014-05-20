package com.tencent.mm.plugin.d.c;

import android.util.SparseBooleanArray;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.d.a.d;
import com.tencent.mm.plugin.d.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

public enum m
{
  private SparseBooleanArray dZO = new SparseBooleanArray();
  private c dZP;
  private bu dZQ;

  static
  {
    m[] arrayOfm = new m[1];
    arrayOfm[0] = dZN;
  }

  private m()
  {
  }

  private void Zm()
  {
    aa.i("MicroMsg.ReportManager", "doRemoveSceneEndListener");
    be.uA().b(308, this.dZP);
    be.uA().b(311, this.dZP);
    be.uA().b(309, this.dZP);
    be.uA().b(310, this.dZP);
  }

  private void Zn()
  {
    if ((this.dZQ == null) || (this.dZQ.azH()))
    {
      aa.v("MicroMsg.ReportManager", "check worker thread is null or is dead, new one");
      this.dZQ = new bu(1, "Report-Manager");
    }
  }

  private void d(int paramInt, long paramLong)
  {
    this.dZO.put(paramInt, true);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Long.valueOf(paramLong);
    aa.f("MicroMsg.ReportManager", "operationBegin eventID = %d, beginMark=%d", arrayOfObject);
    d locald = new d();
    locald.fDL = paramInt;
    locald.fDQ = ((int)cj.FC());
    locald.fDR = locald.fDQ;
    locald.aA(cj.FD());
    locald.aB(locald.YV());
    locald.az(paramLong);
    locald.aZ(true);
    locald.ba(false);
    j.a(locald, false);
  }

  public final void Zk()
  {
    aa.v("MicroMsg.ReportManager", "clean up");
    Zm();
    this.dZP = null;
    j.Zh();
    j.Zi();
  }

  public final void Zl()
  {
    i.hx(8);
    d(8, 8L);
  }

  final void Zo()
  {
    if ((!be.se()) || (this.dZP == null))
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Boolean.valueOf(be.se());
      if (this.dZP == null);
      for (boolean bool = true; ; bool = false)
      {
        arrayOfObject1[1] = Boolean.valueOf(bool);
        aa.f("MicroMsg.ReportManager", "save all : MMCore.hasSetUin() = %B, getReportRuleHelper is null = %B", arrayOfObject1);
        return;
      }
    }
    long l = cj.FD();
    if (l - cj.a((Long)be.uz().sr().get(-1413405884), 0L) > 184320L)
    {
      Zn();
      this.dZQ.c(new o((byte)0));
      be.uz().sr().set(-1413405884, Long.valueOf(l));
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Long.valueOf(l);
      aa.e("MicroMsg.ReportManager", "ask for save all ok, time = %d", arrayOfObject3);
      return;
    }
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Long.valueOf(l);
    aa.f("MicroMsg.ReportManager", "ask for save all fail, time = %d", arrayOfObject2);
  }

  final void Zp()
  {
    if (this.dZP != null)
    {
      aa.i("MicroMsg.GetReportRuleHelper", "doGetReportRule");
      if (!be.se())
        aa.w("MicroMsg.GetReportRuleHelper", "doGetReportRule error, has not set uin");
    }
    else
    {
      return;
    }
    long l1 = cj.FD();
    long l2 = cj.a((Long)be.uz().sr().get(-1413405883));
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Long.valueOf(l1);
    arrayOfObject[1] = Long.valueOf(l2);
    arrayOfObject[2] = Long.valueOf(14400000L);
    aa.d("MicroMsg.GetReportRuleHelper", "now = %d, lastTimestamp = %d, cycle = %d", arrayOfObject);
    if (l1 - l2 > 14400000L)
    {
      aa.d("MicroMsg.GetReportRuleHelper", "time out do get report rule");
      be.uz().sr().set(-1413405883, Long.valueOf(l1));
      com.tencent.mm.plugin.d.b.e locale = new com.tencent.mm.plugin.d.b.e();
      be.uA().d(locale);
      return;
    }
    aa.d("MicroMsg.GetReportRuleHelper", "min time limit, do not do get report rule");
  }

  public final void a(boolean paramBoolean, int paramInt, String paramString)
  {
    if (this.dZP == null)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.ReportManager", "getReportRuleHelper is null, ignore this report, kvStat logID=%d", arrayOfObject3);
      return;
    }
    if (!this.dZP.hu(1))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      arrayOfObject2[1] = paramString;
      aa.f("MicroMsg.ReportManager", "kvstat report is close, ignore this report, kvStat logID=%d, val=%s", arrayOfObject2);
      return;
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = paramString;
    aa.f("MicroMsg.ReportManager", "kvStat logID=%d, val=%s", arrayOfObject1);
    f localf = new f();
    localf.YW();
    localf.fNl = paramInt;
    localf.fNk = paramString;
    localf.fDQ = ((int)cj.FC());
    localf.fDR = localf.fDQ;
    j.a(localf, paramBoolean);
  }

  final void ar(int paramInt1, int paramInt2)
  {
    if ((this.dZP == null) || (!this.dZP.hu(paramInt1)))
    {
      Object[] arrayOfObject1 = new Object[2];
      if (this.dZP == null);
      for (boolean bool = true; ; bool = false)
      {
        arrayOfObject1[0] = Boolean.valueOf(bool);
        arrayOfObject1[1] = Integer.valueOf(paramInt1);
        aa.f("MicroMsg.ReportManager", "report : getReportRuleHelper is null = %B, if not null, it will be close, type = %d", arrayOfObject1);
        return;
      }
    }
    if (!be.se())
    {
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Boolean.valueOf(be.se());
      aa.f("MicroMsg.ReportManager", "report : MMCore.hasSetUin() = %B", arrayOfObject5);
      return;
    }
    long l1 = cj.FD();
    long l2 = cj.a((Long)be.uz().sr().get(paramInt2), 0L);
    long l3 = this.dZP.hv(paramInt1);
    Object[] arrayOfObject2 = new Object[4];
    arrayOfObject2[0] = Integer.valueOf(paramInt1);
    arrayOfObject2[1] = Long.valueOf(l1);
    arrayOfObject2[2] = Long.valueOf(l2);
    arrayOfObject2[3] = Long.valueOf(l3);
    aa.f("MicroMsg.ReportManager", "check report : logType = %d, now = %d, lastTimestamp = %d, cycle = %d", arrayOfObject2);
    if (l1 - l2 > l3)
    {
      Zn();
      this.dZQ.c(new n(paramInt1));
      be.uz().sr().set(paramInt2, Long.valueOf(l1));
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Long.valueOf(l1);
      arrayOfObject4[1] = Integer.valueOf(paramInt1);
      aa.e("MicroMsg.ReportManager", "ask for report ok, time = %d, logType = %d", arrayOfObject4);
      return;
    }
    Object[] arrayOfObject3 = new Object[2];
    arrayOfObject3[0] = Long.valueOf(l1);
    arrayOfObject3[1] = Integer.valueOf(paramInt1);
    aa.f("MicroMsg.ReportManager", "ask for report fail, time = %d, logType = %d", arrayOfObject3);
  }

  public final void b(int paramInt, List paramList)
  {
    if (this.dZP == null)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.ReportManager", "getReportRuleHelper is null, ignore this report, kvStat logID=%d", arrayOfObject3);
      return;
    }
    if (!this.dZP.hu(1))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.ReportManager", "kvstat report is close, ignore this report, kvStat logID=%d", arrayOfObject2);
      return;
    }
    if ((paramList == null) || (paramList.isEmpty()))
    {
      aa.w("MicroMsg.ReportManager", "kvStat vals is null");
      return;
    }
    f localf = new f();
    localf.YW();
    localf.fNl = paramInt;
    StringBuilder localStringBuilder = new StringBuilder();
    int i = -1 + paramList.size();
    for (int j = 0; j < i; j++)
      localStringBuilder.append((String)paramList.get(j)).append(',');
    localStringBuilder.append((String)paramList.get(i));
    localf.fNk = localStringBuilder.toString();
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(0);
    arrayOfObject1[2] = Integer.valueOf(paramList.size());
    arrayOfObject1[3] = localf.fNk;
    aa.f("MicroMsg.ReportManager", "kvStat logID=%d, frep = %d, vals.size=%d, val = %s", arrayOfObject1);
    localf.fDQ = ((int)cj.FC());
    localf.fDR = localf.fDQ;
    j.a(localf, false);
  }

  public final void d(int paramInt, Object[] paramArrayOfObject)
  {
    if (this.dZP == null)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.ReportManager", "getReportRuleHelper is null, ignore this report, kvStat logID=%d", arrayOfObject3);
      return;
    }
    if (!this.dZP.hu(1))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.ReportManager", "kvstat report is close, ignore this report, kvStat logID=%d", arrayOfObject2);
      return;
    }
    if ((paramArrayOfObject == null) || (paramArrayOfObject.length <= 0))
    {
      aa.w("MicroMsg.ReportManager", "kvStat vals is null");
      return;
    }
    f localf = new f();
    localf.YW();
    localf.fNl = paramInt;
    StringBuilder localStringBuilder = new StringBuilder();
    int i = -1 + paramArrayOfObject.length;
    for (int j = 0; j < i; j++)
      localStringBuilder.append(String.valueOf(paramArrayOfObject[j])).append(',');
    localStringBuilder.append(String.valueOf(paramArrayOfObject[i]));
    localf.fNk = localStringBuilder.toString();
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(0);
    arrayOfObject1[2] = Integer.valueOf(paramArrayOfObject.length);
    arrayOfObject1[3] = localf.fNk;
    aa.f("MicroMsg.ReportManager", "kvStat logID=%d, frep = %d, vals.size=%d, val = %s", arrayOfObject1);
    localf.fDQ = ((int)cj.FC());
    localf.fDR = localf.fDQ;
    j.a(localf, false);
  }

  public final void hB(int paramInt)
  {
    i.hz(paramInt);
    if (this.dZP == null);
    while (!this.dZP.hu(0))
      return;
    long l = paramInt;
    this.dZO.put(paramInt, false);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Long.valueOf(l);
    aa.f("MicroMsg.ReportManager", "stop operation timer eventID = %d, beginMark=%d", arrayOfObject);
    d locald = new d();
    locald.fDL = paramInt;
    locald.az(l);
    locald.aZ(false);
    locald.ba(true);
    j.a(locald, false);
  }

  public final void hx(int paramInt)
  {
    i.hx(paramInt);
    if (this.dZP == null);
    while (!this.dZP.hu(0))
      return;
    d(paramInt, paramInt);
  }

  public final void hy(int paramInt)
  {
    i.hy(paramInt);
    if (this.dZP == null);
    while (!this.dZP.hu(0))
      return;
    long l = paramInt;
    if (!this.dZO.get(paramInt))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.ReportManager", "operationEnd eventID = %d, not begin yet", arrayOfObject2);
      return;
    }
    this.dZO.put(paramInt, false);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Long.valueOf(l);
    aa.f("MicroMsg.ReportManager", "operationEnd eventID = %d, beginMark=%d", arrayOfObject1);
    d locald = new d();
    locald.fDL = paramInt;
    locald.fDQ = ((int)cj.FC());
    locald.fDR = locald.fDQ;
    locald.aA(cj.FD());
    locald.aB(locald.YV());
    locald.az(l);
    locald.aZ(false);
    locald.ba(false);
    j.a(locald, false);
  }

  public final void init()
  {
    aa.v("MicroMsg.ReportManager", "init begin");
    this.dZP = new c();
    Zm();
    aa.i("MicroMsg.ReportManager", "doAddSceneEndListener");
    be.uA().a(308, this.dZP);
    be.uA().a(311, this.dZP);
    be.uA().a(309, this.dZP);
    be.uA().a(310, this.dZP);
    aa.v("MicroMsg.ReportManager", "init end");
  }

  public final void j(int paramInt, String paramString)
  {
    a(false, paramInt, paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.m
 * JD-Core Version:    0.6.2
 */