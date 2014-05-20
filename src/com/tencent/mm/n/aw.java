package com.tencent.mm.n;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.a.f;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import oicq.wlogin_sdk.a.b;
import oicq.wlogin_sdk.a.d;
import oicq.wlogin_sdk.a.e;

public final class aw
{
  private d cmX = null;
  private long cmY = 0L;

  public aw()
  {
    try
    {
      long l = cj.FD();
      this.cmX = new d(al.getContext(), a.fxr);
      oicq.wlogin_sdk.c.f.hzK = 1;
      oicq.wlogin_sdk.c.f.hzL = new ax(this);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(cj.N(l));
      aa.e("MicroMsg.WtloginMgr", "dkstart wtlogin init :%d", arrayOfObject);
      return;
    }
    catch (Error localError)
    {
    }
  }

  public static int eA(String paramString)
  {
    if (cj.hX(paramString));
    SharedPreferences localSharedPreferences;
    do
    {
      return -1;
      localSharedPreferences = al.getContext().getSharedPreferences("next_auth_pass_type", 0);
    }
    while (localSharedPreferences == null);
    return localSharedPreferences.getInt(f.h(paramString.getBytes()), 0);
  }

  public static void r(String paramString, int paramInt)
  {
    if (cj.hX(paramString))
      return;
    SharedPreferences.Editor localEditor = al.getContext().getSharedPreferences("next_auth_pass_type", 0).edit();
    localEditor.putInt(f.h(paramString.getBytes()), paramInt);
    localEditor.commit();
  }

  public final boolean a(long paramLong, byte[] paramArrayOfByte)
  {
    if (paramLong != this.cmY)
    {
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Long.valueOf(this.cmY);
      arrayOfObject3[1] = Long.valueOf(paramLong);
      aa.b("MicroMsg.WtloginMgr", "dkwt parseRespLoginBuf Error uin ReqUin:%d RespUin:%d", arrayOfObject3);
    }
    while (true)
    {
      return false;
      if (cj.A(paramArrayOfByte))
      {
        aa.e("MicroMsg.WtloginMgr", "dkwt parseRespLoginBuf respBuf is null.");
        return false;
      }
      try
      {
        int i = this.cmX.cz(paramArrayOfByte);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramArrayOfByte.length);
        arrayOfObject2[1] = Integer.valueOf(i);
        aa.e("MicroMsg.WtloginMgr", "dkwt parseRespLoginBuf buflen:%d ret:%d", arrayOfObject2);
        if (i == 0)
          return true;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getMessage();
        aa.b("MicroMsg.WtloginMgr", "dkwt parseRespLoginBuf e:%s", arrayOfObject1);
      }
    }
    return false;
  }

  public final byte[] a(long paramLong, String paramString)
  {
    if (paramLong != this.cmY)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.cmY);
      arrayOfObject2[1] = Long.valueOf(paramLong);
      aa.b("MicroMsg.WtloginMgr", "dkwt getReqLoginBufbyVerifyImg Error uin ReqUin:%d RespUin:%d", arrayOfObject2);
      return new byte[0];
    }
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.WtloginMgr", "dkwt getReqLoginBufbyVerifyImg Error imgResult is null.");
      return new byte[0];
    }
    try
    {
      byte[] arrayOfByte = this.cmX.c(paramLong, paramString.getBytes());
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.getMessage();
      aa.b("MicroMsg.WtloginMgr", "dkwt getReqLoginBufbyVerifyImg e:%s", arrayOfObject1);
    }
    return new byte[0];
  }

  public final byte[] a(long paramLong, String paramString, boolean paramBoolean)
  {
    Object[] arrayOfObject1 = new Object[2];
    boolean bool1;
    Object localObject;
    if (at.cHJ == 10006)
    {
      bool1 = true;
      arrayOfObject1[0] = Boolean.valueOf(bool1);
      arrayOfObject1[1] = Integer.valueOf(at.cHK);
      aa.e("MicroMsg.WtloginMgr", "dkwt isTestWtLogin:%b val:%d", arrayOfObject1);
      if (at.cHJ != 10006)
        break label91;
      if (at.cHK != 1)
        break label80;
      at.cHK = 0;
      localObject = new byte[0];
    }
    while (true)
    {
      return localObject;
      bool1 = false;
      break;
      label80: if (at.cHK == 2)
        return new byte[0];
      try
      {
        label91: this.cmY = paramLong;
        label104: Object[] arrayOfObject3;
        if (paramBoolean)
        {
          localObject = null;
          arrayOfObject3 = new Object[4];
          arrayOfObject3[0] = Integer.valueOf(8256);
          arrayOfObject3[1] = Long.valueOf(paramLong);
          arrayOfObject3[2] = Boolean.valueOf(paramBoolean);
          if (cj.A((byte[])localObject))
            break label221;
        }
        label221: for (boolean bool2 = true; ; bool2 = false)
        {
          arrayOfObject3[3] = Boolean.valueOf(bool2);
          aa.e("MicroMsg.WtloginMgr", "dkwt getReqLoginBuf sig:%d uin:%d manualauth:%b  byA1Buf:%b ", arrayOfObject3);
          if (!cj.A((byte[])localObject))
            break;
          return this.cmX.a(paramLong, e.hxl, new String(cj.ib(paramString), "ISO-8859-1"));
          byte[] arrayOfByte = this.cmX.a(paramLong, e.hxm, "");
          localObject = arrayOfByte;
          break label104;
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localException.getMessage();
        aa.b("MicroMsg.WtloginMgr", "dkwt getReqLoginBuf e:%s", arrayOfObject2);
      }
    }
    return new byte[0];
  }

  public final byte[] u(long paramLong)
  {
    if (paramLong != this.cmY)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.cmY);
      arrayOfObject2[1] = Long.valueOf(paramLong);
      aa.b("MicroMsg.WtloginMgr", "dkwt getVerifyImg Error uin ReqUin:%d RespUin:%d", arrayOfObject2);
      return new byte[0];
    }
    try
    {
      byte[] arrayOfByte = this.cmX.co(paramLong);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.getMessage();
      aa.b("MicroMsg.WtloginMgr", "dkwt getVerifyImg e:%s", arrayOfObject1);
    }
    return new byte[0];
  }

  public final byte[] v(long paramLong)
  {
    if (paramLong != this.cmY)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.cmY);
      arrayOfObject2[1] = Long.valueOf(paramLong);
      aa.b("MicroMsg.WtloginMgr", "dkwt getA2KeyByRespBuf Error uin ReqUin:%d RespUin:%d", arrayOfObject2);
      return new byte[0];
    }
    try
    {
      b localb = this.cmX.cp(paramLong);
      if (localb == null)
        return new byte[0];
      byte[] arrayOfByte = localb.hwR;
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.getMessage();
      aa.b("MicroMsg.WtloginMgr", "dkwt getA2KeyByRespBuf e:%s", arrayOfObject1);
    }
    return new byte[0];
  }

  public final void w(long paramLong)
  {
    if (paramLong != this.cmY)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.cmY);
      arrayOfObject2[1] = Long.valueOf(paramLong);
      aa.b("MicroMsg.WtloginMgr", "dkwt clearUserWtInfo Error uin ReqUin:%d RespUin:%d", arrayOfObject2);
      return;
    }
    try
    {
      this.cmX.cq(paramLong);
      return;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.getMessage();
      aa.b("MicroMsg.WtloginMgr", "dkwt clearUserWtInfo e:%s", arrayOfObject1);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.aw
 * JD-Core Version:    0.6.2
 */