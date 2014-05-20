package com.tencent.mm.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public final class a extends p
  implements n
{
  private String cDK;
  private String cDL;
  private String cDM;
  private b cDN = null;
  private String cDO;
  private byte[] cmW;
  private int uin;
  private String username;

  public a(b paramb)
  {
    this.cDN = paramb;
    EJ();
  }

  private void EJ()
  {
    this.cmW = cj.ib(al.getContext().getSharedPreferences("server_id_prefs", 0).getString("server_id", ""));
  }

  public final boolean EK()
  {
    return (this.cDM != null) && (this.cDM.length() > 0);
  }

  public final void f(String paramString1, String paramString2, String paramString3)
  {
    this.username = paramString1;
    this.cDK = paramString2;
    this.cDL = paramString3;
  }

  public final String getPassword()
  {
    return this.cDK;
  }

  public final String getUsername()
  {
    return this.username;
  }

  public final void hC(String paramString)
  {
    this.cDO = paramString;
  }

  public final void q(String paramString, int paramInt)
  {
    this.cDM = paramString;
    this.uin = paramInt;
    if ((this.cDN != null) && (EK()));
    aa.d("MicroMsg.AccInfo", "update session info: session=" + paramString + ", uin=" + paramInt);
  }

  public final void reset()
  {
    aa.i("MicroMsg.AccInfo", "reset accinfo");
    this.username = "";
    this.cDK = "";
    this.cDL = "";
    this.cDM = "";
    EJ();
    this.uin = 0;
  }

  public final int sd()
  {
    return this.uin;
  }

  public final String toString()
  {
    String str1 = "AccInfo:\n" + "|-uin     =" + sd() + "\n";
    String str2 = str1 + "|-user    =" + getUsername() + "\n";
    String str3 = str2 + "|-session =" + uo() + "\n";
    return str3 + "`-cookie  =" + cj.cn(wY());
  }

  public final String uo()
  {
    return this.cDM;
  }

  public final byte[] wY()
  {
    return this.cmW;
  }

  public final void x(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    for (String str = ""; ; str = cj.cp(paramArrayOfByte))
    {
      al.getContext().getSharedPreferences("server_id_prefs", 0).edit().putString("server_id", str).commit();
      this.cmW = paramArrayOfByte;
      aa.d("MicroMsg.AccInfo", "oreh setCookie %s", new Object[] { str });
      aa.appenderFlush();
      return;
    }
  }

  public final String xg()
  {
    return this.cDL;
  }

  public final String xr()
  {
    return this.cDO;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.a
 * JD-Core Version:    0.6.2
 */