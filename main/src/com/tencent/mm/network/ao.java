package com.tencent.mm.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.protocal.bf;
import com.tencent.mm.protocal.f;
import com.tencent.mm.protocal.u;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ce;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

public final class ao extends t
  implements b
{
  private a cEA;
  private az cEB;
  private bb cEC;
  private long cED = 0L;
  private int cEE = -1;
  private bf cEF;
  private int cEw = 0;
  private long cEx = 0L;
  private long cEy = 0L;
  private WakerLock cEz = null;
  private Handler handler;

  public ao(Handler paramHandler)
  {
    if (paramHandler == null)
      paramHandler = new Handler();
    this.handler = paramHandler;
    this.cEA = new a(this);
    this.cEz = new WakerLock(bk.getContext());
    this.cEB = new az(this, this.cEz);
    this.cEC = new bb(this, this.cEz);
  }

  private void a(ak paramak, int paramInt1, int paramInt2)
  {
    paramak.a(this.cEA, this.cEB, paramInt1, paramInt2);
  }

  private void c(int paramInt1, int paramInt2, String paramString)
  {
    aa.i("MicroMsg.AutoAuth", "handleAutoAuthFail errType=" + paramInt1 + ", inErrCode=" + paramInt2 + ", errMsg=" + paramString);
    if ((paramInt1 == 4) && (paramInt2 == -106))
      aa.e("MicroMsg.AutoAuth", "handleAutoAuthFail autoauth should not be return MM_ERR_BLOCK_BY_SPAM trans to MM_ERR_AUTH_ANOTHERPLACE");
    for (int i = -100; ; i = paramInt2)
    {
      bk.Fg().d(paramInt1, i, paramString);
      if ((paramInt1 == 4) && ((i == -100) || (paramInt2 == -205) || (paramInt2 == -213)))
      {
        al.getContext().getSharedPreferences("auth_hold_prefs", 0).edit().putBoolean("auth_ishold", true).commit();
        reset();
      }
      return;
    }
  }

  private static void hE(String paramString)
  {
    al.getContext().getSharedPreferences("ticket_prefs", l.qi()).edit().putString("_auth_ticket", paramString).commit();
    al.getContext().getSharedPreferences("auth_hold_prefs", 0).edit().remove("auth_ishold").commit();
    aa.d("MicroMsg.AutoAuth", "oreh save authTicket:%s", new Object[] { paramString });
    aa.appenderFlush();
  }

  public final void EN()
  {
    this.cEz.lock(1000L);
    new aw(this, Integer.valueOf(-1)).b(this.handler);
  }

  public final v EO()
  {
    return bk.Fd();
  }

  public final a ES()
  {
    return this.cEA;
  }

  public final boolean ET()
  {
    if (90000L >= SystemClock.elapsedRealtime() - this.cEy)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(this.cEy);
      arrayOfObject[1] = Long.valueOf(SystemClock.elapsedRealtime());
      aa.c("MicroMsg.AutoAuth", "auto limit lastSessionTimeout=%d, curtime=%d", arrayOfObject);
      return false;
    }
    this.cEy = SystemClock.elapsedRealtime();
    this.cEA.q("", this.cEA.sd());
    return true;
  }

  public final byte[] EU()
  {
    bf localbf = this.cEF;
    Object localObject = null;
    if (localbf != null);
    try
    {
      byte[] arrayOfByte = this.cEF.uL();
      localObject = arrayOfByte;
      return localObject;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return null;
  }

  public final void V(boolean paramBoolean)
  {
    new at(this, Integer.valueOf(-1), paramBoolean).b(this.handler);
  }

  public final int a(ak paramak, ac paramac)
  {
    try
    {
      this.cEz.lock(1000L);
      int i = ((Integer)new as(this, Integer.valueOf(-1), paramak, paramac).b(this.handler)).intValue();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(int paramInt1, int paramInt2, String paramString, ak paramak, byte[] paramArrayOfByte)
  {
    if (paramInt2 != 0);
    try
    {
      this.cEw = (1 + this.cEw);
      f localf = paramak.xk();
      int i = paramak.getType();
      if (!cj.A(paramArrayOfByte))
      {
        if (i == 126)
          break label719;
        if (i == 380)
          break label719;
      }
      while (true)
      {
        this.cEA.x(paramArrayOfByte);
        switch (paramak.getType())
        {
        case 380:
          if (paramak.getType() == 10)
            break;
          this.cEw = 0;
          break;
        case 381:
        case 126:
          label719: 
          do
          {
            do
            {
              if ((paramInt2 != 0) || (paramInt1 != 0))
                break;
              this.cEA.x(paramArrayOfByte);
              break;
              Object[] arrayOfObject = new Object[3];
              arrayOfObject[0] = Integer.valueOf(paramInt1);
              arrayOfObject[1] = Integer.valueOf(paramInt2);
              arrayOfObject[2] = paramString;
              aa.e("MicroMsg.AutoAuth", "dkwt auth end ret:[%d,%d][%s]", arrayOfObject);
              if ((localf.xm() != 0) || (paramInt1 != 0))
                break label751;
              if (paramInt2 != 0)
              {
                break label751;
                al.getContext().getSharedPreferences("auth_hold_prefs", 0).edit().putBoolean("auth_ishold", true).commit();
                return;
                com.tencent.mm.protocal.c localc2 = paramak.xj();
                this.cEA.f(localf.xr(), localc2.getPassword(), localc2.xg());
                this.cEA.q(localf.uo(), localf.sd());
                this.cEA.hC(localf.xr());
                hE(localf.xn());
                return;
              }
              com.tencent.mm.protocal.c localc3 = paramak.xj();
              this.cEA.f(localf.xr(), localc3.getPassword(), localc3.xg());
              this.cEA.q(localf.uo(), localf.sd());
              this.cEA.hC(localf.xr());
              hE(localf.xn());
              return;
              if ((paramInt1 == 0) && (paramInt2 == 0))
              {
                com.tencent.mm.protocal.bi.k(paramak.xk().xo(), paramak.xk().xp(), paramak.xk().xq());
                this.cED = SystemClock.elapsedRealtime();
              }
              if ((com.tencent.mm.platformtools.at.cHJ == 10003) && (com.tencent.mm.platformtools.at.cHK > 0))
              {
                if (com.tencent.mm.platformtools.at.cHK <= 1)
                  com.tencent.mm.platformtools.at.cHK = 0;
                com.tencent.mm.protocal.bi.k("", "", 0);
                paramInt1 = 4;
              }
              if (this.cEE == -1)
                break label747;
              if ((paramInt1 == 0) && (paramInt2 == 0))
                a(paramak, 0, 0);
              this.cEE = -1;
              return;
              aa.i("MicroMsg.AutoAuth", "net.end: register done");
              if ((localf.xm() != 0) || (paramInt1 != 0) || (paramInt2 != 0))
              {
                aa.e("MicroMsg.AutoAuth", "net.end: reg err: type=" + paramak.getType() + " err=" + paramInt1 + "," + paramInt2 + " errmsg=" + paramString);
                return;
              }
              aa.i("MicroMsg.AutoAuth", "net.end: reg ok: type=" + paramak.getType());
              com.tencent.mm.protocal.c localc1 = paramak.xj();
              this.cEA.f(localf.xr(), localc1.getPassword(), localc1.xg());
              this.cEA.q(localf.uo(), localf.sd());
              this.cEA.hC(localf.xr());
              hE(localf.xn());
              return;
            }
            while ((i != 380) || (paramInt1 != 4));
            if (paramInt2 == -16)
              break;
          }
          while (paramInt2 != -17);
        }
      }
      label747: return;
    }
    catch (RemoteException localRemoteException)
    {
      return;
    }
    label751: switch (paramInt2)
    {
    case -213:
    case -205:
    case -100:
    case -17:
    case -16:
    }
  }

  public final void a(com.tencent.mm.network.a.c paramc)
  {
    bk.Fc().a(paramc);
  }

  public final void a(bf parambf)
  {
    this.cEF = parambf;
  }

  public final void a(boolean paramBoolean, String paramString1, String paramString2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2, String paramString3, String paramString4)
  {
    this.cEz.lock(1000L);
    String[] arrayOfString1 = u.ru(paramString1);
    String[] arrayOfString2 = u.ru(paramString2);
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = paramString3;
    arrayOfObject[1] = paramString1;
    int i;
    int j;
    if (arrayOfString1 == null)
    {
      i = -1;
      arrayOfObject[2] = Integer.valueOf(i);
      arrayOfObject[3] = paramString4;
      arrayOfObject[4] = paramString2;
      if (arrayOfString2 != null)
        break label157;
      j = -1;
      label76: arrayOfObject[5] = Integer.valueOf(j);
      if (!paramBoolean)
        break label165;
    }
    label157: label165: for (String str = "!!!!!CHANGE IDC NOW"; ; str = "false")
    {
      arrayOfObject[6] = str;
      aa.e("MicroMsg.AutoAuth", "dkidc setIDCHostInfo short:[%s][%s](%d) long:[%s][%s](%d) reset:%s", arrayOfObject);
      new au(this, Integer.valueOf(-1), arrayOfString1, paramArrayOfInt1, paramInt1, arrayOfString2, paramArrayOfInt2, paramInt2, paramBoolean, paramString3, paramString4).b(this.handler);
      return;
      i = arrayOfString1.length;
      break;
      j = arrayOfString2.length;
      break label76;
    }
  }

  public final int c(String paramString, List paramList)
  {
    return Java2C.c(paramString, paramList);
  }

  public final void cancel(int paramInt)
  {
    this.cEz.lock(1000L);
    new ap(this, paramInt).b(this.handler);
  }

  public final void d(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.cEz.lock(1000L);
    aa.e("MicroMsg.AutoAuth", "dkidc setFixedHost debug short:%s long:%s", new Object[] { paramString1, paramString3 });
    if ((cj.hX(paramString1)) || (cj.hX(paramString3)))
    {
      aa.w("MicroMsg.AutoAuth", "dkidc setFixedHost FAILED ! check assist");
      return;
    }
    new av(this, Integer.valueOf(-1), paramString1, paramString2, paramString3, paramString4).b(this.handler);
  }

  public final void eu(String paramString)
  {
    this.cEz.lock(1000L);
    new ax(this, paramString).b(this.handler);
  }

  protected final void finalize()
  {
    reset();
    super.finalize();
  }

  public final String[] getIPsString(boolean paramBoolean)
  {
    return Java2C.getIPsString(paramBoolean);
  }

  public final String getNetworkServerIp()
  {
    return Java2C.getNetworkServerIp();
  }

  final boolean makeSureAuth()
  {
    if (this.cEA.EK())
      return true;
    if (bk.Fg().EY())
      return false;
    if (this.cEE != -1)
    {
      aa.w("MicroMsg.AutoAuth", "auto limit now is getting cert");
      return false;
    }
    if (60000L >= SystemClock.elapsedRealtime() - this.cEx)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.cEx);
      arrayOfObject2[1] = Long.valueOf(SystemClock.elapsedRealtime());
      aa.c("MicroMsg.AutoAuth", "auto limit lastAutoAuthtime=%d, curtime=%d", arrayOfObject2);
      return false;
    }
    if (al.getContext().getSharedPreferences("auth_hold_prefs", 0).getBoolean("auth_ishold", false))
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(Process.myPid());
      aa.b("MicroMsg.AutoAuth", "sendImp hit push hold, pid:%d", arrayOfObject1);
      bk.getHandler().post(new ay(this));
      return false;
    }
    this.cEx = SystemClock.elapsedRealtime();
    ak localak = bk.Fg().EZ();
    if (localak != null);
    try
    {
      a(localak, 3, 3);
      label182: return false;
    }
    catch (RemoteException localRemoteException)
    {
      break label182;
    }
  }

  public final void reset()
  {
    this.cEz.lock(1000L);
    new ar(this).b(this.handler);
  }

  public final void setHostInfo(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    this.cEz.lock(1000L);
    new aq(this, paramArrayOfString1, paramArrayOfString2).b(this.handler);
  }

  public final byte[] uM()
  {
    bf localbf = this.cEF;
    Object localObject = null;
    if (localbf != null);
    try
    {
      byte[] arrayOfByte = this.cEF.uM();
      localObject = arrayOfByte;
      return localObject;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return null;
  }

  public final boolean wT()
  {
    return this.cEw < 5;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.ao
 * JD-Core Version:    0.6.2
 */