package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;

public final class ProgressBarICS extends View
{
  private static final int[] oO = { 16843062, 16843063, 16843064, 16843065, 16843066, 16843067, 16843068, 16843069, 16843070, 16843071, 16843039, 16843072, 16843040, 16843073 };
  int jg = 24;
  private Interpolator mInterpolator;
  int oP = 48;
  int oQ = 24;
  int oR = 48;
  private int oS = 0;
  private int oT = 0;
  private int oU = 100;
  private int oV = 1;
  private int oW = 4000;
  private boolean oX = false;
  private boolean oY = false;
  private Transformation oZ;
  private AlphaAnimation pa;
  private Drawable pb;
  private Drawable pc;
  private Drawable pd;
  Bitmap pe;
  private boolean pf;
  private ak pg;
  private long ph = Thread.currentThread().getId();
  private boolean pi;
  private long pj;
  private boolean pk;

  public ProgressBarICS(Context paramContext, int paramInt)
  {
    super(paramContext, null, 0);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(null, oO, 0, paramInt);
    this.pf = true;
    setMax(localTypedArray.getInt(0, this.oU));
    setProgress(localTypedArray.getInt(1, this.oS));
    setSecondaryProgress(localTypedArray.getInt(2, this.oT));
    boolean bool1 = localTypedArray.getBoolean(3, this.oX);
    this.oY = localTypedArray.getBoolean(4, this.oY);
    Drawable localDrawable1 = localTypedArray.getDrawable(5);
    if (localDrawable1 != null)
    {
      Drawable localDrawable4 = c(localDrawable1);
      if (localDrawable4 != null)
        localDrawable4.setCallback(this);
      this.pb = localDrawable4;
      if (this.oX)
      {
        this.pd = localDrawable4;
        postInvalidate();
      }
    }
    Drawable localDrawable2 = localTypedArray.getDrawable(6);
    Drawable localDrawable3;
    if (localDrawable2 != null)
    {
      localDrawable3 = a(localDrawable2, false);
      if ((this.pc == null) || (localDrawable3 == this.pc))
        break label505;
      this.pc.setCallback(null);
    }
    label505: for (int j = 1; ; j = 0)
    {
      if (localDrawable3 != null)
      {
        localDrawable3.setCallback(this);
        int k = localDrawable3.getMinimumHeight();
        if (this.oR < k)
        {
          this.oR = k;
          requestLayout();
        }
      }
      this.pc = localDrawable3;
      if (!this.oX)
      {
        this.pd = localDrawable3;
        postInvalidate();
      }
      if (j != 0)
      {
        j(getWidth(), getHeight());
        jdMethod_do();
        h(16908301, this.oS);
        h(16908303, this.oT);
      }
      this.oW = localTypedArray.getInt(7, this.oW);
      this.oV = localTypedArray.getInt(8, this.oV);
      this.jg = localTypedArray.getDimensionPixelSize(9, this.jg);
      this.oP = localTypedArray.getDimensionPixelSize(10, this.oP);
      this.oQ = localTypedArray.getDimensionPixelSize(11, this.oQ);
      this.oR = localTypedArray.getDimensionPixelSize(12, this.oR);
      int i = localTypedArray.getResourceId(13, 17432587);
      if (i > 0)
        this.mInterpolator = AnimationUtils.loadInterpolator(paramContext, i);
      localTypedArray.recycle();
      this.pf = false;
      boolean bool2;
      if (!this.oY)
      {
        bool2 = false;
        if (!bool1);
      }
      else
      {
        bool2 = true;
      }
      setIndeterminate(bool2);
      return;
    }
  }

  private void M(int paramInt)
  {
    while (true)
    {
      try
      {
        boolean bool = this.oX;
        if (bool)
          return;
        if (paramInt < 0)
        {
          i = 0;
          if (i > this.oU)
            i = this.oU;
          if (i == this.oS)
            continue;
          this.oS = i;
          i(16908301, this.oS);
          continue;
        }
      }
      finally
      {
      }
      int i = paramInt;
    }
  }

  private Drawable a(Drawable paramDrawable, boolean paramBoolean)
  {
    int i = 0;
    if ((paramDrawable instanceof LayerDrawable))
    {
      localLayerDrawable1 = (LayerDrawable)paramDrawable;
      j = localLayerDrawable1.getNumberOfLayers();
      arrayOfDrawable = new Drawable[j];
      k = 0;
      if (k < j)
      {
        m = localLayerDrawable1.getId(k);
        localDrawable = localLayerDrawable1.getDrawable(k);
        if ((m == 16908301) || (m == 16908303));
        for (bool = true; ; bool = false)
        {
          arrayOfDrawable[k] = a(localDrawable, bool);
          k++;
          break;
        }
      }
      localLayerDrawable2 = new LayerDrawable(arrayOfDrawable);
      while (i < j)
      {
        localLayerDrawable2.setId(i, localLayerDrawable1.getId(i));
        i++;
      }
      paramDrawable = localLayerDrawable2;
    }
    while (!(paramDrawable instanceof BitmapDrawable))
    {
      LayerDrawable localLayerDrawable1;
      int j;
      Drawable[] arrayOfDrawable;
      int k;
      int m;
      Drawable localDrawable;
      boolean bool;
      LayerDrawable localLayerDrawable2;
      return paramDrawable;
    }
    Bitmap localBitmap = ((BitmapDrawable)paramDrawable).getBitmap();
    if (this.pe == null)
      this.pe = localBitmap;
    ShapeDrawable localShapeDrawable = new ShapeDrawable(new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null));
    BitmapShader localBitmapShader = new BitmapShader(localBitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
    localShapeDrawable.getPaint().setShader(localBitmapShader);
    if (paramBoolean)
      return new ClipDrawable(localShapeDrawable, 3, 1);
    return localShapeDrawable;
  }

  private Drawable c(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof AnimationDrawable))
    {
      AnimationDrawable localAnimationDrawable1 = (AnimationDrawable)paramDrawable;
      int i = localAnimationDrawable1.getNumberOfFrames();
      AnimationDrawable localAnimationDrawable2 = new AnimationDrawable();
      localAnimationDrawable2.setOneShot(localAnimationDrawable1.isOneShot());
      for (int j = 0; j < i; j++)
      {
        Drawable localDrawable = a(localAnimationDrawable1.getFrame(j), true);
        localDrawable.setLevel(10000);
        localAnimationDrawable2.addFrame(localDrawable, localAnimationDrawable1.getDuration(j));
      }
      localAnimationDrawable2.setLevel(10000);
      paramDrawable = localAnimationDrawable2;
    }
    return paramDrawable;
  }

  private void dm()
  {
    if (getVisibility() != 0)
      return;
    if ((this.pb instanceof Animatable))
    {
      this.pi = true;
      this.pa = null;
    }
    while (true)
    {
      postInvalidate();
      return;
      if (this.mInterpolator == null)
        this.mInterpolator = new LinearInterpolator();
      this.oZ = new Transformation();
      this.pa = new AlphaAnimation(0.0F, 1.0F);
      this.pa.setRepeatMode(this.oV);
      this.pa.setRepeatCount(-1);
      this.pa.setDuration(this.oW);
      this.pa.setInterpolator(this.mInterpolator);
      this.pa.setStartTime(-1L);
    }
  }

  private void dn()
  {
    this.pa = null;
    this.oZ = null;
    if ((this.pb instanceof Animatable))
    {
      ((Animatable)this.pb).stop();
      this.pi = false;
    }
    postInvalidate();
  }

  private void jdMethod_do()
  {
    int[] arrayOfInt = getDrawableState();
    if ((this.pc != null) && (this.pc.isStateful()))
      this.pc.setState(arrayOfInt);
    if ((this.pb != null) && (this.pb.isStateful()))
      this.pb.setState(arrayOfInt);
  }

  private void h(int paramInt1, int paramInt2)
  {
    while (true)
    {
      float f;
      Object localObject2;
      Drawable localDrawable;
      try
      {
        if (this.oU > 0)
        {
          f = paramInt2 / this.oU;
          localObject2 = this.pd;
          if (localObject2 != null)
          {
            boolean bool = localObject2 instanceof LayerDrawable;
            localDrawable = null;
            if (!bool)
              break label88;
            localDrawable = ((LayerDrawable)localObject2).findDrawableByLayerId(paramInt1);
            break label88;
            ((Drawable)localObject2).setLevel(i);
          }
        }
        else
        {
          f = 0.0F;
          continue;
        }
        invalidate();
        continue;
      }
      finally
      {
      }
      label88: int i = (int)(f * 10000.0F);
      if (localDrawable != null)
        localObject2 = localDrawable;
    }
  }

  private void i(int paramInt1, int paramInt2)
  {
    while (true)
    {
      try
      {
        if (this.ph == Thread.currentThread().getId())
        {
          h(paramInt1, paramInt2);
          return;
        }
        if (this.pg != null)
        {
          localak = this.pg;
          this.pg = null;
          localak.k(paramInt1, paramInt2);
          post(localak);
          continue;
        }
      }
      finally
      {
      }
      ak localak = new ak(this, paramInt1, paramInt2);
    }
  }

  private void j(int paramInt1, int paramInt2)
  {
    int i = paramInt1 - getPaddingRight() - getPaddingLeft();
    int j = paramInt2 - getPaddingBottom() - getPaddingTop();
    float f1;
    int n;
    int k;
    int m;
    int i1;
    if (this.pb != null)
      if ((this.oY) && (!(this.pb instanceof AnimationDrawable)))
      {
        int i2 = this.pb.getIntrinsicWidth();
        int i3 = this.pb.getIntrinsicHeight();
        f1 = i2 / i3;
        float f2 = paramInt1 / paramInt2;
        if (f1 != f2)
          if (f2 > f1)
          {
            int i7 = (int)(f1 * paramInt2);
            n = (paramInt1 - i7) / 2;
            k = i7 + n;
            m = j;
            i1 = 0;
            this.pb.setBounds(n, i1, k, m);
          }
      }
    while (true)
    {
      if (this.pc != null)
        this.pc.setBounds(0, 0, k, m);
      return;
      int i4 = (int)(paramInt1 * (1.0F / f1));
      int i5 = (paramInt2 - i4) / 2;
      int i6 = i4 + i5;
      k = i;
      m = i6;
      i1 = i5;
      n = 0;
      break;
      k = i;
      m = j;
      n = 0;
      i1 = 0;
      break;
      k = i;
      m = j;
    }
  }

  private void setIndeterminate(boolean paramBoolean)
  {
    try
    {
      if (((!this.oY) || (!this.oX)) && (paramBoolean != this.oX))
      {
        this.oX = paramBoolean;
        if (!paramBoolean)
          break label48;
        this.pd = this.pb;
        dm();
      }
      while (true)
      {
        return;
        label48: this.pd = this.pc;
        dn();
      }
    }
    finally
    {
    }
  }

  private void setProgress(int paramInt)
  {
    try
    {
      M(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void setSecondaryProgress(int paramInt)
  {
    while (true)
    {
      try
      {
        boolean bool = this.oX;
        if (bool)
          return;
        if (paramInt < 0)
        {
          i = 0;
          if (i > this.oU)
            i = this.oU;
          if (i == this.oT)
            continue;
          this.oT = i;
          i(16908303, this.oT);
          continue;
        }
      }
      finally
      {
      }
      int i = paramInt;
    }
  }

  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    jdMethod_do();
  }

  public final void invalidateDrawable(Drawable paramDrawable)
  {
    if (!this.pk)
    {
      if (verifyDrawable(paramDrawable))
      {
        Rect localRect = paramDrawable.getBounds();
        int i = getScrollX() + getPaddingLeft();
        int j = getScrollY() + getPaddingTop();
        invalidate(i + localRect.left, j + localRect.top, i + localRect.right, j + localRect.bottom);
      }
    }
    else
      return;
    super.invalidateDrawable(paramDrawable);
  }

  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.oX)
      dm();
  }

  protected final void onDetachedFromWindow()
  {
    if (this.oX)
      dn();
    if (this.pg != null)
      removeCallbacks(this.pg);
    super.onDetachedFromWindow();
  }

  protected final void onDraw(Canvas paramCanvas)
  {
    try
    {
      super.onDraw(paramCanvas);
      Drawable localDrawable = this.pd;
      float f;
      if (localDrawable != null)
      {
        paramCanvas.save();
        paramCanvas.translate(getPaddingLeft(), getPaddingTop());
        long l = getDrawingTime();
        if (this.pa != null)
        {
          this.pa.getTransformation(l, this.oZ);
          f = this.oZ.getAlpha();
        }
      }
      try
      {
        this.pk = true;
        localDrawable.setLevel((int)(f * 10000.0F));
        this.pk = false;
        if (SystemClock.uptimeMillis() - this.pj >= 200L)
        {
          this.pj = SystemClock.uptimeMillis();
          postInvalidateDelayed(200L);
        }
        localDrawable.draw(paramCanvas);
        paramCanvas.restore();
        if ((this.pi) && ((localDrawable instanceof Animatable)))
        {
          ((Animatable)localDrawable).start();
          this.pi = false;
        }
        return;
      }
      finally
      {
        localObject2 = finally;
        this.pk = false;
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    while (true)
    {
      try
      {
        Drawable localDrawable = this.pd;
        if (localDrawable != null)
        {
          i = Math.max(this.jg, Math.min(this.oP, localDrawable.getIntrinsicWidth()));
          j = Math.max(this.oQ, Math.min(this.oR, localDrawable.getIntrinsicHeight()));
          jdMethod_do();
          int k = i + (getPaddingLeft() + getPaddingRight());
          int m = j + (getPaddingTop() + getPaddingBottom());
          setMeasuredDimension(resolveSize(k, paramInt1), resolveSize(m, paramInt2));
          return;
        }
      }
      finally
      {
      }
      int j = 0;
      int i = 0;
    }
  }

  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    ProgressBarICS.SavedState localSavedState = (ProgressBarICS.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    setProgress(localSavedState.progress);
    setSecondaryProgress(localSavedState.secondaryProgress);
  }

  public final Parcelable onSaveInstanceState()
  {
    ProgressBarICS.SavedState localSavedState = new ProgressBarICS.SavedState(super.onSaveInstanceState());
    localSavedState.progress = this.oS;
    localSavedState.secondaryProgress = this.oT;
    return localSavedState;
  }

  protected final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    j(paramInt1, paramInt2);
  }

  protected final void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (this.oX)
    {
      if ((paramInt == 8) || (paramInt == 4))
        dn();
    }
    else
      return;
    dm();
  }

  public final void postInvalidate()
  {
    if (!this.pf)
      super.postInvalidate();
  }

  public final void setMax(int paramInt)
  {
    if (paramInt < 0)
      paramInt = 0;
    try
    {
      if (paramInt != this.oU)
      {
        this.oU = paramInt;
        postInvalidate();
        if (this.oS > paramInt)
          this.oS = paramInt;
        i(16908301, this.oS);
      }
      return;
    }
    finally
    {
    }
  }

  public final void setVisibility(int paramInt)
  {
    if (getVisibility() != paramInt)
    {
      super.setVisibility(paramInt);
      if (this.oX)
      {
        if ((paramInt != 8) && (paramInt != 4))
          break label36;
        dn();
      }
    }
    return;
    label36: dm();
  }

  protected final boolean verifyDrawable(Drawable paramDrawable)
  {
    return (paramDrawable == this.pc) || (paramDrawable == this.pb) || (super.verifyDrawable(paramDrawable));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ProgressBarICS
 * JD-Core Version:    0.6.2
 */