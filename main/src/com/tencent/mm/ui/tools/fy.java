package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.res.ColorStateList;
import com.tencent.mm.an.a;
import com.tencent.mm.f;
import junit.framework.Assert;

public final class fy
{
  private static fy hmB = null;
  private ColorStateList[] gXT = new ColorStateList[2];
  private boolean hmC = false;

  private fy(Context paramContext)
  {
    this.gXT[0] = a.j(paramContext, f.aah);
    this.gXT[1] = a.j(paramContext, f.aai);
  }

  private static fy ce(Context paramContext)
  {
    if (paramContext != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if ((hmB == null) || (!hmB.hmC))
        hmB = new fy(paramContext);
      return hmB;
    }
  }

  public static ColorStateList cf(Context paramContext)
  {
    return ce(paramContext).gXT[0];
  }

  public static ColorStateList cg(Context paramContext)
  {
    return ce(paramContext).gXT[1];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fy
 * JD-Core Version:    0.6.2
 */