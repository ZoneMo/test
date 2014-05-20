package com.tencent.mm.n;

import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.protocal.a.bq;
import com.tencent.mm.protocal.a.ep;
import com.tencent.mm.protocal.a.ie;
import com.tencent.mm.protocal.a.kk;
import com.tencent.mm.protocal.a.ko;
import com.tencent.mm.protocal.a.lc;
import com.tencent.mm.protocal.a.mg;
import com.tencent.mm.protocal.a.ot;
import com.tencent.mm.protocal.a.pb;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.ad;
import com.tencent.mm.protocal.ag;
import com.tencent.mm.protocal.aj;
import com.tencent.mm.protocal.am;
import com.tencent.mm.protocal.ax;
import com.tencent.mm.protocal.bi;
import com.tencent.mm.protocal.d;
import com.tencent.mm.protocal.k;
import com.tencent.mm.protocal.n;
import com.tencent.mm.protocal.p;
import com.tencent.mm.protocal.s;
import com.tencent.mm.sdk.platformtools.cj;

public final class aq extends d
{
  private p clR;
  private byte[] cmN;
  private int type;

  public aq(p paramp, int paramInt)
  {
    this.clR = paramp;
    this.type = paramInt;
  }

  public final boolean a(int paramInt1, String paramString, byte[] paramArrayOfByte, int paramInt2)
  {
    PByteArray localPByteArray = new PByteArray();
    switch (paramInt1)
    {
    default:
      if (!(this.clR instanceof n))
      {
        com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.RemoteReq", "all protocal should implemented with protobuf");
        return false;
      }
      break;
    case 268369922:
      try
      {
        this.cmN = ((n)this.clR).wz();
        this.clR.bG(this.cmN.length);
        return true;
      }
      catch (Exception localException1)
      {
        return false;
      }
    }
    while (true)
    {
      try
      {
        n localn = (n)this.clR;
        byte[] arrayOfByte = localn.wz();
        if (arrayOfByte == null)
          return false;
        if (localn.awI())
        {
          this.cmN = arrayOfByte;
          this.clR.bG(this.cmN.length);
          return true;
        }
        bi localbi = this.clR.awJ();
        if (!localbi.awY())
        {
          str = "";
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(paramInt1);
          arrayOfObject1[1] = Integer.valueOf(localbi.axb());
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.RemoteReq", "dkcert type:%d rsaInfo ver:%d", arrayOfObject1);
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = str;
          arrayOfObject2[1] = Integer.valueOf(paramInt1);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.RemoteReq", "dkrsa use session :%s  type:%d", arrayOfObject2);
          if (MMProtocalJni.pack(arrayOfByte, localPByteArray, str, paramArrayOfByte, this.clR.xd(), this.clR.sd(), localn.wy(), localbi.axb(), localbi.awZ().getBytes(), localbi.axa().getBytes()))
          {
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Integer.valueOf(localPByteArray.value.length);
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.RemoteReq", "reqToBuf using protobuf ok, len:%d", arrayOfObject3);
            this.cmN = localPByteArray.value;
          }
          this.clR.bG(this.cmN.length);
          return true;
        }
        if (cj.hX(paramString))
        {
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = Integer.valueOf(paramInt1);
          com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.RemoteReq", "dksession jType %d session should not null", arrayOfObject4);
          return false;
        }
      }
      catch (Exception localException2)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.RemoteReq", "protobuf build exception, check now! :" + localException2.getMessage());
        return false;
      }
      String str = paramString;
    }
  }

  public final void bQ(int paramInt)
  {
    this.clR.bQ(paramInt);
  }

  public final void cQ(int paramInt)
  {
    this.clR.cQ(paramInt);
  }

  public final void cR(int paramInt)
  {
    this.clR.cR(paramInt);
  }

  public final void ev(String paramString)
  {
    this.clR.ev(paramString);
  }

  public final void ew(String paramString)
  {
    this.clR.ew(paramString);
  }

  public final void ex(String paramString)
  {
    this.clR.ex(paramString);
  }

  public final int getClientVersion()
  {
    return this.clR.getClientVersion();
  }

  public final int getCmdId()
  {
    return this.clR.getCmdId();
  }

  public final String getDeviceType()
  {
    return this.clR.getDeviceType();
  }

  public final String getPassword()
  {
    switch (this.type)
    {
    default:
      return "";
    case 380:
      return ((k)this.clR).fxL.fML.getString();
    case 126:
    }
    return ((ax)this.clR).fyv.fBL;
  }

  public final String getUserName()
  {
    switch (this.type)
    {
    default:
      return "";
    case 380:
      return ((k)this.clR).fxL.fEI.getString();
    case 126:
    }
    return ((ax)this.clR).fyv.eBo;
  }

  public final int sd()
  {
    return this.clR.sd();
  }

  public final String uo()
  {
    return this.clR.uo();
  }

  public final byte[] xc()
  {
    return this.cmN;
  }

  public final String xd()
  {
    return this.clR.xd();
  }

  public final int xe()
  {
    return this.clR.xe();
  }

  public final byte[] xf()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.type);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.RemoteReq", "dkrsa getpass type:%d", arrayOfObject1);
    switch (this.type)
    {
    default:
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.type);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.RemoteReq", "dkrsa getpass usesession type:%d", arrayOfObject2);
      return uo().getBytes();
    case 381:
      return ((ad)this.clR).fyj.fBE.ayh().toByteArray();
    case 380:
      return ((k)this.clR).fxL.fBE.ayh().toByteArray();
    case 126:
      return ((ax)this.clR).fyv.fBE.ayh().toByteArray();
    case 145:
      return ((s)this.clR).fxX.fBE.ayh().toByteArray();
    case 107:
      return ((am)this.clR).fyp.fBE.ayh().toByteArray();
    case 429:
      return ((aj)this.clR).fyn.fBE.ayh().toByteArray();
    case 443:
      return ((com.tencent.mm.plugin.d.b.b)this.clR).dZq.fBE.ayh().toByteArray();
    case 481:
      return ((com.tencent.mm.protocal.aa)this.clR).fyh.fBE.ayh().toByteArray();
    case 572:
    }
    return ((ag)this.clR).fyl.fBE.ayh().toByteArray();
  }

  public final String xg()
  {
    switch (this.type)
    {
    default:
      return "";
    case 380:
    }
    return ((k)this.clR).fxL.fBY;
  }

  public final boolean xh()
  {
    return this.clR.xh();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.aq
 * JD-Core Version:    0.6.2
 */