package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import com.tencent.mm.an.a;
import com.tencent.mm.p.h;
import java.util.Iterator;
import java.util.List;

public final class as
{
  private static DisplayMetrics gLD = null;

  public static at a(Context paramContext, TextPaint paramTextPaint, List paramList, int paramInt)
  {
    at localat = new at();
    if (gLD == null)
      gLD = paramContext.getResources().getDisplayMetrics();
    DisplayMetrics localDisplayMetrics = gLD;
    Iterator localIterator = paramList.iterator();
    float f1 = 0.0F;
    float f2;
    if (localIterator.hasNext())
    {
      f2 = paramTextPaint.measureText(((h)localIterator.next()).name);
      if (f1 >= f2)
        break label224;
    }
    while (true)
    {
      f1 = f2;
      break;
      int i = (int)f1 + 2 * a.fromDPToPix(paramContext, 30);
      int j = a.fromDPToPix(paramContext, 95);
      if (i < j);
      while (true)
      {
        if (paramInt - j / 2 < 0)
        {
          localat.gLE = 0;
          localat.gLF = (localDisplayMetrics.widthPixels - (j + 0));
          return localat;
        }
        if (localDisplayMetrics.widthPixels - (paramInt + j / 2) < 0)
        {
          localat.gLE = (localDisplayMetrics.widthPixels - (j + 0));
          localat.gLF = 0;
          return localat;
        }
        localat.gLE = (paramInt - j / 2);
        localat.gLF = (localDisplayMetrics.widthPixels - (paramInt + j / 2));
        return localat;
        j = i;
      }
      label224: f2 = f1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.as
 * JD-Core Version:    0.6.2
 */