package com.tencent.mm.pluginsdk.ui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.sdk.platformtools.aa;

public class ac extends BitmapDrawable
  implements f
{
  protected static final Paint cXp;
  protected static final Handler cXq = new Handler(Looper.getMainLooper());
  private Paint cRI = new Paint();
  private Runnable cXs;
  protected final ae dVT;
  private Path dyA;
  private PaintFlagsDrawFilter dyz = new PaintFlagsDrawFilter(0, 3);
  protected boolean flp = false;
  protected boolean flq = false;
  private int flr = 0;
  private int fls = 0;
  protected boolean flt;
  protected boolean flu;
  protected float flv = 1.0F;
  private Rect rect = new Rect();
  protected String tag;

  static
  {
    Paint localPaint = new Paint();
    cXp = localPaint;
    localPaint.setAntiAlias(true);
    cXp.setFilterBitmap(true);
  }

  public ac(ae paramae, String paramString)
  {
    super(paramae.nx());
    this.cRI.setStyle(Paint.Style.STROKE);
    this.cRI.setFlags(1);
    this.cRI.setAntiAlias(true);
    this.dyA = new Path();
    this.cXs = new ad(this);
    this.dVT = paramae;
    this.tag = paramString;
    this.dVT.a(this);
  }

  public ac(ae paramae, String paramString, byte paramByte)
  {
    super(paramae.nx());
    this.cRI.setStyle(Paint.Style.STROKE);
    this.cRI.setFlags(1);
    this.cRI.setAntiAlias(true);
    this.dyA = new Path();
    this.cXs = new ad(this);
    this.flp = false;
    this.dVT = paramae;
    this.tag = paramString;
    this.dVT.a(this);
  }

  public final void arq()
  {
    this.flq = true;
  }

  public final void arr()
  {
    this.flt = true;
  }

  public final void ars()
  {
    if (!this.flt);
    do
    {
      return;
      this.flt = false;
    }
    while (!this.flu);
    this.flu = false;
    invalidateSelf();
  }

  public void draw(Canvas paramCanvas)
  {
    Bitmap localBitmap;
    label62: Rect localRect1;
    Rect localRect2;
    if (this.flq)
    {
      localBitmap = this.dVT.i(this.tag, paramCanvas.getWidth(), paramCanvas.getHeight());
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
        break label193;
      localBitmap = this.dVT.nx();
      if (!this.flt)
        break label185;
      this.flu = true;
      localRect1 = getBounds();
      if ((this.flv <= 1.0F) && (!this.flp))
        break label201;
      int i = localBitmap.getHeight() / 15 / 2;
      int j = localBitmap.getWidth() / 15 / 2;
      localRect2 = new Rect(j, i, localBitmap.getWidth() - j, localBitmap.getHeight() - i);
    }
    while (true)
    {
      paramCanvas.drawBitmap(localBitmap, localRect2, localRect1, cXp);
      return;
      if (this.flt)
      {
        localBitmap = this.dVT.aD(this.tag);
        break;
      }
      localBitmap = this.dVT.aC(this.tag);
      break;
      label185: this.flu = false;
      break label62;
      label193: this.flu = false;
      break label62;
      label201: boolean bool = this.flv < 0.0F;
      localRect2 = null;
      if (bool)
        localRect2 = null;
    }
  }

  public void ei(String paramString)
  {
    if ((paramString == null) || (!paramString.equals(this.tag)))
      return;
    aa.f("MicroMsg.SDK.LazyBitmapDrawable", "notifyChanged :%s", new Object[] { paramString });
    cXq.post(this.cXs);
  }

  public void onScrollStateChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.flt = true;
      return;
    }
    ars();
  }

  public final void qE(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    while (paramString.equals(this.tag))
      return;
    this.tag = paramString;
    cXq.post(this.cXs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ac
 * JD-Core Version:    0.6.2
 */