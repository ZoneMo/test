package com.tencent.mm.booter;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.network.ao;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.aw;

final class f
  implements aw
{
  f(CoreService paramCoreService)
  {
  }

  public final int getClientVersion()
  {
    return com.tencent.mm.protocal.a.fxr;
  }

  public final String getUsername()
  {
    return CoreService.a(this.bZw).ES().getUsername();
  }

  public final String nD()
  {
    return String.valueOf(al.getContext().getSharedPreferences("system_config_prefs", 0).getInt("default_uin", 0));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.f
 * JD-Core Version:    0.6.2
 */