package oicq.wlogin_sdk.a;

import oicq.wlogin_sdk.b.ab;
import oicq.wlogin_sdk.b.ah;
import oicq.wlogin_sdk.b.aj;
import oicq.wlogin_sdk.b.ak;
import oicq.wlogin_sdk.b.am;
import oicq.wlogin_sdk.b.ao;
import oicq.wlogin_sdk.b.b;
import oicq.wlogin_sdk.b.c;
import oicq.wlogin_sdk.b.h;
import oicq.wlogin_sdk.b.i;
import oicq.wlogin_sdk.b.j;
import oicq.wlogin_sdk.b.r;
import oicq.wlogin_sdk.b.z;

public final class l extends g
{
  public l(k paramk)
  {
    this.hxC = 2064;
    this.hxD = 9;
    this.hxF = paramk;
  }

  public final byte[] a(long paramLong, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, byte[] paramArrayOfByte3)
  {
    int i = this.hxF.hxP;
    this.hxF.hwZ = paramLong;
    byte[] arrayOfByte1 = cB(paramArrayOfByte2);
    if (arrayOfByte1 == null)
      return null;
    byte[] arrayOfByte2 = this.hxF.hxQ;
    byte[] arrayOfByte3 = this.hxF.hxK.aQw();
    byte[] arrayOfByte4 = this.hxF.hxU;
    ao localao = new ao();
    b localb = new b();
    h localh = new h();
    r localr = new r();
    c localc = new c();
    i locali = new i();
    j localj = new j();
    oicq.wlogin_sdk.b.k localk = new oicq.wlogin_sdk.b.k();
    oicq.wlogin_sdk.b.f localf = new oicq.wlogin_sdk.b.f();
    z localz = new z();
    ab localab = new ab();
    ah localah = new ah();
    aj localaj = new aj();
    ak localak = new ak();
    am localam = new am();
    byte[] arrayOfByte5 = localao.l(i, paramLong);
    byte[] arrayOfByte6 = localb.d(paramLong, paramArrayOfByte1);
    this.hxF.hyf = cA(arrayOfByte1);
    localh.q(arrayOfByte1, arrayOfByte1.length);
    byte[] arrayOfByte7 = localh.aQs();
    oicq.wlogin_sdk.c.f.bm("req2 a1:", oicq.wlogin_sdk.c.f.cM(arrayOfByte7));
    byte[] arrayOfByte8 = localc.oX(i);
    byte[] arrayOfByte9 = locali.aQB();
    byte[] arrayOfByte10 = localr.bz(paramInt1, paramInt2);
    byte[] arrayOfByte11 = localak.cH(this.hxF.hxQ);
    byte[] arrayOfByte12 = new byte[0];
    byte[] arrayOfByte13 = new byte[0];
    byte[] arrayOfByte14 = new byte[0];
    byte[] arrayOfByte15 = new byte[0];
    byte[] arrayOfByte16;
    if (paramArrayOfByte3.length > 0)
      arrayOfByte16 = localj.cE(paramArrayOfByte3);
    for (int j = 8; ; j = 7)
    {
      if (arrayOfByte2.length > 0);
      for (byte[] arrayOfByte17 = localk.cF(arrayOfByte2); ; arrayOfByte17 = arrayOfByte13)
      {
        byte[] arrayOfByte18 = localz.a(oicq.wlogin_sdk.c.f.aQT(), oicq.wlogin_sdk.c.f.aQU(), this.hxF.hxT, this.hxF.hxS, new byte[0], this.hxF.hxV);
        byte[] arrayOfByte19 = localab.a(this.hxF.hya, this.hxF.hyb, this.hxF.hyc, this.hxF.hxZ, this.hxF.hxQ);
        byte[] arrayOfByte20 = localam.e(this.hxF.hxX, this.hxF.hxY);
        byte[] arrayOfByte21 = this.hxF.hxH;
        byte[] arrayOfByte22 = localaj.a(arrayOfByte17, arrayOfByte18, arrayOfByte19, arrayOfByte20, arrayOfByte21);
        int k = j + 1;
        byte[] arrayOfByte23 = localah.cG(arrayOfByte4);
        int m = k + 1;
        byte[] arrayOfByte24;
        if (arrayOfByte3.length > 0)
        {
          arrayOfByte24 = localf.cD(arrayOfByte3);
          m++;
        }
        while (true)
        {
          byte[] arrayOfByte25 = new byte[arrayOfByte5.length + arrayOfByte6.length + arrayOfByte7.length + arrayOfByte10.length + arrayOfByte8.length + arrayOfByte9.length + arrayOfByte16.length + arrayOfByte22.length + arrayOfByte24.length + arrayOfByte23.length + arrayOfByte15.length + arrayOfByte11.length];
          System.arraycopy(arrayOfByte5, 0, arrayOfByte25, 0, arrayOfByte5.length);
          int n = 0 + arrayOfByte5.length;
          System.arraycopy(arrayOfByte6, 0, arrayOfByte25, n, arrayOfByte6.length);
          int i1 = n + arrayOfByte6.length;
          System.arraycopy(arrayOfByte7, 0, arrayOfByte25, i1, arrayOfByte7.length);
          int i2 = i1 + arrayOfByte7.length;
          System.arraycopy(arrayOfByte10, 0, arrayOfByte25, i2, arrayOfByte10.length);
          int i3 = i2 + arrayOfByte10.length;
          System.arraycopy(arrayOfByte8, 0, arrayOfByte25, i3, arrayOfByte8.length);
          int i4 = i3 + arrayOfByte8.length;
          System.arraycopy(arrayOfByte9, 0, arrayOfByte25, i4, arrayOfByte9.length);
          int i5 = i4 + arrayOfByte9.length;
          System.arraycopy(arrayOfByte16, 0, arrayOfByte25, i5, arrayOfByte16.length);
          int i6 = i5 + arrayOfByte16.length;
          System.arraycopy(arrayOfByte22, 0, arrayOfByte25, i6, arrayOfByte22.length);
          int i7 = i6 + arrayOfByte22.length;
          System.arraycopy(arrayOfByte23, 0, arrayOfByte25, i7, arrayOfByte23.length);
          int i8 = i7 + arrayOfByte23.length;
          System.arraycopy(arrayOfByte15, 0, arrayOfByte25, i8, arrayOfByte15.length);
          int i9 = i8 + arrayOfByte15.length;
          System.arraycopy(arrayOfByte24, 0, arrayOfByte25, i9, arrayOfByte24.length);
          System.arraycopy(arrayOfByte11, 0, arrayOfByte25, i9 + arrayOfByte24.length, arrayOfByte11.length);
          byte[] arrayOfByte26 = c(arrayOfByte25, this.hxD, m);
          int i10 = this.hxx;
          int i11 = this.hxC;
          a(i10, i11, paramLong, this.hxz, this.hxA, i, this.hxB, arrayOfByte26);
          return aQs();
          arrayOfByte24 = arrayOfByte14;
        }
      }
      arrayOfByte16 = arrayOfByte12;
    }
  }

  public final byte[] a(long paramLong, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, int paramInt1, int paramInt2, byte[] paramArrayOfByte4)
  {
    int i = this.hxF.hxP;
    this.hxF.hwZ = paramLong;
    oicq.wlogin_sdk.c.f.bm("IMEI", oicq.wlogin_sdk.c.f.cM(this.hxF.hxQ));
    byte[] arrayOfByte1 = this.hxF.hxH;
    byte[] arrayOfByte2 = this.hxF.hxQ;
    byte[] arrayOfByte3 = this.hxF.hxK.aQw();
    byte[] arrayOfByte4 = this.hxF.hxU;
    ao localao = new ao();
    b localb = new b();
    h localh = new h();
    r localr = new r();
    c localc = new c();
    i locali = new i();
    j localj = new j();
    oicq.wlogin_sdk.b.k localk = new oicq.wlogin_sdk.b.k();
    oicq.wlogin_sdk.b.f localf = new oicq.wlogin_sdk.b.f();
    z localz = new z();
    ab localab = new ab();
    ah localah = new ah();
    aj localaj = new aj();
    ak localak = new ak();
    am localam = new am();
    byte[] arrayOfByte5 = localao.l(i, paramLong);
    byte[] arrayOfByte6 = localb.d(paramLong, paramArrayOfByte1);
    byte[] arrayOfByte7 = localh.a(i, paramLong, paramArrayOfByte2, paramArrayOfByte1, paramArrayOfByte3, arrayOfByte1, this.hxF.hyb, this.hxF.hxQ);
    this.hxF.hyf = cA(localh.aQw());
    byte[] arrayOfByte8 = localc.oX(i);
    byte[] arrayOfByte9 = locali.aQB();
    byte[] arrayOfByte10 = localr.bz(paramInt1, paramInt2);
    byte[] arrayOfByte11 = localak.cH(this.hxF.hxQ);
    int j = 7;
    byte[] arrayOfByte12 = new byte[0];
    byte[] arrayOfByte13 = new byte[0];
    byte[] arrayOfByte14 = new byte[0];
    byte[] arrayOfByte15 = new byte[0];
    byte[] arrayOfByte27;
    if (paramArrayOfByte4.length > 0)
    {
      arrayOfByte27 = localj.cE(paramArrayOfByte4);
      j = 8;
    }
    for (byte[] arrayOfByte16 = arrayOfByte27; ; arrayOfByte16 = arrayOfByte12)
    {
      if (arrayOfByte2.length > 0);
      for (byte[] arrayOfByte17 = localk.cF(arrayOfByte2); ; arrayOfByte17 = arrayOfByte13)
      {
        byte[] arrayOfByte18 = localz.a(oicq.wlogin_sdk.c.f.aQT(), oicq.wlogin_sdk.c.f.aQU(), this.hxF.hxT, this.hxF.hxS, new byte[0], this.hxF.hxV);
        byte[] arrayOfByte19 = localab.a(this.hxF.hya, this.hxF.hyb, this.hxF.hyc, this.hxF.hxZ, this.hxF.hxQ);
        byte[] arrayOfByte20 = localam.e(this.hxF.hxX, this.hxF.hxY);
        byte[] arrayOfByte21 = this.hxF.hxH;
        byte[] arrayOfByte22 = localaj.a(arrayOfByte17, arrayOfByte18, arrayOfByte19, arrayOfByte20, arrayOfByte21);
        int k = j + 1;
        byte[] arrayOfByte23 = localah.cG(arrayOfByte4);
        int m = k + 1;
        byte[] arrayOfByte24;
        if (arrayOfByte3.length > 0)
        {
          arrayOfByte24 = localf.cD(arrayOfByte3);
          m++;
        }
        while (true)
        {
          byte[] arrayOfByte25 = new byte[arrayOfByte5.length + arrayOfByte6.length + arrayOfByte7.length + arrayOfByte10.length + arrayOfByte8.length + arrayOfByte9.length + arrayOfByte16.length + arrayOfByte22.length + arrayOfByte24.length + arrayOfByte23.length + arrayOfByte15.length + arrayOfByte11.length];
          System.arraycopy(arrayOfByte5, 0, arrayOfByte25, 0, arrayOfByte5.length);
          int n = 0 + arrayOfByte5.length;
          System.arraycopy(arrayOfByte6, 0, arrayOfByte25, n, arrayOfByte6.length);
          int i1 = n + arrayOfByte6.length;
          System.arraycopy(arrayOfByte7, 0, arrayOfByte25, i1, arrayOfByte7.length);
          int i2 = i1 + arrayOfByte7.length;
          System.arraycopy(arrayOfByte10, 0, arrayOfByte25, i2, arrayOfByte10.length);
          int i3 = i2 + arrayOfByte10.length;
          System.arraycopy(arrayOfByte8, 0, arrayOfByte25, i3, arrayOfByte8.length);
          int i4 = i3 + arrayOfByte8.length;
          System.arraycopy(arrayOfByte9, 0, arrayOfByte25, i4, arrayOfByte9.length);
          int i5 = i4 + arrayOfByte9.length;
          System.arraycopy(arrayOfByte16, 0, arrayOfByte25, i5, arrayOfByte16.length);
          int i6 = i5 + arrayOfByte16.length;
          System.arraycopy(arrayOfByte22, 0, arrayOfByte25, i6, arrayOfByte22.length);
          int i7 = i6 + arrayOfByte22.length;
          System.arraycopy(arrayOfByte23, 0, arrayOfByte25, i7, arrayOfByte23.length);
          int i8 = i7 + arrayOfByte23.length;
          System.arraycopy(arrayOfByte15, 0, arrayOfByte25, i8, arrayOfByte15.length);
          int i9 = i8 + arrayOfByte15.length;
          System.arraycopy(arrayOfByte24, 0, arrayOfByte25, i9, arrayOfByte24.length);
          System.arraycopy(arrayOfByte11, 0, arrayOfByte25, i9 + arrayOfByte24.length, arrayOfByte11.length);
          byte[] arrayOfByte26 = c(arrayOfByte25, this.hxD, m);
          int i10 = this.hxx;
          int i11 = this.hxC;
          a(i10, i11, paramLong, this.hxz, this.hxA, i, this.hxB, arrayOfByte26);
          return aQs();
          arrayOfByte24 = arrayOfByte14;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.l
 * JD-Core Version:    0.6.2
 */