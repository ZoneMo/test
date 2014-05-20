package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.compatible.d.a;
import com.tencent.mm.f;
import com.tencent.mm.h;

public class ScanMaskView extends View
{
  private float edA = 0.0F;
  private float edB = 0.0F;
  private Paint edC;
  private Bitmap edh = null;
  private Bitmap edi = null;
  private Bitmap edj = null;
  private Bitmap edk = null;
  int edl = 0;
  int edm = 0;
  private boolean edn = false;
  private Paint edo;
  private Rect edp = new Rect();
  private Rect edq;
  private PorterDuffXfermode edr;
  private int eds = f.aao;
  private long edt = 0L;
  private long edu;
  private boolean edv = false;
  private Rect edw;
  private final long edx = 200L;
  private float edy = 0.0F;
  private float edz = 0.0F;

  public ScanMaskView(Context paramContext, Rect paramRect)
  {
    super(paramContext);
    this.edq = paramRect;
    getDrawingRect(this.edp);
    this.edo = new Paint();
    this.edh = a.decodeResource(getResources(), h.ahZ);
    this.edi = a.decodeResource(getResources(), h.aia);
    this.edj = a.decodeResource(getResources(), h.aib);
    this.edk = a.decodeResource(getResources(), h.aic);
    this.edl = this.edh.getWidth();
    this.edm = this.edh.getHeight();
    this.edC = new Paint();
    this.edr = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
  }

  public ScanMaskView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public static long aat()
  {
    return 200L;
  }

  public final void a(Rect paramRect)
  {
    if (paramRect == null);
    while ((paramRect.left == this.edq.left) && (paramRect.right == this.edq.right) && (paramRect.top == this.edq.top) && (paramRect.bottom == this.edq.bottom))
      return;
    this.edy = (paramRect.left - this.edq.left);
    this.edz = (paramRect.right - this.edq.right);
    this.edA = (paramRect.top - this.edq.top);
    this.edB = (paramRect.bottom - this.edq.bottom);
    this.edw = new Rect(this.edq.left, this.edq.top, this.edq.right, this.edq.bottom);
    this.edv = true;
  }

  public final void aar()
  {
    this.edn = true;
    if (this.edh != null)
    {
      this.edh.recycle();
      this.edh = null;
    }
    if (this.edi != null)
    {
      this.edi.recycle();
      this.edi = null;
    }
    if (this.edj != null)
    {
      this.edj.recycle();
      this.edj = null;
    }
    if (this.edk != null)
    {
      this.edk.recycle();
      this.edk = null;
    }
  }

  public final Rect aas()
  {
    return this.edq;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if ((this.edq == null) || (this.edn))
      return;
    if (this.edv)
    {
      long l = System.currentTimeMillis();
      if (this.edt == 0L)
        this.edt = l;
      this.edu = (l - this.edt);
      if (this.edu > 200L)
        this.edu = 200L;
      float f = (float)this.edu / 200.0F;
      this.edq.left = (this.edw.left + (int)(f * this.edy));
      this.edq.right = (this.edw.right + (int)(f * this.edz));
      this.edq.top = (this.edw.top + (int)(f * this.edA));
      this.edq.bottom = (this.edw.bottom + (int)(f * this.edB));
      if (this.edu == 200L)
        this.edv = false;
    }
    paramCanvas.drawColor(getResources().getColor(this.eds));
    this.edo.reset();
    paramCanvas.drawRect(this.edp, this.edo);
    this.edo.setXfermode(this.edr);
    this.edo.setAlpha(0);
    paramCanvas.drawRect(this.edq, this.edo);
    this.edo.setXfermode(null);
    this.edo.reset();
    this.edo.setStyle(Paint.Style.STROKE);
    this.edo.setStrokeWidth(1.0F);
    this.edo.setColor(-3355444);
    this.edo.setAntiAlias(true);
    paramCanvas.drawRect(this.edq, this.edo);
    paramCanvas.drawBitmap(this.edh, this.edq.left, this.edq.top, this.edC);
    paramCanvas.drawBitmap(this.edi, this.edq.right - this.edl, this.edq.top, this.edC);
    paramCanvas.drawBitmap(this.edj, this.edq.left, this.edq.bottom - this.edm, this.edC);
    paramCanvas.drawBitmap(this.edk, this.edq.right - this.edl, this.edq.bottom - this.edm, this.edC);
    if (this.edv)
      invalidate();
    super.onDraw(paramCanvas);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ScanMaskView
 * JD-Core Version:    0.6.2
 */