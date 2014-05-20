package com.tencent.mm.sdk.platformtools;

import android.media.ExifInterface;
import com.tencent.mm.a.c;
import java.io.IOException;

public final class f
{
  public static int hH(String paramString)
  {
    if (cj.hX(paramString))
      aa.d("MicroMsg.SDK.BackwardSupportUtil", "filepath is null or nil");
    while (true)
    {
      return 0;
      if (!c.as(paramString))
      {
        aa.e("MicroMsg.SDK.BackwardSupportUtil", "file not exist:[%s]", new Object[] { paramString });
        return 0;
      }
      try
      {
        localExifInterface = new ExifInterface(paramString);
        if (localExifInterface != null)
        {
          int i = localExifInterface.getAttributeInt("Orientation", -1);
          if (i != -1)
            switch (i)
            {
            case 4:
            case 5:
            case 7:
            default:
              return 0;
            case 3:
              return 180;
            case 6:
            case 8:
            }
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          aa.e("MicroMsg.SDK.BackwardSupportUtil", "cannot read exif" + localIOException);
          ExifInterface localExifInterface = null;
        }
        return 90;
      }
    }
    return 270;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.f
 * JD-Core Version:    0.6.2
 */