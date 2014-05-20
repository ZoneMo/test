package com.tencent.mm.n;

import com.tencent.mm.am.b;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.protocal.a.if;
import com.tencent.mm.protocal.a.ou;
import com.tencent.mm.protocal.a.pc;
import com.tencent.mm.protocal.a.qw;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.ae;
import com.tencent.mm.protocal.ay;
import com.tencent.mm.protocal.bi;
import com.tencent.mm.protocal.g;
import com.tencent.mm.protocal.l;
import com.tencent.mm.protocal.o;
import com.tencent.mm.protocal.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class av extends g
{
  private q cmV;
  private byte[] cmW;
  private int type;

  public av(q paramq, int paramInt)
  {
    this.cmV = paramq;
    this.type = paramInt;
  }

  public final boolean a(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    PByteArray localPByteArray1 = new PByteArray();
    if (!(this.cmV instanceof o))
    {
      aa.aM("MicroMsg.RemoteResp", "all protocal should implemented with protobuf");
      return false;
    }
    PByteArray localPByteArray2 = new PByteArray();
    PInt localPInt = new PInt(0);
    o localo = (o)this.cmV;
    try
    {
      if (localo.awI())
      {
        int j = localo.s(paramArrayOfByte1);
        aa.d("MicroMsg.RemoteResp", "rawData using protobuf ok");
        this.cmV.cS(j);
        if (cj.hX(at.cHL))
          break label300;
        this.cmV.ez(at.cHL);
        break label300;
      }
      if (MMProtocalJni.unpack(localPByteArray2, paramArrayOfByte1, paramArrayOfByte2, localPByteArray1, localPInt))
      {
        if ((paramInt != 380) && (10001 == at.cHJ) && (at.cHK > 0))
        {
          if (at.cHK == 2)
            bi.k("", "", 0);
          at.cHK = 0;
          localPInt.value = -13;
          aa.w("MicroMsg.RemoteResp", "dkcert dktest set session timeout once !");
        }
        if ((localPInt.value == -13) || (localPInt.value == -102))
          this.cmV.cS(localPInt.value);
        while (true)
        {
          this.cmV.bG(paramArrayOfByte1.length);
          this.cmW = localPByteArray1.value;
          if (cj.hX(at.cHL))
            break;
          this.cmV.ez(at.cHL);
          break;
          int i = localo.s(localPByteArray2.value);
          aa.d("MicroMsg.RemoteResp", "bufToResp using protobuf ok");
          this.cmV.cS(i);
        }
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RemoteResp", "protobuf unbuild exception, check now!");
    }
    return false;
    label300: return true;
    return true;
  }

  public final void cS(int paramInt)
  {
    this.cmV.cS(paramInt);
  }

  public final void ez(String paramString)
  {
    this.cmV.ez(paramString);
  }

  public final int getCmdId()
  {
    return this.cmV.getCmdId();
  }

  public final int sd()
  {
    switch (this.type)
    {
    default:
      return 0;
    case 380:
      return ((l)this.cmV).fxM.fAX;
    case 126:
    }
    return ((ay)this.cmV).fyw.fAX;
  }

  public final String uo()
  {
    switch (this.type)
    {
    default:
      return "";
    case 380:
      return ((l)this.cmV).fxM.fAW.avA();
    case 126:
    }
    return ((ay)this.cmV).fyw.fRr;
  }

  public final byte[] wY()
  {
    return this.cmW;
  }

  public final String xl()
  {
    return this.cmV.xl();
  }

  public final int xm()
  {
    return this.cmV.xm();
  }

  public final String xn()
  {
    switch (this.type)
    {
    default:
      return "";
    case 380:
      return ((l)this.cmV).fxM.fQy;
    case 126:
    }
    return ((ay)this.cmV).fyw.fQy;
  }

  public final String xo()
  {
    if (this.type == 381)
    {
      qw localqw = ((ae)this.cmV).fyk.fKv;
      if (localqw != null)
        return cj.hW(localqw.fTk);
    }
    return "";
  }

  public final String xp()
  {
    if (this.type == 381)
    {
      qw localqw = ((ae)this.cmV).fyk.fKv;
      if (localqw != null)
        return cj.hW(localqw.fTj);
    }
    return "";
  }

  public final int xq()
  {
    if (this.type == 381)
      return ((ae)this.cmV).fyk.fKw;
    return 0;
  }

  public final String xr()
  {
    switch (this.type)
    {
    default:
      return "";
    case 380:
      return ((l)this.cmV).fxM.fEI.getString();
    case 126:
    }
    return ((ay)this.cmV).fyw.eBo;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.av
 * JD-Core Version:    0.6.2
 */