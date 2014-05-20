package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.tencent.mm.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;

public class MultiTouchImageView extends ImageView
{
  private boolean eEN = true;
  private float eed;
  private boolean ekH = false;
  protected Matrix gCV = new Matrix();
  protected Matrix gCW = new Matrix();
  private final Matrix gCX = new Matrix();
  private final float[] gCY = new float[9];
  protected Bitmap gCZ = null;
  int gDa = -1;
  int gDb = -1;
  private float gDc = 0.0F;
  private float gDd = 0.0F;
  private float gDe = 0.0F;
  private int gDf;
  private int gDg;
  private int gDh;
  private int gDi;
  private float gDj = 2.0F;
  private float gDk = 0.75F;
  private float gDl = 3.0F;
  private boolean gDm = false;
  private boolean gDn = false;
  private boolean gDo = false;
  private float gDp;
  private float gDq;
  float gDr = 0.0F;
  protected Handler mHandler = new Handler();

  public MultiTouchImageView(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.gDg = paramInt2;
    this.gDf = paramInt1;
    init();
  }

  public MultiTouchImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 0);
  }

  public MultiTouchImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet);
    this.gDg = paramInt2;
    this.gDf = paramInt1;
    init();
  }

  private void aHF()
  {
    boolean bool1 = true;
    this.gDp = (this.gDh / this.gDf);
    this.gDq = (this.gDi / this.gDg);
    this.gDn = h.T(this.gDf, this.gDg);
    this.gDo = h.S(this.gDf, this.gDg);
    boolean bool2;
    if ((this.gDn) && (this.gDf > this.gDh))
    {
      bool2 = bool1;
      this.gDn = bool2;
      if ((!this.gDo) || (this.gDg <= this.gDi))
        break label166;
    }
    while (true)
    {
      this.gDo = bool1;
      if (((!this.eEN) || (!this.gDn)) && (!this.gDo))
        break label171;
      this.eed = Math.max(this.gDp, this.gDq);
      if (this.eed > 1.0F)
        this.eed = 1.0F;
      return;
      bool2 = false;
      break;
      label166: bool1 = false;
    }
    label171: this.eed = Math.min(this.gDp, this.gDq);
  }

  private Matrix aHJ()
  {
    this.gCX.set(this.gCV);
    this.gCX.postConcat(this.gCW);
    return this.gCX;
  }

  private float aHL()
  {
    float f1 = getScale();
    float f2;
    if (0.7F * this.gDp > f1)
      f2 = this.gDp;
    while (true)
    {
      if (f2 > this.gDd)
        f2 = this.gDd;
      return f2;
      if (0.7F * this.gDq > f1)
        f2 = this.gDq;
      else
        f2 = this.eed * this.gDj;
    }
  }

  private void d(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = (paramFloat1 - getScale()) / 128.0F;
    float f2 = getScale();
    long l = System.currentTimeMillis();
    this.mHandler.post(new dw(this, l, f2, f1, paramFloat2, paramFloat3));
  }

  private void init()
  {
    aa.d("dktest", "init screenWidth:" + this.gDh + " screenHeight :" + this.gDi);
    setScaleType(ImageView.ScaleType.MATRIX);
    setBackgroundColor(getContext().getResources().getColor(f.ZN));
  }

  public final void A(float paramFloat1, float paramFloat2)
  {
    this.gCW.postTranslate(paramFloat1, paramFloat2);
    setImageMatrix(aHJ());
  }

  public final boolean aHA()
  {
    return this.gDn;
  }

  public final boolean aHB()
  {
    return this.gDo;
  }

  public final void aHC()
  {
    if (Float.compare(2.0F, 1.0F) < 0)
    {
      aa.w("MicroMsg.MultiTouchImageView", "max scale limit is less than 1.0, change nothing, return");
      return;
    }
    this.gDl = 2.0F;
  }

  public final void aHD()
  {
    this.gDm = true;
  }

  public final void aHE()
  {
    this.gCW.reset();
    aHF();
    if (((this.eEN) && (this.gDn)) || (this.gDo))
    {
      c(this.eed, 0.0F, 0.0F);
      return;
    }
    c(this.eed, this.gDh / 2.0F, this.gDi / 2.0F);
  }

  public final float aHG()
  {
    return this.eed;
  }

  public final int aHH()
  {
    return this.gDf;
  }

  public final int aHI()
  {
    return this.gDg;
  }

  public final void aHK()
  {
    if ((this.gDm) && (0.0F == this.gDc))
      this.gDc = aHL();
  }

  public final void bk(int paramInt1, int paramInt2)
  {
    this.gDf = paramInt1;
    this.gDg = paramInt2;
  }

  public final void c(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = 1;
    float f1 = getScale();
    float f9;
    label51: int j;
    label97: label104: RectF localRectF;
    float f4;
    float f5;
    if (this.gDm)
    {
      if (0.0F == this.gDc)
      {
        f9 = this.gDl;
        this.gDd = f9;
      }
    }
    else
    {
      if (paramFloat1 <= this.gDd)
        break label492;
      paramFloat1 = this.gDd;
      float f2 = paramFloat1 / f1;
      setImageMatrix(aHJ());
      this.gCW.postScale(f2, f2, paramFloat2, paramFloat3);
      if ((this.eEN) && (this.gDn))
        break label509;
      j = i;
      if (this.gDo)
        break label515;
      if (this.gCZ != null)
      {
        Matrix localMatrix1 = aHJ();
        localRectF = new RectF(0.0F, 0.0F, this.gCZ.getWidth(), this.gCZ.getHeight());
        localMatrix1.mapRect(localRectF);
        float f3 = localRectF.height();
        f4 = localRectF.width();
        if (i == 0)
          break label629;
        if (f3 >= this.gDi)
          break label521;
        f5 = (this.gDi - f3) / 2.0F - localRectF.top;
      }
    }
    while (true)
    {
      label200: float f6;
      if (j != 0)
        if (f4 < this.gDh)
          f6 = (this.gDh - f4) / 2.0F - localRectF.left;
      while (true)
      {
        aa.d("yukitest", "r.left-before:" + localRectF.left + "r.right-before:" + localRectF.right + "r.top-before:" + localRectF.top + "r.bottom-before:" + localRectF.bottom);
        aa.d("dktest", "deltaX: " + f6 + " deltaY:" + f5);
        A(f6, f5);
        Matrix localMatrix2 = aHJ();
        setImageMatrix(localMatrix2);
        localMatrix2.mapRect(localRectF);
        float f7 = localRectF.height();
        float f8 = localRectF.width();
        aa.d("yukitest", "r.left-after:" + localRectF.left + "r.after-after:" + localRectF.right + "r.top-after:" + localRectF.top + "r.bottom-after:" + localRectF.bottom);
        aa.d("dktest", "center  w:" + f8 + " h:" + f7);
        return;
        f9 = this.gDc;
        break;
        label492: if (paramFloat1 >= this.gDe)
          break label51;
        paramFloat1 = this.gDe;
        break label51;
        label509: j = 0;
        break label97;
        label515: i = 0;
        break label104;
        label521: if (localRectF.top > 0.0F)
        {
          f5 = -localRectF.top;
          break label200;
        }
        if (localRectF.bottom >= this.gDi)
          break label629;
        f5 = this.gDi - localRectF.bottom;
        break label200;
        if (localRectF.left > 0.0F)
          f6 = -localRectF.left;
        else if (localRectF.right < this.gDh)
          f6 = this.gDh - localRectF.right;
        else
          f6 = 0.0F;
      }
      label629: f5 = 0.0F;
    }
  }

  public final void dx(boolean paramBoolean)
  {
    this.eEN = paramBoolean;
  }

  public final float getScale()
  {
    this.gCW.getValues(this.gCY);
    aHF();
    this.gDd = this.gDl;
    this.gDe = (this.eed * this.gDk);
    if (this.gDd < 1.0F)
      this.gDd = 1.0F;
    if (this.gDe > 1.0F)
      this.gDe = 1.0F;
    return this.gCY[0];
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if ((paramConfiguration.orientation == 1) || (paramConfiguration.orientation == 2))
      this.ekH = false;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      if (d.Fq())
      {
        new c();
        paramKeyEvent.startTracking();
      }
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (d.Fq())
        new c();
      for (boolean bool1 = paramKeyEvent.isTracking(); bool1; bool1 = false)
      {
        boolean bool2 = d.Fq();
        boolean bool3 = false;
        if (bool2)
        {
          new c();
          bool3 = paramKeyEvent.isCanceled();
        }
        if ((bool3) || (getScale() <= 1.0F))
          break;
        c(1.0F, this.gDh / 2.0F, this.gDi / 2.0F);
        return true;
      }
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    aa.i("MicroMsg.MultiTouchImageView", "on measure");
    super.onMeasure(paramInt1, paramInt2);
    this.gDh = View.MeasureSpec.getSize(paramInt1);
    this.gDi = View.MeasureSpec.getSize(paramInt2);
    aa.v("MicroMsg.MultiTouchImageView", "MultiTouchImageView width:" + this.gDh + " height:" + this.gDi);
    if (!this.ekH)
    {
      this.ekH = true;
      init();
    }
    aHE();
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    this.gCZ = paramBitmap;
    this.ekH = false;
  }

  public final void y(float paramFloat1, float paramFloat2)
  {
    aHF();
    d(this.eed, paramFloat1, paramFloat2);
  }

  public final void z(float paramFloat1, float paramFloat2)
  {
    this.gDc = aHL();
    d(this.gDc, paramFloat1, paramFloat2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MultiTouchImageView
 * JD-Core Version:    0.6.2
 */