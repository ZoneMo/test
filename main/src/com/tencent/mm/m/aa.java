package com.tencent.mm.m;

import com.tencent.mm.a.c;
import com.tencent.mm.n.a;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.iy;
import com.tencent.mm.protocal.a.iz;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.q;
import com.tencent.mm.storage.i;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

final class aa extends x
  implements ab
{
  private com.tencent.mm.n.m cjh;
  private String ckO;
  private int ckR;
  private String ckT;
  private int clj;
  private FileOutputStream clk = null;
  private String cll;
  private String username;

  public aa(String paramString)
  {
    this.username = paramString;
    if (i.tC(paramString))
      this.username = i.tE(paramString);
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneGetHDHeadImg", "init Headimage in_username:" + paramString + " out_username" + this.username);
    this.ckR = 480;
    this.clj = 480;
    this.ckT = "jpg";
  }

  public static void A(String paramString1, String paramString2)
  {
    af.vJ().y(paramString1, paramString2);
  }

  private int r(byte[] paramArrayOfByte)
  {
    try
    {
      if (this.clk == null)
        this.clk = new FileOutputStream(new File(this.cll));
      this.clk.write(paramArrayOfByte);
      return paramArrayOfByte.length;
    }
    catch (IOException localIOException)
    {
    }
    return -1;
  }

  private void wf()
  {
    try
    {
      if (this.clk != null)
      {
        this.clk.flush();
        this.clk.close();
        this.clk = null;
      }
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    if ((this.username == null) || (this.username.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetHDHeadImg", "username is null");
      return -1;
    }
    if (this.username.endsWith("@qqim"))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetHDHeadImg", "never try get qq user hd.");
      return -1;
    }
    w localw = af.wn();
    this.ckO = af.vJ().h(this.username, true);
    if (c.as(this.ckO))
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneGetHDHeadImg", "The HDAvatar of " + this.username + " is already exists");
      return 0;
    }
    this.cll = (this.ckO + ".tmp");
    v localv1 = localw.en(this.username);
    v localv2;
    a locala;
    iy localiy;
    if (localv1 == null)
    {
      c.deleteFile(this.cll);
      v localv3 = new v();
      localv3.setUsername(this.username);
      localv3.em(this.ckT);
      localv3.cH(this.ckR);
      localv3.cI(this.clj);
      localw.a(localv3);
      localv2 = localv3;
      com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
      localb.a(new iy());
      localb.b(new iz());
      localb.es("/cgi-bin/micromsg-bin/gethdheadimg");
      localb.cN(158);
      localb.cO(47);
      localb.cP(1000000047);
      locala = localb.wx();
      localiy = (iy)locala.wr();
      if (i.tC(this.username))
        break label639;
      localiy.eBo = this.username;
      localiy.fLe = 1;
    }
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetHDHeadImg", "inUser:" + this.username + " outUser:" + localiy.eBo + " outType:" + localiy.fLe);
      localiy.fLb = this.ckR;
      localiy.fLc = this.clj;
      localiy.fLd = this.ckT;
      localiy.fAL = localv2.vR();
      localiy.fEd = localv2.vS();
      return a(paramr, locala, this);
      String str = this.cll;
      int i = 0;
      if (localv1 != null)
      {
        i = 0;
        if (str != null)
        {
          int j = str.length();
          i = 0;
          if (j != 0)
            break label536;
        }
      }
      while (true)
      {
        if (i == 0)
        {
          c.deleteFile(this.cll);
          localv1.reset();
          localv1.setUsername(this.username);
          localv1.em(this.ckT);
          localv1.cH(this.ckR);
          localv1.cI(this.clj);
          localw.a(this.username, localv1);
        }
        localv2 = localv1;
        break;
        label536: boolean bool1 = localv1.vQ().equals(this.ckT);
        i = 0;
        if (bool1)
        {
          int k = localv1.vO();
          int m = this.ckR;
          i = 0;
          if (k == m)
          {
            int n = localv1.vP();
            int i1 = this.clj;
            i = 0;
            if (n == i1)
            {
              boolean bool2 = new File(str).length() < localv1.vS();
              i = 0;
              if (!bool2)
                i = 1;
            }
          }
        }
      }
      label639: if (this.username.equals(com.tencent.mm.model.v.th() + "@bottle"))
      {
        localiy.eBo = com.tencent.mm.model.v.th();
        localiy.fLe = 2;
      }
      else
      {
        localiy.eBo = this.username;
        localiy.fLe = 2;
      }
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    if ((this.username == null) || (this.username.length() == 0))
      return com.tencent.mm.n.aa.cmi;
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    iz localiz = (iz)((a)paramaj).ws();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetHDHeadImg", "errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 4) && (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetHDHeadImg", "errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      wf();
      return;
    }
    if ((paramInt2 == 4) || (paramInt2 == 5))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetHDHeadImg", "ErrType:" + paramInt2);
      wf();
      return;
    }
    int i = paramaj.wv().xm();
    if ((i == -4) || (i == -54) || (i == -55))
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetHDHeadImg", "retcode == " + i);
    for (int j = 1; j != 0; j = 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetHDHeadImg", "handleCertainError");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      wf();
      return;
    }
    int k = r(localiz.fAJ.ayh().getBytes());
    if (k < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetHDHeadImg", "appendBuf fail");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      wf();
      return;
    }
    w localw = af.wn();
    v localv = localw.en(this.username);
    localv.cK(k + localiz.fEd);
    localv.cJ(localiz.fAL);
    localw.a(this.username, localv);
    if (!localv.vN())
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetHDHeadImg", "doScene again");
      a(wM(), this.cjh);
      return;
    }
    new File(this.cll).renameTo(new File(this.ckO));
    A(this.ckO, this.username);
    wf();
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  protected final void cancel()
  {
    super.cancel();
    wf();
  }

  public final int getType()
  {
    return 158;
  }

  protected final int we()
  {
    return 10;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.aa
 * JD-Core Version:    0.6.2
 */