package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.aj;
import android.support.v4.view.ba;
import android.support.v4.view.bn;
import android.support.v4.view.q;
import android.support.v4.view.u;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class DrawerLayout extends ViewGroup
{
  private static final int[] ec = { 16842931 };
  private boolean ao;
  private float dA;
  private float dB;
  private boolean eP = true;
  private int fA = -1728053248;
  private float fB;
  private Paint fC = new Paint();
  private final ac fD;
  private final ac fE;
  private final h fF;
  private final h fG;
  private int fH;
  private int fI;
  private int fJ;
  private boolean fK;
  private boolean fL;
  private f fM;
  private Drawable fN;
  private Drawable fO;
  private int fz;

  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f1 = getResources().getDisplayMetrics().density;
    this.fz = ((int)(0.5F + 64.0F * f1));
    float f2 = f1 * 400.0F;
    this.fF = new h(this, 3);
    this.fG = new h(this, 5);
    this.fD = ac.a(this, 1.0F, this.fF);
    this.fD.t(1);
    this.fD.e(f2);
    this.fF.a(this.fD);
    this.fE = ac.a(this, 1.0F, this.fG);
    this.fE.t(2);
    this.fE.e(f2);
    this.fG.a(this.fE);
    setFocusableInTouchMode(true);
    ba.a(this, new e(this));
    bn.a(this);
  }

  private View aA()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if (s(localView))
      {
        if (!s(localView))
          throw new IllegalArgumentException("View " + localView + " is not a drawer");
        if (((DrawerLayout.LayoutParams)localView.getLayoutParams()).fR > 0.0F);
        for (int k = 1; k != 0; k = 0)
          return localView;
      }
    }
    return null;
  }

  static boolean b(View paramView, int paramInt)
  {
    return (paramInt & q(paramView)) == paramInt;
  }

  private void c(int paramInt1, int paramInt2)
  {
    int i = q.a(paramInt2, ba.j(this));
    ac localac;
    if (i == 3)
    {
      this.fI = paramInt1;
      if (paramInt1 != 0)
      {
        if (i != 3)
          break label78;
        localac = this.fD;
        label34: localac.cancel();
      }
      switch (paramInt1)
      {
      default:
      case 2:
      case 1:
      }
    }
    label78: View localView1;
    do
    {
      View localView2;
      do
      {
        return;
        if (i != 5)
          break;
        this.fJ = paramInt1;
        break;
        localac = this.fE;
        break label34;
        localView2 = r(i);
      }
      while (localView2 == null);
      t(localView2);
      return;
      localView1 = r(i);
    }
    while (localView1 == null);
    u(localView1);
  }

  private void f(boolean paramBoolean)
  {
    int i = getChildCount();
    int j = 0;
    boolean bool = false;
    if (j < i)
    {
      View localView = getChildAt(j);
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      if ((s(localView)) && ((!paramBoolean) || (localLayoutParams.fS)))
      {
        int k = localView.getWidth();
        if (!b(localView, 3))
          break label102;
        bool |= this.fD.a(localView, -k, localView.getTop());
      }
      while (true)
      {
        localLayoutParams.fS = false;
        j++;
        break;
        label102: bool |= this.fE.a(localView, getWidth(), localView.getTop());
      }
    }
    this.fF.aD();
    this.fG.aD();
    if (bool)
      invalidate();
  }

  static float p(View paramView)
  {
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).fR;
  }

  private static int q(View paramView)
  {
    return q.a(((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity, ba.j(paramView));
  }

  private static boolean r(View paramView)
  {
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity == 0;
  }

  static boolean s(View paramView)
  {
    return (0x7 & q.a(((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity, ba.j(paramView))) != 0;
  }

  private void t(View paramView)
  {
    if (!s(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    if (this.eP)
    {
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      localLayoutParams.fR = 1.0F;
      localLayoutParams.fT = true;
    }
    while (true)
    {
      invalidate();
      return;
      if (b(paramView, 3))
        this.fD.a(paramView, 0, paramView.getTop());
      else
        this.fE.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
    }
  }

  final void a(int paramInt, View paramView)
  {
    int i = this.fD.aL();
    int j = this.fE.aL();
    int k;
    DrawerLayout.LayoutParams localLayoutParams1;
    if ((i == 1) || (j == 1))
    {
      k = 1;
      if ((paramView != null) && (paramInt == 0))
      {
        localLayoutParams1 = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
        if (localLayoutParams1.fR != 0.0F)
          break label150;
        DrawerLayout.LayoutParams localLayoutParams3 = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
        if (localLayoutParams3.fT)
        {
          localLayoutParams3.fT = false;
          if (this.fM != null);
          sendAccessibilityEvent(32);
        }
      }
    }
    while (true)
    {
      if (k != this.fH)
      {
        this.fH = k;
        if (this.fM == null);
      }
      return;
      if ((i == 2) || (j == 2))
      {
        k = 2;
        break;
      }
      k = 0;
      break;
      label150: if (localLayoutParams1.fR == 1.0F)
      {
        DrawerLayout.LayoutParams localLayoutParams2 = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
        if (!localLayoutParams2.fT)
        {
          localLayoutParams2.fT = true;
          if (this.fM != null);
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }

  final void a(View paramView, float paramFloat)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (paramFloat == localLayoutParams.fR);
    do
    {
      return;
      localLayoutParams.fR = paramFloat;
    }
    while (this.fM == null);
  }

  final void aB()
  {
    int i = 0;
    if (!this.fL)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      int j = getChildCount();
      while (i < j)
      {
        getChildAt(i).dispatchTouchEvent(localMotionEvent);
        i++;
      }
      localMotionEvent.recycle();
      this.fL = true;
    }
  }

  final View az()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if (((DrawerLayout.LayoutParams)localView.getLayoutParams()).fT)
        return localView;
    }
    return null;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public void computeScroll()
  {
    int i = getChildCount();
    float f = 0.0F;
    for (int j = 0; j < i; j++)
      f = Math.max(f, ((DrawerLayout.LayoutParams)getChildAt(j).getLayoutParams()).fR);
    this.fB = f;
    if ((this.fD.aO() | this.fE.aO()))
      ba.f(this);
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i = getHeight();
    boolean bool1 = r(paramView);
    int j = getWidth();
    int k = paramCanvas.save();
    int m = 0;
    int i10;
    View localView;
    int i12;
    label94: int i13;
    if (bool1)
    {
      int i9 = getChildCount();
      i10 = 0;
      if (i10 < i9)
      {
        localView = getChildAt(i10);
        if ((localView != paramView) && (localView.getVisibility() == 0))
        {
          Drawable localDrawable = localView.getBackground();
          if (localDrawable != null)
            if (localDrawable.getOpacity() == -1)
            {
              i12 = 1;
              if ((i12 == 0) || (!s(localView)) || (localView.getHeight() < i))
                break label184;
              if (!b(localView, 3))
                break label170;
              i13 = localView.getRight();
              if (i13 <= m)
                break label517;
            }
        }
      }
    }
    while (true)
    {
      m = i13;
      int i11 = j;
      while (true)
      {
        i10++;
        j = i11;
        break;
        i12 = 0;
        break label94;
        i12 = 0;
        break label94;
        label170: i11 = localView.getLeft();
        if (i11 >= j)
          label184: i11 = j;
      }
      paramCanvas.clipRect(m, 0, j, getHeight());
      int n = j;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(k);
      if ((this.fB > 0.0F) && (bool1))
      {
        int i8 = (int)(((0xFF000000 & this.fA) >>> 24) * this.fB) << 24 | 0xFFFFFF & this.fA;
        this.fC.setColor(i8);
        paramCanvas.drawRect(m, 0.0F, n, getHeight(), this.fC);
      }
      do
      {
        return bool2;
        if ((this.fN != null) && (b(paramView, 3)))
        {
          int i5 = this.fN.getIntrinsicWidth();
          int i6 = paramView.getRight();
          int i7 = this.fD.aM();
          float f2 = Math.max(0.0F, Math.min(i6 / i7, 1.0F));
          this.fN.setBounds(i6, paramView.getTop(), i5 + i6, paramView.getBottom());
          this.fN.setAlpha((int)(255.0F * f2));
          this.fN.draw(paramCanvas);
          return bool2;
        }
      }
      while ((this.fO == null) || (!b(paramView, 5)));
      int i1 = this.fO.getIntrinsicWidth();
      int i2 = paramView.getLeft();
      int i3 = getWidth() - i2;
      int i4 = this.fE.aM();
      float f1 = Math.max(0.0F, Math.min(i3 / i4, 1.0F));
      this.fO.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      this.fO.setAlpha((int)(255.0F * f1));
      this.fO.draw(paramCanvas);
      return bool2;
      label517: i13 = m;
    }
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new DrawerLayout.LayoutParams();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new DrawerLayout.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof DrawerLayout.LayoutParams))
      return new DrawerLayout.LayoutParams((DrawerLayout.LayoutParams)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new DrawerLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new DrawerLayout.LayoutParams(paramLayoutParams);
  }

  public final int o(View paramView)
  {
    int i = q(paramView);
    if (i == 3)
      return this.fI;
    if (i == 5)
      return this.fJ;
    return 0;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.eP = true;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.eP = true;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = aj.a(paramMotionEvent);
    boolean bool1 = this.fD.f(paramMotionEvent) | this.fE.f(paramMotionEvent);
    label59: int m;
    label77: int n;
    switch (i)
    {
    default:
      j = 0;
      if ((!bool1) && (j == 0))
      {
        int k = getChildCount();
        m = 0;
        if (m >= k)
          break label252;
        if (!((DrawerLayout.LayoutParams)getChildAt(m).getLayoutParams()).fS)
          break;
        n = 1;
        if (n == 0)
        {
          boolean bool3 = this.fL;
          bool2 = false;
          if (!bool3)
            break label127;
        }
      }
      boolean bool2 = true;
      return bool2;
    case 0:
      label105: label127: float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      this.dA = f1;
      this.dB = f2;
      if ((this.fB <= 0.0F) || (!r(this.fD.f((int)f1, (int)f2))));
      break;
    case 2:
    case 1:
    case 3:
    }
    for (int j = 1; ; j = 0)
    {
      this.fK = false;
      this.fL = false;
      break label59;
      if (!this.fD.aP())
        break;
      this.fF.aD();
      this.fG.aD();
      j = 0;
      break label59;
      f(true);
      this.fK = false;
      this.fL = false;
      break;
      m++;
      break label77;
      label252: n = 0;
      break label105;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (aA() != null);
      for (int i = 1; i != 0; i = 0)
      {
        u.c(paramKeyEvent);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      View localView = aA();
      if ((localView != null) && (o(localView) == 0))
        f(false);
      boolean bool = false;
      if (localView != null)
        bool = true;
      return bool;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ao = true;
    int i = paramInt3 - paramInt1;
    int j = getChildCount();
    int k = 0;
    while (k < j)
    {
      View localView = getChildAt(k);
      DrawerLayout.LayoutParams localLayoutParams;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (r(localView))
          localView.layout(localLayoutParams.leftMargin, localLayoutParams.topMargin, localLayoutParams.leftMargin + localView.getMeasuredWidth(), localLayoutParams.topMargin + localView.getMeasuredHeight());
      }
      else
      {
        k++;
        continue;
      }
      int m = localView.getMeasuredWidth();
      int n = localView.getMeasuredHeight();
      int i1;
      float f;
      label157: int i2;
      if (b(localView, 3))
      {
        i1 = -m + (int)(m * localLayoutParams.fR);
        f = (m + i1) / m;
        if (f == localLayoutParams.fR)
          break label299;
        i2 = 1;
        label171: switch (0x70 & localLayoutParams.gravity)
        {
        default:
          localView.layout(i1, localLayoutParams.topMargin, m + i1, n);
          label223: if (i2 != 0)
            a(localView, f);
          if (localLayoutParams.fR <= 0.0F)
            break;
        case 80:
        case 16:
        }
      }
      for (int i5 = 0; localView.getVisibility() != i5; i5 = 4)
      {
        localView.setVisibility(i5);
        break;
        i1 = i - (int)(m * localLayoutParams.fR);
        f = (i - i1) / m;
        break label157;
        label299: i2 = 0;
        break label171;
        int i6 = paramInt4 - paramInt2;
        localView.layout(i1, i6 - localLayoutParams.bottomMargin - localView.getMeasuredHeight(), m + i1, i6 - localLayoutParams.bottomMargin);
        break label223;
        int i3 = paramInt4 - paramInt2;
        int i4 = (i3 - n) / 2;
        if (i4 < localLayoutParams.topMargin)
          i4 = localLayoutParams.topMargin;
        while (true)
        {
          localView.layout(i1, i4, m + i1, n + i4);
          break;
          if (i4 + n > i3 - localLayoutParams.bottomMargin)
            i4 = i3 - localLayoutParams.bottomMargin - n;
        }
      }
    }
    this.ao = false;
    this.eP = false;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 300;
    int j = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    int m = View.MeasureSpec.getSize(paramInt1);
    int n = View.MeasureSpec.getSize(paramInt2);
    if ((j != 1073741824) || (k != 1073741824))
      if (isInEditMode())
      {
        if ((j != -2147483648) && (j == 0))
          m = i;
        if ((k == -2147483648) || (k != 0))
          break label397;
      }
    while (true)
    {
      setMeasuredDimension(m, i);
      int i1 = getChildCount();
      int i2 = 0;
      if (i2 < i1)
      {
        View localView = getChildAt(i2);
        DrawerLayout.LayoutParams localLayoutParams;
        if (localView.getVisibility() != 8)
        {
          localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
          if (!r(localView))
            break label200;
          localView.measure(View.MeasureSpec.makeMeasureSpec(m - localLayoutParams.leftMargin - localLayoutParams.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i - localLayoutParams.topMargin - localLayoutParams.bottomMargin, 1073741824));
        }
        while (true)
        {
          i2++;
          break;
          throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
          label200: if (!s(localView))
            break label353;
          int i3 = 0x7 & q(localView);
          if ((i3 & 0x0) != 0)
          {
            StringBuilder localStringBuilder = new StringBuilder("Child drawer has absolute gravity ");
            String str;
            if ((i3 & 0x3) == 3)
              str = "LEFT";
            while (true)
            {
              throw new IllegalStateException(str + " but this DrawerLayout already has a drawer view along that edge");
              if ((i3 & 0x5) == 5)
                str = "RIGHT";
              else
                str = Integer.toHexString(i3);
            }
          }
          localView.measure(getChildMeasureSpec(paramInt1, this.fz + localLayoutParams.leftMargin + localLayoutParams.rightMargin, localLayoutParams.width), getChildMeasureSpec(paramInt2, localLayoutParams.topMargin + localLayoutParams.bottomMargin, localLayoutParams.height));
        }
        label353: throw new IllegalStateException("Child " + localView + " at index " + i2 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
      }
      return;
      label397: i = n;
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    DrawerLayout.SavedState localSavedState = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.fU != 0)
    {
      View localView = r(localSavedState.fU);
      if (localView != null)
        t(localView);
    }
    c(localSavedState.fV, 3);
    c(localSavedState.fW, 5);
  }

  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    int i = getChildCount();
    for (int j = 0; ; j++)
      if (j < i)
      {
        View localView = getChildAt(j);
        if (s(localView))
        {
          DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
          if (localLayoutParams.fT)
            localSavedState.fU = localLayoutParams.gravity;
        }
      }
      else
      {
        localSavedState.fV = this.fI;
        localSavedState.fW = this.fJ;
        return localSavedState;
      }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.fD.g(paramMotionEvent);
    this.fE.g(paramMotionEvent);
    boolean bool;
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 2:
    default:
      return true;
    case 0:
      float f5 = paramMotionEvent.getX();
      float f6 = paramMotionEvent.getY();
      this.dA = f5;
      this.dB = f6;
      this.fK = false;
      this.fL = false;
      return true;
    case 1:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      View localView1 = this.fD.f((int)f1, (int)f2);
      if ((localView1 != null) && (r(localView1)))
      {
        float f3 = f1 - this.dA;
        float f4 = f2 - this.dB;
        int i = this.fD.getTouchSlop();
        if (f3 * f3 + f4 * f4 < i * i)
        {
          View localView2 = az();
          if (localView2 != null)
            if (o(localView2) == 2)
              bool = true;
        }
      }
      break;
    case 3:
    }
    while (true)
    {
      f(bool);
      this.fK = false;
      return true;
      bool = false;
      continue;
      f(true);
      this.fK = false;
      this.fL = false;
      return true;
      bool = true;
    }
  }

  final View r(int paramInt)
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if ((0x7 & q(localView)) == (paramInt & 0x7))
        return localView;
    }
    return null;
  }

  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    this.fK = paramBoolean;
    if (paramBoolean)
      f(true);
  }

  public void requestLayout()
  {
    if (!this.ao)
      super.requestLayout();
  }

  public final void u(View paramView)
  {
    if (!s(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    if (this.eP)
    {
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      localLayoutParams.fR = 0.0F;
      localLayoutParams.fT = false;
    }
    while (true)
    {
      invalidate();
      return;
      if (b(paramView, 3))
        this.fD.a(paramView, -paramView.getWidth(), paramView.getTop());
      else
        this.fE.a(paramView, getWidth(), paramView.getTop());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * JD-Core Version:    0.6.2
 */