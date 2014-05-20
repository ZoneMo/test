package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.tencent.mm.a.c;
import com.tencent.mm.w.a;
import com.tencent.mm.w.ag;

public class CdnImageView extends ImageView
{
  private int dhY;
  private int dhZ;
  private Handler handler = new g(this);
  private String url = null;

  public CdnImageView(Context paramContext)
  {
    this(paramContext, null);
  }

  public CdnImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public CdnImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void u(String paramString, int paramInt1, int paramInt2)
  {
    this.url = paramString;
    this.dhY = paramInt1;
    this.dhZ = paramInt2;
    if ((paramString == null) || (paramString.length() == 0))
    {
      setVisibility(8);
      return;
    }
    if (paramString.startsWith("http"))
    {
      ag.AZ();
      Bitmap localBitmap2 = a.fP(paramString);
      if (localBitmap2 != null)
      {
        if ((this.dhY > 0) && (this.dhZ > 0))
          localBitmap2 = com.tencent.mm.sdk.platformtools.h.a(localBitmap2, this.dhY, this.dhZ, true, false);
        setImageBitmap(localBitmap2);
        return;
      }
      new h(paramString, this.handler).start();
      return;
    }
    if (!c.as(paramString))
    {
      setVisibility(8);
      return;
    }
    if ((this.dhY <= 0) || (this.dhZ <= 0));
    for (Bitmap localBitmap1 = com.tencent.mm.sdk.platformtools.h.su(paramString); localBitmap1 == null; localBitmap1 = com.tencent.mm.sdk.platformtools.h.a(paramString, this.dhY, this.dhZ, true))
    {
      setVisibility(8);
      return;
    }
    setImageBitmap(localBitmap1);
  }

  public final void setUrl(String paramString)
  {
    u(paramString, 0, 0);
  }

  public final void t(String paramString, int paramInt1, int paramInt2)
  {
    u(paramString, paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.CdnImageView
 * JD-Core Version:    0.6.2
 */