package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.tencent.mm.h;

public class MMSwitchButton extends CheckBox
{
  private float cRD;
  private float cRE;
  private int dC;
  private Paint edo = new Paint();
  private boolean gBE = false;
  private ViewParent gBX;
  private PorterDuffXfermode gBY = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
  private RectF gBZ;
  private Bitmap gCa;
  private Bitmap gCb;
  private Bitmap gCc;
  private Bitmap gCd;
  private Bitmap gCe;
  private Bitmap gCf;
  private float gCg;
  private float gCh;
  private float gCi;
  private float gCj;
  private final float gCk = 15.0F;
  private float gCl;
  private float gCm;
  private float gCn;
  private float gCo;
  private int gCp = ViewConfiguration.getPressedStateDuration() + ViewConfiguration.getTapTimeout();
  private int gCq = 255;
  private boolean gCr = false;
  private boolean gCs = false;
  private dk gCt;
  private CompoundButton.OnCheckedChangeListener gCu;
  private di gCv = new di(this, (byte)0);

  public MMSwitchButton(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMSwitchButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842860);
  }

  public MMSwitchButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.dC = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    Resources localResources = paramContext.getResources();
    this.gCa = BitmapFactory.decodeResource(localResources, h.aku);
    this.gCd = BitmapFactory.decodeResource(localResources, h.akr);
    this.gCc = this.gCd;
    this.gCe = BitmapFactory.decodeResource(localResources, h.aks);
    this.gCf = BitmapFactory.decodeResource(localResources, h.akt);
    this.gCb = this.gCd;
    this.gCn = this.gCc.getWidth();
    this.gCl = this.gCf.getWidth();
    this.gCm = this.gCf.getHeight();
    this.gCj = (this.gCn / 2.0F);
    this.gCi = (this.gCl - this.gCn / 2.0F);
    if (this.gBE);
    for (float f = this.gCj; ; f = this.gCi)
    {
      this.gCh = f;
      this.gCg = ae(this.gCh);
      this.gBZ = new RectF(0.0F, 15.0F, this.gCf.getWidth(), 15.0F + this.gCf.getHeight());
      return;
    }
  }

  private float ae(float paramFloat)
  {
    return paramFloat - this.gCn / 2.0F;
  }

  public boolean isChecked()
  {
    return this.gBE;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.saveLayerAlpha(this.gBZ, this.gCq, 31);
    paramCanvas.drawBitmap(this.gCf, 0.0F, 15.0F, this.edo);
    this.edo.setXfermode(this.gBY);
    paramCanvas.drawBitmap(this.gCa, this.gCg, 15.0F, this.edo);
    this.edo.setXfermode(null);
    paramCanvas.drawBitmap(this.gCe, 0.0F, 15.0F, this.edo);
    paramCanvas.drawBitmap(this.gCb, this.gCg, 15.0F, this.edo);
    paramCanvas.restore();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension((int)this.gCl, (int)(30.0F + this.gCm));
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    float f3 = Math.abs(f1 - this.cRD);
    float f4 = Math.abs(f2 - this.cRE);
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      invalidate();
      return isEnabled();
      this.gBX = getParent();
      if (this.gBX != null)
        this.gBX.requestDisallowInterceptTouchEvent(bool);
      this.cRD = f1;
      this.cRE = f2;
      this.gCb = this.gCc;
      if (this.gBE);
      for (float f6 = this.gCj; ; f6 = this.gCi)
      {
        this.gCo = f6;
        break;
      }
      this.gCh = (this.gCo + paramMotionEvent.getX() - this.cRD);
      if (this.gCh >= this.gCj)
        this.gCh = this.gCj;
      if (this.gCh <= this.gCi)
        this.gCh = this.gCi;
      if (this.gCh > (this.gCj - this.gCi) / 2.0F + this.gCi);
      while (true)
      {
        this.gCs = bool;
        this.gCg = ae(this.gCh);
        break;
        bool = false;
      }
      this.gCb = this.gCd;
      float f5 = (float)(paramMotionEvent.getEventTime() - paramMotionEvent.getDownTime());
      if ((f4 >= this.dC) || (f3 >= this.dC) || (f5 >= this.gCp))
        break;
      if (this.gCt == null)
        this.gCt = new dk(this, (byte)0);
      if (!post(this.gCt))
        performClick();
    }
    di localdi = this.gCv;
    if (!this.gCs);
    while (true)
    {
      localdi.dw(bool);
      break;
      bool = false;
    }
  }

  public boolean performClick()
  {
    this.gCv.dw(this.gBE);
    return true;
  }

  public void setChecked(boolean paramBoolean)
  {
    if (this.gBE == paramBoolean)
      return;
    this.gBE = paramBoolean;
    if (paramBoolean);
    for (float f = this.gCj; ; f = this.gCi)
    {
      this.gCh = f;
      this.gCg = ae(this.gCh);
      invalidate();
      if (this.gCr)
        break;
      this.gCr = true;
      if (this.gCu != null)
        this.gCu.onCheckedChanged(this, this.gBE);
      this.gCr = false;
      return;
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 255; ; i = 128)
    {
      this.gCq = i;
      super.setEnabled(paramBoolean);
      return;
    }
  }

  public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.gCu = paramOnCheckedChangeListener;
  }

  public void toggle()
  {
    if (!this.gBE);
    for (boolean bool = true; ; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMSwitchButton
 * JD-Core Version:    0.6.2
 */