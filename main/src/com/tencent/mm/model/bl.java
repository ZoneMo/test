package com.tencent.mm.model;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.network.n;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.aw;

final class bl
  implements aw
{
  bl(n paramn)
  {
  }

  public final int getClientVersion()
  {
    return a.fxr;
  }

  public final String getUsername()
  {
    return this.ciR.getUsername();
  }

  public final String nD()
  {
    return String.valueOf(al.getContext().getSharedPreferences("system_config_prefs", 0).getInt("default_uin", 0));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bl
 * JD-Core Version:    0.6.2
 */