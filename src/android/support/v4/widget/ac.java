package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.aj;
import android.support.v4.view.aw;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public final class ac
{
  private static final Interpolator ef = new ad();
  private int dC;
  private int eG = -1;
  private VelocityTracker eH;
  private int gE;
  private float[] gF;
  private float[] gG;
  private float[] gH;
  private float[] gI;
  private int[] gJ;
  private int[] gK;
  private int[] gL;
  private int gM;
  private float gN;
  private float gO;
  private int gP;
  private int gQ;
  private o gR;
  private final af gS;
  private View gT;
  private boolean gU;
  private final ViewGroup gV;
  private final Runnable gW = new ae(this);

  private ac(Context paramContext, ViewGroup paramViewGroup, af paramaf)
  {
    if (paramViewGroup == null)
      throw new IllegalArgumentException("Parent view may not be null");
    if (paramaf == null)
      throw new IllegalArgumentException("Callback may not be null");
    this.gV = paramViewGroup;
    this.gS = paramaf;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
    this.gP = ((int)(0.5F + 20.0F * paramContext.getResources().getDisplayMetrics().density));
    this.dC = localViewConfiguration.getScaledTouchSlop();
    this.gN = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.gO = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.gR = o.a(paramContext, ef);
  }

  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f = Math.abs(paramFloat1);
    if (f < paramFloat2)
      paramFloat3 = 0.0F;
    do
    {
      return paramFloat3;
      if (f <= paramFloat3)
        break;
    }
    while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }

  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0)
      return 0;
    int i = this.gV.getWidth();
    int j = i / 2;
    float f1 = Math.min(1.0F, Math.abs(paramInt1) / i);
    float f2 = j + j * (float)Math.sin((float)(0.47123891676382D * (f1 - 0.5F)));
    int k = Math.abs(paramInt2);
    if (k > 0);
    for (int m = 4 * Math.round(1000.0F * Math.abs(f2 / k)); ; m = (int)(256.0F * (1.0F + Math.abs(paramInt1) / paramInt3)))
      return Math.min(m, 600);
  }

  public static ac a(ViewGroup paramViewGroup, float paramFloat, af paramaf)
  {
    ac localac = new ac(paramViewGroup.getContext(), paramViewGroup, paramaf);
    localac.dC = ((int)(localac.dC * (1.0F / paramFloat)));
    return localac;
  }

  private void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    if ((this.gF == null) || (this.gF.length <= paramInt))
    {
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      float[] arrayOfFloat4 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (this.gF != null)
      {
        System.arraycopy(this.gF, 0, arrayOfFloat1, 0, this.gF.length);
        System.arraycopy(this.gG, 0, arrayOfFloat2, 0, this.gG.length);
        System.arraycopy(this.gH, 0, arrayOfFloat3, 0, this.gH.length);
        System.arraycopy(this.gI, 0, arrayOfFloat4, 0, this.gI.length);
        System.arraycopy(this.gJ, 0, arrayOfInt1, 0, this.gJ.length);
        System.arraycopy(this.gK, 0, arrayOfInt2, 0, this.gK.length);
        System.arraycopy(this.gL, 0, arrayOfInt3, 0, this.gL.length);
      }
      this.gF = arrayOfFloat1;
      this.gG = arrayOfFloat2;
      this.gH = arrayOfFloat3;
      this.gI = arrayOfFloat4;
      this.gJ = arrayOfInt1;
      this.gK = arrayOfInt2;
      this.gL = arrayOfInt3;
    }
    float[] arrayOfFloat5 = this.gF;
    this.gH[paramInt] = paramFloat1;
    arrayOfFloat5[paramInt] = paramFloat1;
    float[] arrayOfFloat6 = this.gG;
    this.gI[paramInt] = paramFloat2;
    arrayOfFloat6[paramInt] = paramFloat2;
    int[] arrayOfInt4 = this.gJ;
    int i = (int)paramFloat1;
    int j = (int)paramFloat2;
    int k = this.gV.getLeft() + this.gP;
    int m = 0;
    if (i < k)
      m = 1;
    if (j < this.gV.getTop() + this.gP)
      m |= 4;
    if (i > this.gV.getRight() - this.gP)
      m |= 2;
    if (j > this.gV.getBottom() - this.gP)
      m |= 8;
    arrayOfInt4[paramInt] = m;
    this.gM |= 1 << paramInt;
  }

  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    float f1 = Math.abs(paramFloat1);
    float f2 = Math.abs(paramFloat2);
    if (((paramInt2 & this.gJ[paramInt1]) != paramInt2) || ((paramInt2 & this.gQ) == 0) || ((paramInt2 & this.gL[paramInt1]) == paramInt2) || ((paramInt2 & this.gK[paramInt1]) == paramInt2) || ((f1 <= this.dC) && (f2 <= this.dC)));
    while ((f1 < f2 * 0.5F) && (((paramInt2 & this.gK[paramInt1]) != 0) || (f1 <= this.dC)))
      return false;
    return true;
  }

  private void aQ()
  {
    this.eH.computeCurrentVelocity(1000, this.gN);
    float f = a(aw.a(this.eH, this.eG), this.gO, this.gN);
    a(aw.b(this.eH, this.eG), this.gO, this.gN);
    f(f);
  }

  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = Math.abs(paramInt1);
    if (i < paramInt2)
      paramInt3 = 0;
    do
    {
      return paramInt3;
      if (i <= paramInt3)
        break;
    }
    while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }

  private void b(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i = 1;
    if (a(paramFloat1, paramFloat2, paramInt, i));
    while (true)
    {
      if (a(paramFloat2, paramFloat1, paramInt, 4))
        i |= 4;
      if (a(paramFloat1, paramFloat2, paramInt, 2))
        i |= 2;
      if (a(paramFloat2, paramFloat1, paramInt, 8))
        i |= 8;
      if (i != 0)
      {
        int[] arrayOfInt = this.gK;
        arrayOfInt[paramInt] = (i | arrayOfInt[paramInt]);
        this.gS.d(i, paramInt);
      }
      return;
      i = 0;
    }
  }

  private boolean b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.gT.getLeft();
    int j = this.gT.getTop();
    int k = paramInt1 - i;
    int m = paramInt2 - j;
    if ((k == 0) && (m == 0))
    {
      this.gR.abortAnimation();
      v(0);
      return false;
    }
    View localView = this.gT;
    int n = b(paramInt3, (int)this.gO, (int)this.gN);
    int i1 = b(paramInt4, (int)this.gO, (int)this.gN);
    int i2 = Math.abs(k);
    int i3 = Math.abs(m);
    int i4 = Math.abs(n);
    int i5 = Math.abs(i1);
    int i6 = i4 + i5;
    int i7 = i2 + i3;
    float f1;
    if (n != 0)
    {
      f1 = i4 / i6;
      if (i1 == 0)
        break label250;
    }
    label250: for (float f2 = i5 / i6; ; f2 = i3 / i7)
    {
      int i8 = a(k, n, this.gS.y(localView));
      int i9 = a(m, i1, 0);
      int i10 = (int)(f1 * i8 + f2 * i9);
      this.gR.startScroll(i, j, k, m, i10);
      v(2);
      return true;
      f1 = i2 / i7;
      break;
    }
  }

  public static boolean b(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null);
    while ((paramInt1 < paramView.getLeft()) || (paramInt1 >= paramView.getRight()) || (paramInt2 < paramView.getTop()) || (paramInt2 >= paramView.getBottom()))
      return false;
    return true;
  }

  private boolean c(View paramView, float paramFloat)
  {
    if (paramView == null);
    while (true)
    {
      return false;
      if (this.gS.y(paramView) > 0);
      for (int i = 1; (i != 0) && (Math.abs(paramFloat) > this.dC); i = 0)
        return true;
    }
  }

  private void e(MotionEvent paramMotionEvent)
  {
    int i = aj.c(paramMotionEvent);
    for (int j = 0; j < i; j++)
    {
      int k = aj.b(paramMotionEvent, j);
      float f1 = aj.c(paramMotionEvent, j);
      float f2 = aj.d(paramMotionEvent, j);
      this.gH[k] = f1;
      this.gI[k] = f2;
    }
  }

  private void f(float paramFloat)
  {
    this.gU = true;
    this.gS.b(this.gT, paramFloat);
    this.gU = false;
    if (this.gE == 1)
      v(0);
  }

  private boolean f(View paramView, int paramInt)
  {
    if ((paramView == this.gT) && (this.eG == paramInt))
      return true;
    if ((paramView != null) && (this.gS.w(paramView)))
    {
      this.eG = paramInt;
      e(paramView, paramInt);
      return true;
    }
    return false;
  }

  private void u(int paramInt)
  {
    if (this.gF == null)
      return;
    this.gF[paramInt] = 0.0F;
    this.gG[paramInt] = 0.0F;
    this.gH[paramInt] = 0.0F;
    this.gI[paramInt] = 0.0F;
    this.gJ[paramInt] = 0;
    this.gK[paramInt] = 0;
    this.gL[paramInt] = 0;
    this.gM &= (0xFFFFFFFF ^ 1 << paramInt);
  }

  public final boolean a(View paramView, int paramInt1, int paramInt2)
  {
    this.gT = paramView;
    this.eG = -1;
    return b(paramInt1, paramInt2, 0, 0);
  }

  public final int aL()
  {
    return this.gE;
  }

  public final int aM()
  {
    return this.gP;
  }

  public final View aN()
  {
    return this.gT;
  }

  public final boolean aO()
  {
    if (this.gE == 2)
    {
      boolean bool = this.gR.computeScrollOffset();
      int i = this.gR.getCurrX();
      int j = this.gR.getCurrY();
      int k = i - this.gT.getLeft();
      int m = j - this.gT.getTop();
      if (k != 0)
        this.gT.offsetLeftAndRight(k);
      if (m != 0)
        this.gT.offsetTopAndBottom(m);
      if ((k != 0) || (m != 0))
        this.gS.c(this.gT, i);
      if ((bool) && (i == this.gR.getFinalX()) && (j == this.gR.getFinalY()))
      {
        this.gR.abortAnimation();
        bool = this.gR.isFinished();
      }
      if (!bool)
        this.gV.post(this.gW);
    }
    return this.gE == 2;
  }

  public final boolean aP()
  {
    int i = this.gF.length;
    label100: label106: label112: for (int j = 0; j < i; j++)
    {
      int k;
      int m;
      if ((this.gM & 1 << j) != 0)
      {
        k = 1;
        if (k == 0)
          break label106;
        float f1 = this.gH[j] - this.gF[j];
        float f2 = this.gI[j] - this.gG[j];
        if (f1 * f1 + f2 * f2 <= this.dC * this.dC)
          break label100;
        m = 1;
      }
      while (true)
      {
        if (m == 0)
          break label112;
        return true;
        k = 0;
        break;
        m = 0;
        continue;
        m = 0;
      }
    }
    return false;
  }

  public final void abort()
  {
    cancel();
    if (this.gE == 2)
    {
      this.gR.getCurrX();
      this.gR.getCurrY();
      this.gR.abortAnimation();
      int i = this.gR.getCurrX();
      this.gR.getCurrY();
      this.gS.c(this.gT, i);
    }
    v(0);
  }

  public final void cancel()
  {
    this.eG = -1;
    if (this.gF != null)
    {
      Arrays.fill(this.gF, 0.0F);
      Arrays.fill(this.gG, 0.0F);
      Arrays.fill(this.gH, 0.0F);
      Arrays.fill(this.gI, 0.0F);
      Arrays.fill(this.gJ, 0);
      Arrays.fill(this.gK, 0);
      Arrays.fill(this.gL, 0);
      this.gM = 0;
    }
    if (this.eH != null)
    {
      this.eH.recycle();
      this.eH = null;
    }
  }

  public final void e(float paramFloat)
  {
    this.gO = paramFloat;
  }

  public final void e(View paramView, int paramInt)
  {
    if (paramView.getParent() != this.gV)
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.gV + ")");
    this.gT = paramView;
    this.eG = paramInt;
    this.gS.x(paramView);
    v(1);
  }

  public final boolean e(int paramInt1, int paramInt2)
  {
    if (!this.gU)
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    return b(paramInt1, paramInt2, (int)aw.a(this.eH, this.eG), (int)aw.b(this.eH, this.eG));
  }

  public final View f(int paramInt1, int paramInt2)
  {
    for (int i = -1 + this.gV.getChildCount(); i >= 0; i--)
    {
      ViewGroup localViewGroup = this.gV;
      View localView = localViewGroup.getChildAt(i);
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom()))
        return localView;
    }
    return null;
  }

  public final boolean f(MotionEvent paramMotionEvent)
  {
    int i = aj.a(paramMotionEvent);
    int j = aj.b(paramMotionEvent);
    if (i == 0)
      cancel();
    if (this.eH == null)
      this.eH = VelocityTracker.obtain();
    this.eH.addMovement(paramMotionEvent);
    switch (i)
    {
    case 4:
    default:
    case 0:
    case 5:
    case 2:
    case 6:
    case 1:
    case 3:
    }
    while (this.gE == 1)
    {
      return true;
      float f6 = paramMotionEvent.getX();
      float f7 = paramMotionEvent.getY();
      int i2 = aj.b(paramMotionEvent, 0);
      a(f6, f7, i2);
      View localView3 = f((int)f6, (int)f7);
      if ((localView3 == this.gT) && (this.gE == 2))
        f(localView3, i2);
      if ((this.gJ[i2] & this.gQ) != 0)
      {
        af localaf2 = this.gS;
        localaf2.aF();
        continue;
        int i1 = aj.b(paramMotionEvent, j);
        float f4 = aj.c(paramMotionEvent, j);
        float f5 = aj.d(paramMotionEvent, j);
        a(f4, f5, i1);
        if (this.gE == 0)
        {
          if ((this.gJ[i1] & this.gQ) != 0)
          {
            af localaf1 = this.gS;
            localaf1.aF();
          }
        }
        else if (this.gE == 2)
        {
          View localView2 = f((int)f4, (int)f5);
          if (localView2 == this.gT)
          {
            f(localView2, i1);
            continue;
            int k = aj.c(paramMotionEvent);
            for (int m = 0; m < k; m++)
            {
              int n = aj.b(paramMotionEvent, m);
              float f1 = aj.c(paramMotionEvent, m);
              float f2 = aj.d(paramMotionEvent, m);
              float f3 = f1 - this.gF[n];
              b(f3, f2 - this.gG[n], n);
              if (this.gE == 1)
                break;
              View localView1 = f((int)f1, (int)f2);
              if ((localView1 != null) && (c(localView1, f3)) && (f(localView1, n)))
                break;
            }
            e(paramMotionEvent);
            continue;
            u(aj.b(paramMotionEvent, j));
            continue;
            cancel();
          }
        }
      }
    }
    return false;
  }

  public final void g(MotionEvent paramMotionEvent)
  {
    int i = 0;
    int j = aj.a(paramMotionEvent);
    int k = aj.b(paramMotionEvent);
    if (j == 0)
      cancel();
    if (this.eH == null)
      this.eH = VelocityTracker.obtain();
    this.eH.addMovement(paramMotionEvent);
    int m;
    switch (j)
    {
    case 4:
    default:
    case 0:
    case 5:
      int i12;
      int i13;
      int i14;
      do
      {
        float f8;
        float f9;
        do
        {
          int i15;
          do
          {
            return;
            float f10 = paramMotionEvent.getX();
            float f11 = paramMotionEvent.getY();
            i15 = aj.b(paramMotionEvent, 0);
            View localView2 = f((int)f10, (int)f11);
            a(f10, f11, i15);
            f(localView2, i15);
          }
          while ((this.gJ[i15] & this.gQ) == 0);
          af localaf2 = this.gS;
          localaf2.aF();
          return;
          i12 = aj.b(paramMotionEvent, k);
          f8 = aj.c(paramMotionEvent, k);
          f9 = aj.d(paramMotionEvent, k);
          a(f8, f9, i12);
          if (this.gE != 0)
            break;
          f(f((int)f8, (int)f9), i12);
        }
        while ((this.gJ[i12] & this.gQ) == 0);
        af localaf1 = this.gS;
        localaf1.aF();
        return;
        i13 = (int)f8;
        i14 = (int)f9;
      }
      while (!b(this.gT, i13, i14));
      f(this.gT, i12);
      return;
    case 2:
      if (this.gE == 1)
      {
        int i5 = aj.a(paramMotionEvent, this.eG);
        float f6 = aj.c(paramMotionEvent, i5);
        float f7 = aj.d(paramMotionEvent, i5);
        int i6 = (int)(f6 - this.gH[this.eG]);
        int i7 = (int)(f7 - this.gI[this.eG]);
        int i8 = i6 + this.gT.getLeft();
        this.gT.getTop();
        int i9 = this.gT.getLeft();
        int i10 = this.gT.getTop();
        if (i6 != 0)
        {
          i8 = this.gS.d(this.gT, i8);
          this.gT.offsetLeftAndRight(i8 - i9);
        }
        if (i7 != 0)
        {
          int i11 = this.gS.z(this.gT);
          this.gT.offsetTopAndBottom(i11 - i10);
        }
        if ((i6 != 0) || (i7 != 0))
          this.gS.c(this.gT, i8);
        e(paramMotionEvent);
        return;
      }
      int i3 = aj.c(paramMotionEvent);
      while (i < i3)
      {
        int i4 = aj.b(paramMotionEvent, i);
        float f3 = aj.c(paramMotionEvent, i);
        float f4 = aj.d(paramMotionEvent, i);
        float f5 = f3 - this.gF[i4];
        b(f5, f4 - this.gG[i4], i4);
        if (this.gE == 1)
          break;
        View localView1 = f((int)f3, (int)f4);
        if ((c(localView1, f5)) && (f(localView1, i4)))
          break;
        i++;
      }
      e(paramMotionEvent);
      return;
    case 6:
      m = aj.b(paramMotionEvent, k);
      if ((this.gE == 1) && (m == this.eG))
      {
        int n = aj.c(paramMotionEvent);
        if (i >= n)
          break label768;
        int i2 = aj.b(paramMotionEvent, i);
        if (i2 == this.eG)
          break label727;
        float f1 = aj.c(paramMotionEvent, i);
        float f2 = aj.d(paramMotionEvent, i);
        if ((f((int)f1, (int)f2) != this.gT) || (!f(this.gT, i2)))
          break label727;
      }
      break;
    case 1:
    case 3:
    }
    label768: for (int i1 = this.eG; ; i1 = -1)
    {
      if (i1 == -1)
        aQ();
      u(m);
      return;
      label727: i++;
      break;
      if (this.gE == 1)
        aQ();
      cancel();
      return;
      if (this.gE == 1)
        f(0.0F);
      cancel();
      return;
    }
  }

  public final int getTouchSlop()
  {
    return this.dC;
  }

  public final void t(int paramInt)
  {
    this.gQ = paramInt;
  }

  final void v(int paramInt)
  {
    if (this.gE != paramInt)
    {
      this.gE = paramInt;
      this.gS.s(paramInt);
      if (paramInt == 0)
        this.gT = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ac
 * JD-Core Version:    0.6.2
 */