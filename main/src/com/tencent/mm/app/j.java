package com.tencent.mm.app;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.aw;

final class j
  implements aw
{
  j(ToolsProfile paramToolsProfile)
  {
  }

  public final int getClientVersion()
  {
    return a.fxr;
  }

  public final String getUsername()
  {
    return "";
  }

  public final String nD()
  {
    return String.valueOf(al.getContext().getSharedPreferences("system_config_prefs", 0).getInt("default_uin", 0));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.j
 * JD-Core Version:    0.6.2
 */