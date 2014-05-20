package com.tencent.mm.ui.tools;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Gallery;
import android.widget.SpinnerAdapter;
import com.tencent.mm.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.MultiTouchImageView;
import java.lang.ref.WeakReference;

public class MMGestureGallery extends Gallery
{
  private int cSn;
  private int cSo;
  private int count = 0;
  private Handler handler = new Handler(Looper.getMainLooper());
  private dd hkA;
  private dd hkB;
  private dd hkC;
  private boolean hkD = false;
  private boolean hkE = false;
  private boolean hkF = false;
  private boolean hkG = false;
  private boolean hkH = false;
  private float hkI;
  private float hkJ;
  private long hkK = 0L;
  private long hkL = 0L;
  private float hkM = 0.0F;
  private float hkN = 0.0F;
  private long hkO = 0L;
  private cu hkP;
  private cy hkQ;
  private cv hkR;
  private cx hkS;
  private boolean hkT = true;
  private boolean hkU = false;
  private final int hkV = 60;
  private final int hkW = 500;
  private GestureDetector hky;
  private MultiTouchImageView hkz;

  public MMGestureGallery(Context paramContext)
  {
    super(paramContext);
    setStaticTransformationsEnabled(true);
  }

  public MMGestureGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setStaticTransformationsEnabled(true);
    this.hky = new GestureDetector(paramContext, new cw(this, (byte)0));
    this.hkA = new dd(new WeakReference(this));
    this.hkB = new dd(new WeakReference(this));
    this.hkC = new dd(new WeakReference(this));
    setOnTouchListener(new ct(this));
  }

  public MMGestureGallery(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setStaticTransformationsEnabled(true);
  }

  private void a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat)
  {
    float f1 = paramMotionEvent1.getX() - paramMotionEvent2.getX();
    float f2 = paramMotionEvent1.getY() - paramMotionEvent2.getY();
    boolean bool = a(paramMotionEvent1, paramMotionEvent2);
    float f3 = Math.abs(f1);
    float f4 = Math.abs(f2);
    if (Math.abs(paramFloat) <= 500.0F);
    while ((f3 < 60.0F) || (f3 < f4))
      return;
    if (bool)
    {
      onKeyDown(21, null);
      return;
    }
    onKeyDown(22, null);
  }

  private boolean a(float paramFloat1, float paramFloat2, View paramView, float paramFloat3)
  {
    int i;
    if ((this.hkF) || (this.hkE))
    {
      i = 0;
      if (i == 0)
        break label130;
    }
    while (true)
    {
      return true;
      if (getPositionForView(paramView) == -1 + getAdapter().getCount())
      {
        if (this.hkH)
        {
          if (paramFloat3 > 0.0F)
          {
            this.hkz.A(-paramFloat3, 0.0F);
            i = 1;
            break;
          }
          i = 0;
          break;
        }
        if (paramFloat3 > 0.0F)
        {
          if (paramFloat2 < this.cSn)
            this.hkH = true;
          this.hkz.A(-paramFloat3, 0.0F);
          i = 1;
          break;
        }
      }
      this.hkH = false;
      i = 0;
      break;
      label130: int j;
      if ((this.hkF) || (this.hkE))
        j = 0;
      while (j == 0)
      {
        return false;
        if (getPositionForView(paramView) == 0)
        {
          if (this.hkG)
          {
            if (paramFloat3 < 0.0F)
            {
              this.hkz.A(-paramFloat3, 0.0F);
              j = 1;
            }
            else
            {
              j = 0;
            }
          }
          else if (paramFloat3 < 0.0F)
          {
            if (paramFloat1 > 0.0F)
              this.hkG = true;
            this.hkz.A(-paramFloat3, 0.0F);
            j = 1;
          }
        }
        else
        {
          this.hkG = false;
          j = 0;
        }
      }
    }
  }

  private static boolean a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2)
  {
    return paramMotionEvent1.getX() - paramMotionEvent2.getX() < 0.0F;
  }

  private boolean a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (this.hkE)
      return true;
    this.hkF = true;
    if (this.hkS != null)
      this.hkS.aih();
    return super.onScroll(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
  }

  private void aNs()
  {
    this.hkA.removeMessages(1);
  }

  private boolean e(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if ((this.hkF) || (this.hkG) || (this.hkH));
    do
    {
      do
      {
        return true;
        this.hkE = true;
        if (paramFloat1 >= 0.0F)
          break;
      }
      while ((paramFloat2 >= 0.2D * this.cSo) && (paramFloat3 >= this.cSo));
      this.hkz.A(0.0F, -paramFloat1);
      return true;
    }
    while ((paramFloat2 <= 0.0F) && (paramFloat3 <= 0.8F * this.cSo));
    this.hkz.A(0.0F, -paramFloat1);
    return true;
  }

  public final void a(cv paramcv)
  {
    this.hkR = paramcv;
  }

  public final void a(cx paramcx)
  {
    this.hkS = paramcx;
  }

  public final void a(cy paramcy)
  {
    this.hkQ = paramcy;
  }

  public final void aNt()
  {
    this.hkT = false;
  }

  public final void er(boolean paramBoolean)
  {
    this.hkU = paramBoolean;
  }

  public boolean isFocused()
  {
    return true;
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    View localView1 = getSelectedView();
    if ((localView1 instanceof ViewGroup))
    {
      View localView2 = localView1.findViewById(i.aws);
      if ((localView2 == null) || (localView2.getVisibility() == 8))
      {
        a(paramMotionEvent1, paramMotionEvent2, paramFloat1);
        return false;
      }
      localView1 = localView2.findViewById(i.awm);
      if (localView1 == null)
      {
        a(paramMotionEvent1, paramMotionEvent2, paramFloat1);
        return false;
      }
    }
    if ((localView1 instanceof MultiTouchImageView))
    {
      MultiTouchImageView localMultiTouchImageView = (MultiTouchImageView)localView1;
      float f1 = localMultiTouchImageView.getScale() * localMultiTouchImageView.aHH();
      if ((localMultiTouchImageView.aHA()) || (localMultiTouchImageView.aHB()) || ((int)f1 > this.cSn))
      {
        float[] arrayOfFloat = new float[9];
        localMultiTouchImageView.getImageMatrix().getValues(arrayOfFloat);
        float f2 = arrayOfFloat[2];
        float f3 = f1 + f2;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = Float.valueOf(f2);
        arrayOfObject[1] = Float.valueOf(f3);
        arrayOfObject[2] = Boolean.valueOf(a(paramMotionEvent1, paramMotionEvent2));
        aa.e("MicroMsg.MMGestureGallery", "jacks left: %f,right: %f isGestureRight=> %B", arrayOfObject);
        if (((!a(paramMotionEvent1, paramMotionEvent2)) || (f2 < 0.0F)) && ((a(paramMotionEvent1, paramMotionEvent2)) || (f3 > this.cSn)))
          return true;
      }
    }
    if (this.hkU)
      return true;
    if (this.hkD)
      return true;
    a(paramMotionEvent1, paramMotionEvent2, paramFloat1);
    return true;
  }

  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    if (paramBoolean)
      super.onFocusChanged(paramBoolean, paramInt, paramRect);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    this.cSn = View.MeasureSpec.getSize(paramInt1);
    this.cSo = View.MeasureSpec.getSize(paramInt2);
    aa.v("MicroMsg.MMGestureGallery", "MMGestureGallery width:" + this.cSn + " height:" + this.cSo);
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (this.hkD)
      return true;
    View localView1 = getSelectedView();
    if ((localView1 instanceof ViewGroup))
    {
      View localView2 = localView1.findViewById(i.aws);
      if ((localView2 == null) || (localView2.getVisibility() == 8))
        return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
      localView1 = localView2.findViewById(i.awm);
      if (localView1 == null)
        return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
    }
    if ((localView1 instanceof MultiTouchImageView))
    {
      this.hkz = ((MultiTouchImageView)localView1);
      float[] arrayOfFloat = new float[9];
      this.hkz.getImageMatrix().getValues(arrayOfFloat);
      float f1 = this.hkz.getScale() * this.hkz.aHH();
      float f2 = this.hkz.getScale() * this.hkz.aHI();
      float f3 = arrayOfFloat[2];
      float f4 = f3 + f1;
      float f5 = arrayOfFloat[5];
      float f6 = f5 + f2;
      Rect localRect = new Rect();
      this.hkz.getGlobalVisibleRect(localRect);
      if (((int)f1 <= this.cSn) && ((int)f2 <= this.cSo))
      {
        if (a(f3, f4, localView1, paramFloat1))
          return true;
        if (paramFloat1 > 0.0F)
        {
          if (f4 <= this.cSn)
            return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
        }
        else if (f3 >= 0.0F)
          return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
        if (!this.hkF)
          this.hkz.A(-paramFloat1, 0.0F);
        return true;
      }
      if (((int)f1 <= this.cSn) && ((int)f2 > this.cSo))
      {
        if (Math.abs(paramFloat2) > Math.abs(paramFloat1))
          return e(paramFloat2, f5, f6);
        if (a(f3, f4, localView1, paramFloat1))
          return true;
        if (paramFloat1 > 0.0F)
        {
          if (f4 <= this.cSn)
            return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
        }
        else if (f3 >= 0.0F)
          return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
        if (!this.hkF)
          this.hkz.A(-paramFloat1, 0.0F);
        return true;
      }
      if (((int)f1 > this.cSn) && ((int)f2 <= this.cSo))
      {
        if (a(f3, f4, localView1, paramFloat1))
          return true;
        if (paramFloat1 > 0.0F)
        {
          if (f4 <= this.cSn)
            return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
        }
        else if (f3 >= 0.0F)
          return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
        if (!this.hkF)
          this.hkz.A(-paramFloat1, 0.0F);
        return true;
      }
      if (Math.abs(paramFloat2) > Math.abs(paramFloat1))
        return e(paramFloat2, f5, f6);
      if (a(f3, f4, localView1, paramFloat1))
        return true;
      if (paramFloat1 > 0.0F)
      {
        if (f4 <= this.cSn)
          return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
      }
      else if (f3 >= 0.0F)
        return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, 0.0F);
      if (!this.hkF)
        this.hkz.A(-paramFloat1, -paramFloat2);
      return true;
    }
    return a(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.hky.onTouchEvent(paramMotionEvent);
    aa.d("dktest", "onTouchEvent event.getAction()" + paramMotionEvent.getAction());
    switch (paramMotionEvent.getAction())
    {
    default:
    case 1:
    }
    while (true)
    {
      return super.onTouchEvent(paramMotionEvent);
      View localView = getSelectedView();
      if ((localView instanceof MultiTouchImageView))
      {
        this.hkz = ((MultiTouchImageView)localView);
        float f1 = this.hkz.getScale() * this.hkz.aHH();
        float f2 = this.hkz.getScale() * this.hkz.aHI();
        if (((int)f1 <= this.cSn) && ((int)f2 <= this.cSo))
        {
          aa.i("dktest", "onTouchEvent width:" + f1 + "height:" + f2);
        }
        else
        {
          float[] arrayOfFloat = new float[9];
          this.hkz.getImageMatrix().getValues(arrayOfFloat);
          float f3 = arrayOfFloat[5];
          float f4 = f3 + f2;
          aa.d("dktest", "onTouchEvent top:" + f3 + " height:" + f2 + " bottom:" + f4);
        }
      }
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (paramBoolean)
      super.onWindowFocusChanged(paramBoolean);
  }

  public final void release()
  {
    this.hkB.release();
    this.hkC.release();
    this.hkA.release();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.MMGestureGallery
 * JD-Core Version:    0.6.2
 */