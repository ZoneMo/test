package com.tencent.mm.compatible.audio;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.compatible.c.a;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.al;

public final class b
{
  public static c oZ()
  {
    SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences(al.azs(), 0);
    int i = s.ceL.cdg;
    boolean bool = false;
    if (i == 1);
    while (true)
    {
      if (!localSharedPreferences.contains("settings_voicerecorder_mode"))
        localSharedPreferences.edit().putBoolean("settings_voicerecorder_mode", bool).commit();
      if (!localSharedPreferences.getBoolean("settings_voicerecorder_mode", bool))
        break;
      return c.cbf;
      bool = true;
    }
    return c.cbg;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.b
 * JD-Core Version:    0.6.2
 */