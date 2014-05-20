package com.tencent.mm.protocal;

import com.tencent.mm.am.b;
import com.tencent.mm.protocal.a.au;
import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.rw;

public final class m
{
  public static void a(q paramq, av paramav)
  {
    paramq.ez(paramav.fAZ.getString());
  }

  public static au b(p paramp)
  {
    au localau = new au();
    localau.fAm = paramp.getClientVersion();
    localau.fAl = b.au(paramp.xd().getBytes()).lf(16);
    localau.fAn = b.au(paramp.getDeviceType().getBytes()).lf(132);
    localau.fyJ = paramp.xe();
    localau.fAW = b.au(paramp.uo().getBytes()).lf(36);
    localau.fAX = paramp.sd();
    return localau;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.m
 * JD-Core Version:    0.6.2
 */