package com.tencent.mm.platformtools;

import android.media.ExifInterface;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.IOException;

final class j
{
  public static int hH(String paramString)
  {
    try
    {
      localExifInterface = new ExifInterface(paramString);
      int i;
      if (localExifInterface != null)
      {
        i = localExifInterface.getAttributeInt("Orientation", -1);
        if (i == -1);
      }
      switch (i)
      {
      case 4:
      case 5:
      case 7:
      default:
        return 0;
      case 6:
      case 3:
      case 8:
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        aa.e("MicroMsg.ExifHelper20Impl", "cannot read exif" + localIOException);
        ExifInterface localExifInterface = null;
      }
      return 90;
    }
    return 180;
    return 270;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.j
 * JD-Core Version:    0.6.2
 */