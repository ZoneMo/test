package com.tencent.mm.pluginsdk.ui.tools.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.util.Hashtable;

public final class q
{
  public static Bitmap v(String paramString, int paramInt1, int paramInt2)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.put(g.fvS, "utf-8");
    while (true)
    {
      int i;
      try
      {
        new r();
        c localc = r.a(paramString, a.fuZ, paramInt1, paramInt2, localHashtable);
        int[] arrayOfInt = new int[paramInt1 * paramInt2];
        i = 0;
        int j;
        if (j < paramInt1)
        {
          if (localc.aQ(j, i))
          {
            arrayOfInt[(j + i * paramInt1)] = -16777216;
          }
          else
          {
            arrayOfInt[(j + i * paramInt1)] = -1;
            continue;
            Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
            localBitmap.setPixels(arrayOfInt, 0, paramInt1, 0, 0, paramInt1, paramInt2);
            return localBitmap;
            if (i >= paramInt2)
              continue;
            j = 0;
            continue;
          }
          j++;
          continue;
        }
      }
      catch (w localw)
      {
        return null;
      }
      i++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.q
 * JD-Core Version:    0.6.2
 */