package com.tencent.mm.n;

import com.tencent.mm.network.a.c;
import com.tencent.mm.network.ac;
import com.tencent.mm.network.ak;
import com.tencent.mm.network.n;
import com.tencent.mm.network.r;
import com.tencent.mm.network.s;
import com.tencent.mm.network.v;
import com.tencent.mm.protocal.bf;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;

public final class am
  implements r
{
  private final s cmD;

  public am(s params)
  {
    this.cmD = params;
  }

  public final void C(String paramString1, String paramString2)
  {
    try
    {
      this.cmD.d(paramString1, null, paramString2, null);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "set fixed host failed, core service down");
    }
  }

  public final void V(boolean paramBoolean)
  {
    try
    {
      this.cmD.V(paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "change active status failed, core service down");
    }
  }

  public final int a(ak paramak, ac paramac)
  {
    try
    {
      int i = this.cmD.a(paramak, paramac);
      return i;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "remote dispatcher lost, send failed");
    }
    return -1;
  }

  public final void a(c paramc)
  {
    try
    {
      this.cmD.a(paramc);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void a(bf parambf)
  {
    try
    {
      this.cmD.a(parambf);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void a(boolean paramBoolean, String paramString1, String paramString2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2, String paramString3, String paramString4)
  {
    try
    {
      this.cmD.a(paramBoolean, paramString1, paramString2, paramArrayOfInt1, paramArrayOfInt2, paramInt1, paramInt2, paramString3, paramString4);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "dkidc setIDCHostInfo ip failed, core service down");
    }
  }

  public final int c(String paramString, List paramList)
  {
    try
    {
      int i = this.cmD.c(paramString, paramList);
      return i;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  public final void cancel(int paramInt)
  {
    try
    {
      this.cmD.cancel(paramInt);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "cancel remote rr failed, netid=" + paramInt);
    }
  }

  public final void eu(String paramString)
  {
    try
    {
      this.cmD.eu(paramString);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "ipxxStatistics remote call error");
    }
  }

  public final String[] getIPsString(boolean paramBoolean)
  {
    try
    {
      String[] arrayOfString = this.cmD.getIPsString(paramBoolean);
      return arrayOfString;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "query remote network server ip failed");
    }
    return null;
  }

  public final String getNetworkServerIp()
  {
    try
    {
      String str = this.cmD.getNetworkServerIp();
      return str;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "query remote network server ip failed");
    }
    return null;
  }

  public final void reset()
  {
    try
    {
      this.cmD.reset();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "reset failed, core service down");
    }
  }

  public final void setHostInfo(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    try
    {
      this.cmD.setHostInfo(paramArrayOfString1, paramArrayOfString2);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean wT()
  {
    try
    {
      boolean bool = this.cmD.wT();
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "core service down, guess network stable");
    }
    return true;
  }

  public final n wZ()
  {
    try
    {
      al localal = new al(this.cmD.EM());
      return localal;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.RDispatcher", "getAccInfo failed, core service down");
    }
    return null;
  }

  public final v xa()
  {
    try
    {
      v localv = this.cmD.EO();
      return localv;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.am
 * JD-Core Version:    0.6.2
 */