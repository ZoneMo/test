package com.tencent.mm.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public enum bd
{
  private final SharedPreferences chz = al.getContext().getSharedPreferences(al.azs(), 0);

  static
  {
    bd[] arrayOfbd = new bd[1];
    arrayOfbd[0] = cik;
  }

  private bd()
  {
  }

  public final void a(String paramString1, int paramInt, String paramString2)
  {
    int i = 0;
    if (paramInt != 0)
      i = 1;
    if (!cj.hX(paramString2))
      i |= 2;
    if (!cj.hX(paramString1))
      i |= 4;
    s("last_bind_info", String.valueOf(i));
  }

  public final void s(String paramString1, String paramString2)
  {
    aa.e("MicroMsg.LastLoginInfo", "save key : %s value : %s", new Object[] { paramString1, paramString2 });
    this.chz.edit().putString(paramString1, paramString2).commit();
  }

  public final String t(String paramString1, String paramString2)
  {
    return this.chz.getString(paramString1, paramString2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bd
 * JD-Core Version:    0.6.2
 */