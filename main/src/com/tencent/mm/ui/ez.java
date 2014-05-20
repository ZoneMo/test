package com.tencent.mm.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.LayoutInflater;
import com.tencent.mm.sdk.platformtools.al;

public final class ez
{
  private static float BP = 0.0F;

  public static void b(Context paramContext, float paramFloat)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences(al.azs(), 0).edit();
    localEditor.putFloat("text_size_scale_key", paramFloat);
    localEditor.commit();
    BP = paramFloat;
  }

  public static LayoutInflater bR(Context paramContext)
  {
    bS(paramContext);
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext).cloneInContext(paramContext);
    localLayoutInflater.setFactory(new fa(localLayoutInflater));
    return localLayoutInflater;
  }

  public static float bS(Context paramContext)
  {
    if (BP == 0.0F)
      BP = paramContext.getSharedPreferences(al.azs(), 0).getFloat("text_size_scale_key", 1.0F);
    return BP;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ez
 * JD-Core Version:    0.6.2
 */