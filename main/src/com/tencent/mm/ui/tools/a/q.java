package com.tencent.mm.ui.tools.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.ExifInterface;
import android.net.Uri;

final class q extends j
{
  q(Context paramContext, n paramn, e parame, af paramaf, a parama)
  {
    super(paramContext, paramn, parame, paramaf, parama);
  }

  static int i(Uri paramUri)
  {
    switch (new ExifInterface(paramUri.getPath()).getAttributeInt("Orientation", 1))
    {
    case 4:
    case 5:
    case 7:
    default:
      return 0;
    case 6:
      return 90;
    case 3:
      return 180;
    case 8:
    }
    return 270;
  }

  final Bitmap a(ab paramab)
  {
    this.hqe = i(paramab.uri);
    return super.a(paramab);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.q
 * JD-Core Version:    0.6.2
 */