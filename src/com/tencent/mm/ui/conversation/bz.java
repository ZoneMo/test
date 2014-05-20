package com.tencent.mm.ui.conversation;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.Button;
import com.tencent.mm.ac.c;
import com.tencent.mm.an.a;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Map;
import junit.framework.Assert;

final class bz
{
  private com.tencent.mm.ac.b gZS;

  bz(com.tencent.mm.ac.b paramb)
  {
    this.gZS = paramb;
  }

  private static Drawable a(Map paramMap, Context paramContext)
  {
    if ((paramMap == null) || (paramMap.size() <= 0))
      return null;
    String str1 = (String)paramMap.get(com.tencent.mm.platformtools.b.ad(paramContext));
    if (str1 == null)
      str1 = (String)paramMap.get(com.tencent.mm.platformtools.b.ae(paramContext));
    if (au.hW(str1).length() <= 0)
      return null;
    c localc = com.tencent.mm.ac.b.gi(str1);
    if (localc == c.cwy)
      return null;
    String str2 = com.tencent.mm.ac.b.gh(str1);
    if (au.hW(str2).length() <= 0)
      return null;
    while (true)
    {
      Bitmap localBitmap;
      try
      {
        if (localc == c.cww)
        {
          localObject = com.tencent.mm.platformtools.b.a(paramContext.getAssets().open(str2), a.getDensity(paramContext));
          if (localObject == null)
          {
            aa.e("MicroMsg.ADListView.Message", "get Bitmap failed type:" + localc + " path:" + str2);
            return null;
          }
        }
        else
        {
          localObject = com.tencent.mm.platformtools.b.e(str2, a.getDensity(paramContext));
          continue;
        }
        byte[] arrayOfByte = ((Bitmap)localObject).getNinePatchChunk();
        if ((arrayOfByte != null) && (NinePatch.isNinePatchChunk(arrayOfByte)))
          return new NinePatchDrawable((Bitmap)localObject, arrayOfByte, new Rect(), null);
        DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
        localBitmap = Bitmap.createScaledBitmap((Bitmap)localObject, localDisplayMetrics.widthPixels, localDisplayMetrics.widthPixels * ((Bitmap)localObject).getHeight() / ((Bitmap)localObject).getWidth(), true);
        if (localBitmap != null)
        {
          if (localObject != localBitmap)
            ((Bitmap)localObject).recycle();
        }
        else
        {
          BitmapDrawable localBitmapDrawable = new BitmapDrawable((Bitmap)localObject);
          localBitmapDrawable.setTargetDensity(localDisplayMetrics);
          return localBitmapDrawable;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      Object localObject = localBitmap;
    }
  }

  public final int a(ci paramci)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramci != null)
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (paramci.had == null)
        break label54;
    }
    Drawable localDrawable;
    while (true)
    {
      Assert.assertTrue(bool1);
      localDrawable = a(this.gZS.cwu, paramci.hac.getContext());
      if (localDrawable != null)
        break label59;
      return -1;
      bool2 = false;
      break;
      label54: bool1 = false;
    }
    label59: paramci.hac.setBackgroundDrawable(localDrawable);
    Button localButton = paramci.had;
    if (this.gZS.cwm);
    for (int i = 0; ; i = 8)
    {
      localButton.setVisibility(i);
      return 0;
    }
  }

  public final String getId()
  {
    return this.gZS.id;
  }

  public final String getUrl()
  {
    return this.gZS.url;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bz
 * JD-Core Version:    0.6.2
 */