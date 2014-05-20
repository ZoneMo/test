package com.tencent.mm.modelstat;

import com.tencent.mm.network.bm;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ci;

final class k
{
  static
  {
    ci.reset();
  }

  public static void C(int paramInt1, int paramInt2)
  {
    if (bm.ac(al.getContext()))
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(paramInt1);
      arrayOfObject2[1] = Integer.valueOf(paramInt2);
      arrayOfObject2[2] = Integer.valueOf(0);
      aa.d("MicroMsg.NetStatStorageLogic", "dknetflow wifi recv:%d send:%d type:%d", arrayOfObject2);
      j(paramInt1, paramInt2, 0);
      return;
    }
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    arrayOfObject1[2] = Integer.valueOf(0);
    aa.d("MicroMsg.NetStatStorageLogic", "dknetflow mobile recv:%d send:%d type:%d", arrayOfObject1);
    k(paramInt1, paramInt2, 0);
  }

  private static void a(f paramf, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 522:
      paramf.ed(paramf.CU() + paramf.CV());
      paramf.cL(0x8000 | paramf.vU());
      return;
    case 37:
    case 38:
      paramf.dV(paramf.CQ() + paramf.CR());
      paramf.cL(0x8 | paramf.vU());
      return;
    case 110:
      paramf.ee(paramf.CU() + paramf.CV());
      paramf.cL(0x20000 | paramf.vU());
      return;
    case 109:
    case 123:
      paramf.dW(paramf.CQ() + paramf.CR());
      paramf.cL(0x20 | paramf.vU());
      return;
    case 127:
      paramf.ef(paramf.CU() + paramf.CV());
      paramf.cL(0x80000 | paramf.vU());
      return;
    case 128:
      paramf.dX(paramf.CQ() + paramf.CR());
      paramf.cL(0x80 | paramf.vU());
      return;
    case 149:
      paramf.eg(paramf.CU() + paramf.CV());
      paramf.cL(0x200000 | paramf.vU());
      return;
    case 150:
    }
    paramf.dY(paramf.CQ() + paramf.CR());
    paramf.cL(0x200 | paramf.vU());
  }

  private static void d(f paramf)
  {
    ci.update();
    paramf.eb((int)ci.azO());
    paramf.ej((int)ci.azN());
    paramf.ec((int)ci.azM());
    paramf.ek((int)ci.azL());
    paramf.cL(0x1000000 | (0x1000 | (0x2000000 | (0x2000 | paramf.vU()))));
  }

  public static void j(int paramInt1, int paramInt2, int paramInt3)
  {
    f localf = new f();
    localf.ea(paramInt1);
    localf.ei(paramInt2);
    localf.cL(8390656);
    d(localf);
    a(localf, paramInt3);
    r.Dg().c(localf);
  }

  public static void k(int paramInt1, int paramInt2, int paramInt3)
  {
    f localf = new f();
    localf.dZ(paramInt1);
    localf.eh(paramInt2);
    localf.cL(4195328);
    d(localf);
    a(localf, paramInt3);
    r.Dg().c(localf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.k
 * JD-Core Version:    0.6.2
 */