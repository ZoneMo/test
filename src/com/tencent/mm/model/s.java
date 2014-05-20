package com.tencent.mm.model;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.sdk.platformtools.cj;

public class s
{
  private static s chK;
  private t chL;

  public static boolean ck(String paramString)
  {
    boolean bool1 = be.uz().bY("banner").getBoolean("ChattingBannerHelper_user_status_" + paramString, false);
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = cj.Bj();
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
  }

  public static s te()
  {
    try
    {
      if (chK == null)
        chK = new s();
      return chK;
    }
    finally
    {
    }
  }

  public final void a(t paramt)
  {
    this.chL = paramt;
  }

  public final void a(String paramString, Boolean paramBoolean)
  {
    be.uz().bY("banner").edit().putBoolean("ChattingBannerHelper_user_status_" + paramString, paramBoolean.booleanValue()).commit();
    if (this.chL != null)
      this.chL.tf();
  }

  public final void cl(String paramString)
  {
    be.uz().bY("banner").edit().remove("ChattingBannerHelper_user_status_" + paramString).commit();
    if (this.chL != null)
      this.chL.tf();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.s
 * JD-Core Version:    0.6.2
 */