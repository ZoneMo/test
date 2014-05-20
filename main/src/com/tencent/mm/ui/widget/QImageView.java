package com.tencent.mm.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.RemoteViews.RemoteView;

@RemoteViews.RemoteView
public class QImageView extends View
{
  private static final d[] hvp;
  private static final Matrix.ScaleToFit[] hvq = arrayOfScaleToFit;
  private Uri Ky;
  private int ehI = 0;
  private int gCq = 255;
  private int huY = 0;
  private d huZ;
  private boolean hva = false;
  private boolean hvb = false;
  private ColorFilter hvc;
  private int hvd = 256;
  private boolean hve = false;
  private Drawable hvf = null;
  private int[] hvg = null;
  private boolean hvh = false;
  private int hvi;
  private int hvj;
  private Matrix hvk = null;
  private final RectF hvl = new RectF();
  private final RectF hvm = new RectF();
  private boolean hvn;
  private boolean hvo = false;
  private Context mContext;
  private Matrix mMatrix;
  private int oP = 2147483647;
  private int oR = 2147483647;

  static
  {
    d[] arrayOfd = new d[8];
    arrayOfd[0] = d.hvr;
    arrayOfd[1] = d.hvs;
    arrayOfd[2] = d.hvt;
    arrayOfd[3] = d.hvu;
    arrayOfd[4] = d.hvv;
    arrayOfd[5] = d.hvw;
    arrayOfd[6] = d.hvx;
    arrayOfd[7] = d.hvy;
    hvp = arrayOfd;
    Matrix.ScaleToFit[] arrayOfScaleToFit = new Matrix.ScaleToFit[4];
    arrayOfScaleToFit[0] = Matrix.ScaleToFit.FILL;
    arrayOfScaleToFit[1] = Matrix.ScaleToFit.START;
    arrayOfScaleToFit[2] = Matrix.ScaleToFit.CENTER;
    arrayOfScaleToFit[3] = Matrix.ScaleToFit.END;
  }

  public QImageView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    aPy();
  }

  public QImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    this.mContext = paramContext;
    aPy();
  }

  public QImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    aPy();
    this.hvo = false;
    this.hvb = false;
    this.oP = 2147483647;
    this.oR = 2147483647;
    this.hvn = false;
  }

  private void aPA()
  {
    if (this.hvf != null);
    Resources localResources;
    do
    {
      return;
      localResources = getResources();
    }
    while (localResources == null);
    if (this.huY != 0);
    Uri localUri;
    do
    {
      try
      {
        Drawable localDrawable2 = localResources.getDrawable(this.huY);
        localDrawable1 = localDrawable2;
        i(localDrawable1);
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          new StringBuilder("Unable to find resource: ").append(this.huY).toString();
          this.Ky = null;
          localDrawable1 = null;
        }
      }
      localUri = this.Ky;
      Drawable localDrawable1 = null;
    }
    while (localUri != null);
  }

  private void aPB()
  {
    float f1 = 0.0F;
    if ((this.hvf == null) || (!this.hva))
      return;
    int i = this.hvi;
    int j = this.hvj;
    int k = getWidth() - getPaddingLeft() - getPaddingRight();
    int m = getHeight() - getPaddingTop() - getPaddingBottom();
    if (((i < 0) || (k == i)) && ((j < 0) || (m == j)));
    for (int n = 1; (i <= 0) || (j <= 0) || (d.hvs == this.huZ); n = 0)
    {
      this.hvf.setBounds(0, 0, k, m);
      this.hvk = null;
      return;
    }
    this.hvf.setBounds(0, 0, i, j);
    if (d.hvr == this.huZ)
    {
      if (this.mMatrix.isIdentity())
      {
        this.hvk = null;
        return;
      }
      this.hvk = this.mMatrix;
      return;
    }
    if (n != 0)
    {
      this.hvk = null;
      return;
    }
    if (d.hvw == this.huZ)
    {
      this.hvk = this.mMatrix;
      this.hvk.setTranslate((int)(0.5F + 0.5F * (k - i)), (int)(0.5F + 0.5F * (m - j)));
      return;
    }
    if (d.hvx == this.huZ)
    {
      this.hvk = this.mMatrix;
      float f5;
      if (i * m > k * j)
        f5 = m / j;
      for (float f6 = 0.5F * (k - f5 * i); ; f6 = 0.0F)
      {
        this.hvk.setScale(f5, f5);
        this.hvk.postTranslate((int)(f6 + 0.5F), (int)(f1 + 0.5F));
        return;
        f5 = k / i;
        f1 = 0.5F * (m - f5 * j);
      }
    }
    if (d.hvy == this.huZ)
    {
      this.hvk = this.mMatrix;
      if ((i <= k) && (j <= m));
      for (float f2 = 1.0F; ; f2 = Math.min(k / i, m / j))
      {
        float f3 = (int)(0.5F + 0.5F * (k - f2 * i));
        float f4 = (int)(0.5F + 0.5F * (m - f2 * j));
        this.hvk.setScale(f2, f2);
        this.hvk.postTranslate(f3, f4);
        return;
      }
    }
    this.hvl.set(0.0F, 0.0F, i, j);
    this.hvm.set(0.0F, 0.0F, k, m);
    this.hvk = this.mMatrix;
    Matrix localMatrix = this.hvk;
    RectF localRectF1 = this.hvl;
    RectF localRectF2 = this.hvm;
    d locald = this.huZ;
    localMatrix.setRectToRect(localRectF1, localRectF2, hvq[(-1 + locald.hvz)]);
  }

  private void aPC()
  {
    if ((this.hvf != null) && (this.hve))
    {
      this.hvf = this.hvf.mutate();
      this.hvf.setColorFilter(this.hvc);
      this.hvf.setAlpha(this.gCq * this.hvd >> 8);
    }
  }

  private void aPy()
  {
    this.mMatrix = new Matrix();
    this.huZ = d.hvu;
  }

  private void i(Drawable paramDrawable)
  {
    if (this.hvf != null)
    {
      this.hvf.setCallback(null);
      unscheduleDrawable(this.hvf);
    }
    this.hvf = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if (paramDrawable.isStateful())
        paramDrawable.setState(getDrawableState());
      paramDrawable.setLevel(this.ehI);
      this.hvi = paramDrawable.getIntrinsicWidth();
      this.hvj = paramDrawable.getIntrinsicHeight();
      aPC();
      aPB();
    }
  }

  private static int u(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = View.MeasureSpec.getMode(paramInt3);
    int j = View.MeasureSpec.getSize(paramInt3);
    switch (i)
    {
    default:
      return paramInt1;
    case 0:
      return Math.min(paramInt1, paramInt2);
    case -2147483648:
      return Math.min(Math.min(paramInt1, j), paramInt2);
    case 1073741824:
    }
    return j;
  }

  public final void a(d paramd)
  {
    if (paramd == null)
      throw new NullPointerException();
    if (this.huZ != paramd)
    {
      this.huZ = paramd;
      if (this.huZ != d.hvw)
        break label51;
    }
    label51: for (boolean bool = true; ; bool = false)
    {
      setWillNotCacheDrawing(bool);
      requestLayout();
      invalidate();
      return;
    }
  }

  public final void aPz()
  {
    setImageDrawable(new BitmapDrawable(this.mContext.getResources(), null));
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.hvf;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  public int getBaseline()
  {
    if (this.hvo)
      return getMeasuredHeight();
    return -1;
  }

  public final Drawable getDrawable()
  {
    return this.hvf;
  }

  public final Matrix getImageMatrix()
  {
    return this.mMatrix;
  }

  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == this.hvf)
    {
      invalidate();
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }

  public int[] onCreateDrawableState(int paramInt)
  {
    if (this.hvg == null)
      return super.onCreateDrawableState(paramInt);
    if (!this.hvh)
      return this.hvg;
    return mergeDrawableStates(super.onCreateDrawableState(paramInt + this.hvg.length), this.hvg);
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    super.onDraw(paramCanvas);
    if (this.hvf == null);
    while ((this.hvi == 0) || (this.hvj == 0))
      return;
    if ((this.hvk == null) && (getPaddingTop() == 0) && (getPaddingLeft() == 0))
    {
      this.hvf.draw(paramCanvas);
      return;
    }
    int i = paramCanvas.getSaveCount();
    paramCanvas.save();
    if (this.hvn)
    {
      int j = getScrollX();
      int k = getScrollY();
      paramCanvas.clipRect(j + getPaddingLeft(), k + getPaddingTop(), j + getRight() - getLeft() - getPaddingRight(), k + getBottom() - getTop() - getPaddingBottom());
    }
    paramCanvas.translate(getPaddingLeft(), getPaddingTop());
    if (this.hvk != null)
      paramCanvas.concat(this.hvk);
    this.hvf.draw(paramCanvas);
    paramCanvas.restoreToCount(i);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.hva = true;
    aPB();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    aPA();
    int i = 0;
    int j;
    int m;
    int n;
    float f1;
    if (this.hvf == null)
    {
      this.hvi = -1;
      this.hvj = -1;
      j = 0;
      m = 0;
      n = 0;
      f1 = 0.0F;
    }
    while (true)
    {
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getPaddingTop();
      int i4 = getPaddingBottom();
      int i5;
      int i6;
      int i9;
      if ((n != 0) || (i != 0))
      {
        i5 = u(i2 + (j + i1), this.oP, paramInt1);
        i6 = u(i4 + (m + i3), this.oR, paramInt2);
        if ((f1 == 0.0F) || (Math.abs((i5 - i1 - i2) / (i6 - i3 - i4) - f1) <= 1.0E-07D))
          break label402;
        if (n == 0)
          break label413;
        int i10 = i2 + (i1 + (int)(f1 * (i6 - i3 - i4)));
        if (i10 > i5)
          break label413;
        i9 = 1;
        i5 = i10;
      }
      int k;
      while (true)
      {
        int i7;
        int i8;
        if ((i9 == 0) && (i != 0))
        {
          i7 = i4 + (i3 + (int)((i5 - i1 - i2) / f1));
          if (i7 <= i6)
            i8 = i5;
        }
        while (true)
        {
          setMeasuredDimension(i8, i7);
          return;
          j = this.hvi;
          k = this.hvj;
          if (j <= 0)
            j = 1;
          if (k <= 0)
            k = 1;
          if (!this.hvb)
            break label419;
          int i15 = View.MeasureSpec.getMode(paramInt1);
          int i16 = View.MeasureSpec.getMode(paramInt2);
          int i17;
          if (i15 != 1073741824)
          {
            i17 = 1;
            label292: if (i16 == 1073741824)
              break label336;
          }
          label336: for (i = 1; ; i = 0)
          {
            float f2 = j / k;
            int i18 = i17;
            f1 = f2;
            m = k;
            n = i18;
            break;
            i17 = 0;
            break label292;
          }
          int i11 = j + (i1 + i2);
          int i12 = m + (i3 + i4);
          int i13 = Math.max(i11, getSuggestedMinimumWidth());
          int i14 = Math.max(i12, getSuggestedMinimumHeight());
          i8 = resolveSize(i13, paramInt1);
          i7 = resolveSize(i14, paramInt2);
          continue;
          label402: i7 = i6;
          i8 = i5;
        }
        label413: i9 = 0;
      }
      label419: m = k;
      n = 0;
      i = 0;
      f1 = 0.0F;
    }
  }

  protected boolean onSetAlpha(int paramInt)
  {
    if (getBackground() == null)
    {
      int i = paramInt + (paramInt >> 7);
      if (this.hvd != i)
      {
        this.hvd = i;
        this.hve = true;
        aPC();
      }
      return true;
    }
    return false;
  }

  public final void setAlpha(int paramInt)
  {
    int i = paramInt & 0xFF;
    if (this.gCq != i)
    {
      this.gCq = i;
      this.hve = true;
      aPC();
      invalidate();
    }
  }

  public final void setImageDrawable(Drawable paramDrawable)
  {
    if (this.hvf != paramDrawable)
    {
      this.huY = 0;
      this.Ky = null;
      i(paramDrawable);
      invalidate();
    }
  }

  public final void setImageResource(int paramInt)
  {
    if ((this.Ky != null) || (this.huY != paramInt))
    {
      i(null);
      this.huY = paramInt;
      this.Ky = null;
      aPA();
      invalidate();
    }
  }

  public void setSelected(boolean paramBoolean)
  {
    super.setSelected(paramBoolean);
    Drawable localDrawable = this.hvf;
    if (localDrawable != null)
    {
      int i = localDrawable.getIntrinsicWidth();
      if (i < 0)
        i = this.hvi;
      int j = localDrawable.getIntrinsicHeight();
      if (j < 0)
        j = this.hvj;
      if ((i != this.hvi) || (j != this.hvj))
      {
        this.hvi = i;
        this.hvj = j;
        requestLayout();
      }
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (this.hvf == paramDrawable) || (super.verifyDrawable(paramDrawable));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.widget.QImageView
 * JD-Core Version:    0.6.2
 */