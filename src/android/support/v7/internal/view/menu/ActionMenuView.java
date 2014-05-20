package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v7.internal.widget.LinearLayoutICS;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.tencent.mm.d;
import com.tencent.mm.p;

public class ActionMenuView extends LinearLayoutICS
  implements ag, q
{
  private o hh;
  private ActionMenuPresenter jE;
  private boolean jF;
  private int jG;
  private int jH;
  private int jI;
  private int jJ;
  private boolean jk;
  private int jt;

  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f = paramContext.getResources().getDisplayMetrics().density;
    this.jt = ((int)(56.0F * f));
    this.jH = ((int)(f * 4.0F));
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bIU, d.actionBarStyle, 0);
    this.jJ = localTypedArray.getDimensionPixelSize(1, 0);
    localTypedArray.recycle();
  }

  protected static ActionMenuView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ActionMenuView.LayoutParams))
    {
      ActionMenuView.LayoutParams localLayoutParams = new ActionMenuView.LayoutParams((ActionMenuView.LayoutParams)paramLayoutParams);
      if (localLayoutParams.gravity <= 0)
        localLayoutParams.gravity = 16;
      return localLayoutParams;
    }
    return bO();
  }

  static int b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ActionMenuView.LayoutParams localLayoutParams = (ActionMenuView.LayoutParams)paramView.getLayoutParams();
    int i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    int j;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.hasText()))
        break label182;
      j = 1;
      label54: if ((paramInt2 <= 0) || ((j != 0) && (paramInt2 < 2)))
        break label188;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, -2147483648), i);
      int m = paramView.getMeasuredWidth();
      k = m / paramInt1;
      if (m % paramInt1 != 0)
        k++;
      if ((j == 0) || (k >= 2));
    }
    label182: label188: for (int k = 2; ; k = 0)
    {
      boolean bool1 = localLayoutParams.jK;
      boolean bool2 = false;
      if (!bool1)
      {
        bool2 = false;
        if (j != 0)
          bool2 = true;
      }
      localLayoutParams.jN = bool2;
      localLayoutParams.jL = k;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(k * paramInt1, 1073741824), i);
      return k;
      localActionMenuItemView = null;
      break;
      j = 0;
      break label54;
    }
  }

  private static ActionMenuView.LayoutParams bO()
  {
    ActionMenuView.LayoutParams localLayoutParams = new ActionMenuView.LayoutParams();
    localLayoutParams.gravity = 16;
    return localLayoutParams;
  }

  public static ActionMenuView.LayoutParams bP()
  {
    ActionMenuView.LayoutParams localLayoutParams = bO();
    localLayoutParams.jK = true;
    return localLayoutParams;
  }

  private ActionMenuView.LayoutParams c(AttributeSet paramAttributeSet)
  {
    return new ActionMenuView.LayoutParams(getContext(), paramAttributeSet);
  }

  public final void c(ActionMenuPresenter paramActionMenuPresenter)
  {
    this.jE = paramActionMenuPresenter;
  }

  public final boolean c(s params)
  {
    return this.hh.c(params, 0);
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof ActionMenuView.LayoutParams));
  }

  public final void d(o paramo)
  {
    this.hh = paramo;
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }

  public final void k(boolean paramBoolean)
  {
    this.jk = paramBoolean;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    this.jE.j(false);
    if ((this.jE != null) && (this.jE.bL()))
    {
      this.jE.bI();
      this.jE.bH();
    }
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.jE.bJ();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.jF)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i = getChildCount();
    int j = (paramInt2 + paramInt4) / 2;
    int k = 0;
    int m = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int n = 0;
    int i1 = 0;
    label58: View localView3;
    ActionMenuView.LayoutParams localLayoutParams2;
    int i17;
    int i19;
    int i18;
    if (i1 < i)
    {
      localView3 = getChildAt(i1);
      if (localView3.getVisibility() == 8)
        break label493;
      localLayoutParams2 = (ActionMenuView.LayoutParams)localView3.getLayoutParams();
      if (localLayoutParams2.jK)
      {
        int i20 = localView3.getMeasuredWidth();
        int i21 = localView3.getMeasuredHeight();
        int i22 = getWidth() - getPaddingRight() - localLayoutParams2.rightMargin;
        int i23 = i22 - i20;
        int i24 = j - i21 / 2;
        localView3.layout(i23, i24, i22, i21 + i24);
        i17 = m - i20;
        int i25 = k;
        i19 = 1;
        i18 = i25;
      }
    }
    while (true)
    {
      i1++;
      n = i19;
      k = i18;
      m = i17;
      break label58;
      i17 = m - (localView3.getMeasuredWidth() + localLayoutParams2.leftMargin + localLayoutParams2.rightMargin);
      i18 = k + 1;
      i19 = n;
      continue;
      if ((i == 1) && (n == 0))
      {
        View localView2 = getChildAt(0);
        int i13 = localView2.getMeasuredWidth();
        int i14 = localView2.getMeasuredHeight();
        int i15 = (paramInt3 - paramInt1) / 2 - i13 / 2;
        int i16 = j - i14 / 2;
        localView2.layout(i15, i16, i13 + i15, i14 + i16);
        return;
      }
      int i2;
      label317: int i4;
      label336: int i5;
      int i6;
      int i7;
      label353: ActionMenuView.LayoutParams localLayoutParams1;
      int i9;
      int i10;
      if (n != 0)
      {
        i2 = 0;
        int i3 = k - i2;
        if (i3 <= 0)
          break label480;
        i4 = m / i3;
        i5 = Math.max(0, i4);
        i6 = getPaddingLeft();
        i7 = 0;
        if (i7 < i)
        {
          View localView1 = getChildAt(i7);
          localLayoutParams1 = (ActionMenuView.LayoutParams)localView1.getLayoutParams();
          if ((localView1.getVisibility() == 8) || (localLayoutParams1.jK))
            break label486;
          i9 = i6 + localLayoutParams1.leftMargin;
          i10 = localView1.getMeasuredWidth();
          int i11 = localView1.getMeasuredHeight();
          int i12 = j - i11 / 2;
          localView1.layout(i9, i12, i9 + i10, i11 + i12);
        }
      }
      label480: label486: for (int i8 = i9 + (i5 + (i10 + localLayoutParams1.rightMargin)); ; i8 = i6)
      {
        i7++;
        i6 = i8;
        break label353;
        break;
        i2 = 1;
        break label317;
        i4 = 0;
        break label336;
      }
      label493: i17 = m;
      i18 = k;
      i19 = n;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool1 = this.jF;
    boolean bool2;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824)
    {
      bool2 = true;
      this.jF = bool2;
      if (bool1 != this.jF)
        this.jG = 0;
      int i = View.MeasureSpec.getMode(paramInt1);
      if ((this.jF) && (this.hh != null) && (i != this.jG))
      {
        this.jG = i;
        this.hh.m(true);
      }
      if (!this.jF)
        break label1339;
      m = View.MeasureSpec.getMode(paramInt2);
      n = View.MeasureSpec.getSize(paramInt1);
      i1 = View.MeasureSpec.getSize(paramInt2);
      i2 = getPaddingLeft() + getPaddingRight();
      i3 = getPaddingTop() + getPaddingBottom();
      if (m != 1073741824)
        break label189;
    }
    int i5;
    int i6;
    int i7;
    label189: for (int i4 = View.MeasureSpec.makeMeasureSpec(i1 - i3, 1073741824); ; i4 = View.MeasureSpec.makeMeasureSpec(Math.min(this.jJ, i1 - i3), -2147483648))
    {
      i5 = n - i2;
      i6 = i5 / this.jt;
      i7 = i5 % this.jt;
      if (i6 != 0)
        break label211;
      setMeasuredDimension(i5, 0);
      return;
      bool2 = false;
      break;
    }
    label211: int i8 = this.jt + i7 / i6;
    int i9 = 0;
    int i10 = 0;
    int i11 = 0;
    int i12 = 0;
    int i13 = 0;
    long l1 = 0L;
    int i14 = getChildCount();
    int i15 = 0;
    int i40;
    boolean bool4;
    label373: int i41;
    label391: int i43;
    int i44;
    label429: int i45;
    label440: int i46;
    int i48;
    int i37;
    int i38;
    int i36;
    int i39;
    long l6;
    if (i15 < i14)
    {
      View localView4 = getChildAt(i15);
      if (localView4.getVisibility() == 8)
        break label1486;
      boolean bool3 = localView4 instanceof ActionMenuItemView;
      i40 = i12 + 1;
      if (bool3)
        localView4.setPadding(this.jH, 0, this.jH, 0);
      ActionMenuView.LayoutParams localLayoutParams6 = (ActionMenuView.LayoutParams)localView4.getLayoutParams();
      localLayoutParams6.jP = false;
      localLayoutParams6.jM = 0;
      localLayoutParams6.jL = 0;
      localLayoutParams6.jN = false;
      localLayoutParams6.leftMargin = 0;
      localLayoutParams6.rightMargin = 0;
      if ((bool3) && (((ActionMenuItemView)localView4).hasText()))
      {
        bool4 = true;
        localLayoutParams6.jO = bool4;
        if (!localLayoutParams6.jK)
          break label539;
        i41 = 1;
        int i42 = b(localView4, i8, i41, i4, i3);
        i43 = Math.max(i10, i42);
        if (!localLayoutParams6.jN)
          break label1479;
        i44 = i11 + 1;
        if (!localLayoutParams6.jK)
          break label1472;
        i45 = 1;
        i46 = i6 - i42;
        int i47 = localView4.getMeasuredHeight();
        i48 = Math.max(i9, i47);
        if (i42 != 1)
          break label1437;
        long l8 = l1 | 1 << i15;
        i37 = i48;
        i38 = i46;
        i36 = i40;
        i13 = i45;
        i39 = i43;
        i11 = i44;
        l6 = l8;
      }
    }
    while (true)
    {
      i15++;
      i10 = i39;
      i9 = i37;
      i6 = i38;
      l1 = l6;
      i12 = i36;
      break;
      bool4 = false;
      break label373;
      label539: i41 = i6;
      break label391;
      int i16;
      int i17;
      long l2;
      int i18;
      int i27;
      long l4;
      int i28;
      int i29;
      label595: ActionMenuView.LayoutParams localLayoutParams5;
      int i35;
      int i34;
      if ((i13 != 0) && (i12 == 2))
      {
        i16 = 1;
        i17 = 0;
        l2 = l1;
        i18 = i6;
        if ((i11 <= 0) || (i18 <= 0))
          break label885;
        i27 = 2147483647;
        l4 = 0L;
        i28 = 0;
        i29 = 0;
        if (i29 >= i14)
          break label704;
        localLayoutParams5 = (ActionMenuView.LayoutParams)getChildAt(i29).getLayoutParams();
        if (!localLayoutParams5.jN)
          break label1426;
        if (localLayoutParams5.jL >= i27)
          break label671;
        i35 = localLayoutParams5.jL;
        l4 = 1 << i29;
        i34 = 1;
      }
      label1048: 
      while (true)
      {
        i29++;
        i27 = i35;
        i28 = i34;
        break label595;
        i16 = 0;
        break;
        label671: if (localLayoutParams5.jL == i27)
        {
          l4 |= 1 << i29;
          i34 = i28 + 1;
          i35 = i27;
          continue;
          label704: l2 |= l4;
          int i31;
          int i32;
          long l5;
          label735: View localView3;
          ActionMenuView.LayoutParams localLayoutParams4;
          int i33;
          if (i28 <= i18)
          {
            int i30 = i27 + 1;
            i31 = 0;
            i32 = i18;
            l5 = l2;
            if (i31 < i14)
            {
              localView3 = getChildAt(i31);
              localLayoutParams4 = (ActionMenuView.LayoutParams)localView3.getLayoutParams();
              if ((l4 & 1 << i31) == 0L)
              {
                if (localLayoutParams4.jL != i30)
                  break label1419;
                l5 |= 1 << i31;
                i33 = i32;
              }
            }
          }
          while (true)
          {
            i31++;
            i32 = i33;
            break label735;
            if ((i16 != 0) && (localLayoutParams4.jO) && (i32 == 1))
              localView3.setPadding(i8 + this.jH, 0, this.jH, 0);
            localLayoutParams4.jL = (1 + localLayoutParams4.jL);
            localLayoutParams4.jP = true;
            i33 = i32 - 1;
            continue;
            l2 = l5;
            i17 = 1;
            i18 = i32;
            break;
            label885: long l3 = l2;
            int i19;
            float f1;
            float f2;
            int i24;
            int i25;
            int i20;
            label1055: ActionMenuView.LayoutParams localLayoutParams3;
            int i26;
            if ((i13 == 0) && (i12 == 1))
            {
              i19 = 1;
              if ((i18 <= 0) || (l3 == 0L))
                break label1408;
              int i23 = i12 - 1;
              if ((i18 >= i23) && (i19 == 0) && (i10 <= 1))
                break label1408;
              f1 = Long.bitCount(l3);
              if (i19 != 0)
                break label1401;
              if (((1L & l3) != 0L) && (!((ActionMenuView.LayoutParams)getChildAt(0).getLayoutParams()).jO))
                f1 -= 0.5F;
              if (((l3 & 1 << i14 - 1) == 0L) || (((ActionMenuView.LayoutParams)getChildAt(i14 - 1).getLayoutParams()).jO))
                break label1401;
              f2 = f1 - 0.5F;
              if (f2 <= 0.0F)
                break label1156;
              i24 = (int)(i18 * i8 / f2);
              i25 = 0;
              i20 = i17;
              if (i25 >= i14)
                break label1238;
              if ((l3 & 1 << i25) == 0L)
                break label1231;
              View localView2 = getChildAt(i25);
              localLayoutParams3 = (ActionMenuView.LayoutParams)localView2.getLayoutParams();
              if (!(localView2 instanceof ActionMenuItemView))
                break label1162;
              localLayoutParams3.jM = i24;
              localLayoutParams3.jP = true;
              if ((i25 == 0) && (!localLayoutParams3.jO))
                localLayoutParams3.leftMargin = (-i24 / 2);
              i26 = 1;
            }
            while (true)
            {
              i25++;
              i20 = i26;
              break label1055;
              i19 = 0;
              break;
              i24 = 0;
              break label1048;
              if (localLayoutParams3.jK)
              {
                localLayoutParams3.jM = i24;
                localLayoutParams3.jP = true;
                localLayoutParams3.rightMargin = (-i24 / 2);
                i26 = 1;
              }
              else
              {
                if (i25 != 0)
                  localLayoutParams3.leftMargin = (i24 / 2);
                if (i25 != i14 - 1)
                  localLayoutParams3.rightMargin = (i24 / 2);
                label1231: i26 = i20;
              }
            }
            label1238: for (int i21 = 0; ; i21 = i18)
            {
              if (i20 != 0)
                for (int i22 = 0; i22 < i14; i22++)
                {
                  View localView1 = getChildAt(i22);
                  ActionMenuView.LayoutParams localLayoutParams2 = (ActionMenuView.LayoutParams)localView1.getLayoutParams();
                  if (localLayoutParams2.jP)
                    localView1.measure(View.MeasureSpec.makeMeasureSpec(i8 * localLayoutParams2.jL + localLayoutParams2.jM, 1073741824), i4);
                }
              if (m != 1073741824);
              while (true)
              {
                setMeasuredDimension(i5, i9);
                this.jI = (i21 * i8);
                return;
                int j = getChildCount();
                for (int k = 0; k < j; k++)
                {
                  ActionMenuView.LayoutParams localLayoutParams1 = (ActionMenuView.LayoutParams)getChildAt(k).getLayoutParams();
                  localLayoutParams1.rightMargin = 0;
                  localLayoutParams1.leftMargin = 0;
                }
                super.onMeasure(paramInt1, paramInt2);
                return;
                i9 = i1;
              }
              label1401: f2 = f1;
              break;
              i20 = i17;
            }
            label1339: i33 = i32;
          }
        }
        else
        {
          i34 = i28;
          i35 = i27;
        }
      }
      label1156: label1162: label1419: label1426: label1437: i11 = i44;
      label1408: i39 = i43;
      long l7 = l1;
      i37 = i48;
      i38 = i46;
      i13 = i45;
      i36 = i40;
      l6 = l7;
      continue;
      label1472: i45 = i13;
      break label440;
      label1479: i44 = i11;
      break label429;
      label1486: i36 = i12;
      l6 = l1;
      i37 = i9;
      i38 = i6;
      i39 = i10;
    }
  }

  protected final boolean z(int paramInt)
  {
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    int i = getChildCount();
    boolean bool1 = false;
    if (paramInt < i)
    {
      boolean bool2 = localView1 instanceof i;
      bool1 = false;
      if (bool2)
        bool1 = false | ((i)localView1).bF();
    }
    if ((paramInt > 0) && ((localView2 instanceof i)))
      return bool1 | ((i)localView2).bE();
    return bool1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuView
 * JD-Core Version:    0.6.2
 */