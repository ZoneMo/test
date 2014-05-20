package com.tencent.mm.n;

import android.os.RemoteException;
import com.tencent.mm.network.n;
import com.tencent.mm.network.o;
import com.tencent.mm.sdk.platformtools.cj;

public final class al
  implements n
{
  private final o cmC;

  public al(o paramo)
  {
    this.cmC = paramo;
  }

  public final void f(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      this.cmC.f(paramString1, paramString2, paramString3);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }

  public final String getUsername()
  {
    try
    {
      String str = this.cmC.getUsername();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return null;
  }

  public final void q(String paramString, int paramInt)
  {
    try
    {
      this.cmC.q(paramString, paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }

  public final void reset()
  {
    try
    {
      this.cmC.reset();
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }

  public final int sd()
  {
    try
    {
      int i = this.cmC.sd();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return 0;
  }

  public final String toString()
  {
    String str1 = "RAccInfo:\n" + "|-uin     =" + sd() + "\n";
    String str2 = str1 + "|-user    =" + getUsername() + "\n";
    String str3 = str2 + "|-session =" + uo() + "\n";
    return str3 + "`-cookie  =" + cj.cn(wY());
  }

  public final String uo()
  {
    try
    {
      String str = this.cmC.uo();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return null;
  }

  public final byte[] wY()
  {
    try
    {
      byte[] arrayOfByte = this.cmC.wY();
      return arrayOfByte;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.al
 * JD-Core Version:    0.6.2
 */