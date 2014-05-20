package oicq.wlogin_sdk.a;

import java.lang.reflect.Array;
import oicq.wlogin_sdk.b.aa;
import oicq.wlogin_sdk.b.ac;
import oicq.wlogin_sdk.b.ad;
import oicq.wlogin_sdk.b.ae;
import oicq.wlogin_sdk.b.af;
import oicq.wlogin_sdk.b.ag;
import oicq.wlogin_sdk.b.ai;
import oicq.wlogin_sdk.b.al;
import oicq.wlogin_sdk.b.an;
import oicq.wlogin_sdk.b.aq;
import oicq.wlogin_sdk.b.d;
import oicq.wlogin_sdk.b.h;
import oicq.wlogin_sdk.b.j;
import oicq.wlogin_sdk.b.l;
import oicq.wlogin_sdk.b.m;
import oicq.wlogin_sdk.b.n;
import oicq.wlogin_sdk.b.o;
import oicq.wlogin_sdk.b.p;
import oicq.wlogin_sdk.b.q;
import oicq.wlogin_sdk.b.s;
import oicq.wlogin_sdk.b.t;
import oicq.wlogin_sdk.b.u;
import oicq.wlogin_sdk.b.v;
import oicq.wlogin_sdk.b.w;
import oicq.wlogin_sdk.b.x;
import oicq.wlogin_sdk.b.y;
import oicq.wlogin_sdk.c.b;

public class g
{
  protected static int hxy = 0;
  protected int hxA = 0;
  protected int hxB = 0;
  protected int hxC = 0;
  protected int hxD = 0;
  byte hxE;
  protected k hxF;
  int hxq = 4096;
  int hxr = 0;
  int hxs = 27;
  int hxt = 0;
  public int hxu = 15;
  protected int hxv = 0;
  protected byte[] hxw = new byte[this.hxq];
  protected int hxx = 8001;
  protected int hxz = 0;

  private int a(s params)
  {
    long l1 = 4294967295L;
    o localo = new o();
    p localp = new p();
    l locall = new l();
    q localq = new q();
    oicq.wlogin_sdk.b.e locale = new oicq.wlogin_sdk.b.e();
    t localt = new t();
    d locald = new d();
    m localm = new m();
    u localu = new u();
    v localv = new v();
    x localx = new x();
    y localy = new y();
    j localj = new j();
    h localh = new h();
    n localn = new n();
    aa localaa = new aa();
    w localw = new w();
    ag localag = new ag();
    ac localac = new ac();
    ai localai = new ai();
    aq localaq = new aq();
    an localan = new an();
    ad localad = new ad();
    ae localae = new ae();
    af localaf = new af();
    byte[] arrayOfByte1 = params.aQw();
    int i = arrayOfByte1.length;
    localo.g(arrayOfByte1, 2, i);
    localp.g(arrayOfByte1, 2, i);
    locall.g(arrayOfByte1, 2, i);
    localq.g(arrayOfByte1, 2, i);
    int j = localt.g(arrayOfByte1, 2, i);
    if (j < 0)
      return j;
    int k = locale.g(arrayOfByte1, 2, i);
    byte[] arrayOfByte2 = null;
    if (k >= 0)
      arrayOfByte2 = locale.aQw();
    if (localj.g(arrayOfByte1, 2, i) >= 0)
      oicq.wlogin_sdk.c.f.a(this.hxF.hxo, localj.aQw());
    int m = locald.g(arrayOfByte1, 2, i);
    byte[] arrayOfByte3 = null;
    if (m >= 0)
      arrayOfByte3 = locald.aQw();
    int n = localm.g(arrayOfByte1, 2, i);
    byte[] arrayOfByte4 = null;
    if (n >= 0)
      arrayOfByte4 = localm.aQw();
    int i1 = localu.g(arrayOfByte1, 2, i);
    byte[] arrayOfByte5 = null;
    if (i1 >= 0)
      arrayOfByte5 = localu.aQw();
    int i2 = localx.g(arrayOfByte1, 2, i);
    byte[] arrayOfByte6 = null;
    if (i2 >= 0)
      arrayOfByte6 = localx.aQw();
    int i3 = localy.g(arrayOfByte1, 2, i);
    byte[] arrayOfByte7 = null;
    if (i3 >= 0)
      arrayOfByte7 = localy.aQw();
    int i4 = localaa.g(arrayOfByte1, 2, i);
    byte[] arrayOfByte8 = null;
    byte[] arrayOfByte9 = null;
    if (i4 >= 0)
    {
      arrayOfByte8 = localaa.aQL();
      arrayOfByte9 = localaa.aQM();
    }
    int[] arrayOfInt = { 8, 0 };
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, arrayOfInt);
    if (localad.g(arrayOfByte1, 2, i) >= 0)
      arrayOfByte[0] = localad.aQw();
    if (localae.g(arrayOfByte1, 2, i) >= 0)
      arrayOfByte[1] = localae.aQw();
    if (localaf.g(arrayOfByte1, 2, i) >= 0)
      arrayOfByte[2] = localaf.aQw();
    int i5 = localn.g(arrayOfByte1, 2, i);
    if ((localh.g(arrayOfByte1, 2, i) >= 0) && (i5 >= 0))
    {
      this.hxF.hxH = localn.aQw();
      this.hxF.hyf = cA(localh.aQw());
      arrayOfByte[3] = ((byte[])this.hxF.hyf.clone());
    }
    if (localac.g(arrayOfByte1, 2, i) >= 0)
      arrayOfByte[4] = localac.aQN();
    if (localai.g(arrayOfByte1, 2, i) >= 0)
      arrayOfByte[5] = localai.aQw();
    if (localaq.g(arrayOfByte1, 2, i) >= 0)
      arrayOfByte[6] = localaq.aQw();
    if (localan.g(arrayOfByte1, 2, i) >= 0)
      arrayOfByte[7] = localan.aQw();
    long l5;
    if (localw.g(arrayOfByte1, 2, i) >= 0)
      if (this.hxF.hxO == -1L)
      {
        l5 = localw.aQJ();
        l1 = 0xFFFFFFFF & localw.aQK();
      }
    for (long l2 = l5; ; l2 = 3600L)
    {
      if ((localag.g(arrayOfByte1, 2, i) >= 0) && (localag.aQO() != 0));
      for (long l3 = localag.aQO(); ; l3 = 2160000L)
      {
        if (l3 < l2);
        for (long l4 = l2; ; l4 = l3)
        {
          this.hxF.a(this.hxF.hwZ, this.hxF.hxM, l1, k.aQu(), l2 + k.aQu(), l4 + k.aQu(), localt.aQC(), localt.aQD(), localt.aQE(), localt.aQF(), locall.aQw(), localo.aQw(), localq.aQw(), localp.aQw(), arrayOfByte2, arrayOfByte4, arrayOfByte3, arrayOfByte5, arrayOfByte6, arrayOfByte7, arrayOfByte8, arrayOfByte9, arrayOfByte);
          int i7;
          for (int i6 = 2; ; i6 = i7)
          {
            i7 = localv.g(arrayOfByte1, i6, i);
            if (i7 < 0)
            {
              return 0;
              l5 = this.hxF.hxO;
              break;
            }
            this.hxF.a(this.hxF.hwZ, localv.aQG(), k.aQu(), l2 + k.aQu(), localv.aQI(), localv.aQH());
          }
        }
      }
    }
  }

  public final void a(int paramInt1, int paramInt2, long paramLong, int paramInt3, int paramInt4, int paramInt5, int paramInt6, byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = 1 + hxy;
    hxy = j;
    this.hxr = 0;
    oicq.wlogin_sdk.c.f.h(this.hxw, this.hxr, 2);
    this.hxr = (1 + this.hxr);
    oicq.wlogin_sdk.c.f.i(this.hxw, this.hxr, i + (2 + this.hxs));
    this.hxr = (2 + this.hxr);
    oicq.wlogin_sdk.c.f.i(this.hxw, this.hxr, paramInt1);
    this.hxr = (2 + this.hxr);
    oicq.wlogin_sdk.c.f.i(this.hxw, this.hxr, paramInt2);
    this.hxr = (2 + this.hxr);
    oicq.wlogin_sdk.c.f.i(this.hxw, this.hxr, j);
    this.hxr = (2 + this.hxr);
    oicq.wlogin_sdk.c.f.j(this.hxw, this.hxr, (int)paramLong);
    this.hxr = (4 + this.hxr);
    oicq.wlogin_sdk.c.f.h(this.hxw, this.hxr, 3);
    this.hxr = (1 + this.hxr);
    oicq.wlogin_sdk.c.f.h(this.hxw, this.hxr, 0);
    this.hxr = (1 + this.hxr);
    oicq.wlogin_sdk.c.f.h(this.hxw, this.hxr, paramInt3);
    this.hxr = (1 + this.hxr);
    oicq.wlogin_sdk.c.f.j(this.hxw, this.hxr, paramInt4);
    this.hxr = (4 + this.hxr);
    oicq.wlogin_sdk.c.f.j(this.hxw, this.hxr, paramInt5);
    this.hxr = (4 + this.hxr);
    oicq.wlogin_sdk.c.f.j(this.hxw, this.hxr, paramInt6);
    this.hxr = (4 + this.hxr);
    if (1 + (i + this.hxr) > this.hxq)
    {
      this.hxq = (128 + (1 + (i + this.hxr)));
      byte[] arrayOfByte = new byte[this.hxq];
      System.arraycopy(this.hxw, 0, arrayOfByte, 0, this.hxr);
      this.hxw = arrayOfByte;
    }
    System.arraycopy(paramArrayOfByte, 0, this.hxw, this.hxr, i);
    this.hxr = (i + this.hxr);
    oicq.wlogin_sdk.c.f.h(this.hxw, this.hxr, 3);
    this.hxr = (1 + this.hxr);
  }

  public final byte[] aQs()
  {
    byte[] arrayOfByte = new byte[this.hxr];
    System.arraycopy(this.hxw, 0, arrayOfByte, 0, this.hxr);
    return arrayOfByte;
  }

  public final void aQt()
  {
    this.hxF.hye.aQS();
  }

  final byte[] c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte1 = new byte[4 + paramArrayOfByte.length];
    oicq.wlogin_sdk.c.f.i(arrayOfByte1, 0, paramInt1);
    oicq.wlogin_sdk.c.f.i(arrayOfByte1, 2, paramInt2);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 4, paramArrayOfByte.length);
    byte[] arrayOfByte2 = oicq.wlogin_sdk.c.e.a(arrayOfByte1, arrayOfByte1.length, this.hxF.hxJ);
    byte[] arrayOfByte3 = new byte[arrayOfByte2.length + this.hxF.hxJ.length];
    System.arraycopy(this.hxF.hxJ, 0, arrayOfByte3, 0, this.hxF.hxJ.length);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte3, this.hxF.hxJ.length, arrayOfByte2.length);
    return arrayOfByte3;
  }

  public final byte[] cA(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    byte[] arrayOfByte = new byte[paramArrayOfByte.length + this.hxF.hxH.length];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    System.arraycopy(this.hxF.hxH, 0, arrayOfByte, paramArrayOfByte.length, this.hxF.hxH.length);
    return arrayOfByte;
  }

  public final byte[] cB(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 16))
      return null;
    byte[] arrayOfByte1 = (byte[])paramArrayOfByte.clone();
    int i = -16 + arrayOfByte1.length;
    byte[] arrayOfByte2 = new byte[i];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
    this.hxF.hxH = new byte[16];
    System.arraycopy(arrayOfByte1, i, this.hxF.hxH, 0, 16);
    return arrayOfByte2;
  }

  public final void d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    al localal = new al();
    if (localal.g(paramArrayOfByte, paramInt1, paramInt2) >= 0)
    {
      this.hxF.hye.setTitle(new String(localal.aQP()));
      this.hxF.hye.setMessage(new String(localal.aQQ()));
      this.hxF.hye.ye(new String(localal.aQR()));
      return;
    }
    this.hxF.hye.aQS();
  }

  public int e(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    oicq.wlogin_sdk.b.f localf = new oicq.wlogin_sdk.b.f();
    oicq.wlogin_sdk.b.g localg = new oicq.wlogin_sdk.b.g();
    s locals = new s();
    int i;
    if ((this.hxC == 2064) && (this.hxD == 9))
      i = 0;
    while (paramInt2 < 5)
    {
      return -1009;
      if ((this.hxC == 2064) && (this.hxD == 10))
        i = 1;
      else if ((this.hxC == 2064) && (this.hxD == 2))
        i = 2;
      else
        return -1012;
    }
    int j = p(paramArrayOfByte, paramInt1 + 2);
    aQt();
    int k = paramInt1 + 5;
    switch (j)
    {
    default:
      d(paramArrayOfByte, k, -1 + (this.hxr - k));
      return j;
    case 0:
      if (i == 1)
        if (this.hxF.hxI == null)
          return -1006;
      for (int n = locals.a(paramArrayOfByte, k, -1 + (this.hxr - k), this.hxF.hxI); n < 0; n = locals.a(paramArrayOfByte, k, -1 + (this.hxr - k), this.hxF.hxH))
      {
        oicq.wlogin_sdk.c.f.yh("119 can not decrypt, ret=" + n);
        return n;
      }
      int i1 = a(locals);
      if (i1 < 0)
      {
        oicq.wlogin_sdk.c.f.yh("parse 119 failed, ret=" + i1);
        return i1;
      }
      return 0;
    case 1:
      d(paramArrayOfByte, k, -1 + (this.hxr - k));
      return j;
    case 2:
    }
    int m = localf.g(paramArrayOfByte, k, -1 + (this.hxr - k));
    if (m >= 0)
    {
      this.hxF.hxK = localf;
      m = localg.g(paramArrayOfByte, k, -1 + (this.hxr - k));
      if (m >= 0)
      {
        this.hxF.hxL = localg;
        return j;
      }
    }
    return m;
  }

  public final int o(byte[] paramArrayOfByte, int paramInt)
  {
    int i = -1002;
    if (paramInt <= 2 + this.hxu)
      i = -1009;
    while (true)
    {
      return i;
      this.hxv = (-2 + (paramInt - this.hxu));
      if (paramInt > this.hxq)
      {
        this.hxq = (paramInt + 128);
        this.hxw = new byte[this.hxq];
      }
      this.hxr = paramInt;
      System.arraycopy(paramArrayOfByte, 0, this.hxw, 0, paramInt);
      byte[] arrayOfByte1 = this.hxw;
      int j = 1 + this.hxu;
      byte[] arrayOfByte2 = oicq.wlogin_sdk.c.e.decrypt(arrayOfByte1, j, this.hxv, this.hxF.hxJ);
      if (arrayOfByte2 == null);
      for (int k = i; k >= 0; k = 0)
      {
        return e(this.hxw, 1 + this.hxu, this.hxv);
        this.hxv = arrayOfByte2.length;
        if (2 + (arrayOfByte2.length + this.hxu) > this.hxq)
        {
          this.hxq = (2 + (arrayOfByte2.length + this.hxu));
          byte[] arrayOfByte3 = new byte[this.hxq];
          System.arraycopy(this.hxw, 0, arrayOfByte3, 0, this.hxr);
          this.hxw = arrayOfByte3;
        }
        this.hxr = 0;
        System.arraycopy(arrayOfByte2, 0, this.hxw, j, arrayOfByte2.length);
        this.hxr += 2 + this.hxu + arrayOfByte2.length;
      }
    }
  }

  public final int p(byte[] paramArrayOfByte, int paramInt)
  {
    this.hxE = paramArrayOfByte[paramInt];
    return 0xFF & paramArrayOfByte[paramInt];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.g
 * JD-Core Version:    0.6.2
 */