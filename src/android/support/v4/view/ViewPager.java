package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.widget.j;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager extends ViewGroup
{
  private static final cd eZ = new cd();
  private static final int[] ec = { 16842931 };
  private static final Comparator ee = new bs();
  private static final Interpolator ef = new bt();
  private boolean ao;
  private float dA;
  private float dB;
  private int dC;
  private int dV = 0;
  private final Rect du = new Rect();
  private boolean eA;
  private boolean eB;
  private int eC;
  private int eD;
  private float eE;
  private float eF;
  private int eG = -1;
  private VelocityTracker eH;
  private int eI;
  private int eJ;
  private int eK;
  private int eL;
  private boolean eM;
  private j eN;
  private j eO;
  private boolean eP = true;
  private boolean eQ = false;
  private boolean eR;
  private int eS;
  private bz eT;
  private bz eU;
  private by eV;
  private ca eW;
  private int eX;
  private ArrayList eY;
  private int ed;
  private final ArrayList eg = new ArrayList();
  private final bw eh = new bw();
  private an ei;
  private int ej;
  private int ek = -1;
  private Parcelable el = null;
  private ClassLoader em = null;
  private Scroller en;
  private cb eo;
  private int ep;
  private Drawable eq;
  private int er;
  private int es;
  private float et = -3.402824E+38F;
  private float eu = 3.4028235E+38F;
  private int ev;
  private int ew;
  private boolean ex;
  private boolean ey;
  private int ez = 1;
  private final Runnable fa = new bu(this);

  public ViewPager(Context paramContext)
  {
    super(paramContext);
    ah();
  }

  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ah();
  }

  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null);
    for (Rect localRect = new Rect(); ; localRect = paramRect)
    {
      if (paramView == null)
      {
        localRect.set(0, 0, 0, 0);
        return localRect;
      }
      localRect.left = paramView.getLeft();
      localRect.right = paramView.getRight();
      localRect.top = paramView.getTop();
      localRect.bottom = paramView.getBottom();
      ViewGroup localViewGroup;
      for (ViewParent localViewParent = paramView.getParent(); ((localViewParent instanceof ViewGroup)) && (localViewParent != this); localViewParent = localViewGroup.getParent())
      {
        localViewGroup = (ViewGroup)localViewParent;
        localRect.left += localViewGroup.getLeft();
        localRect.right += localViewGroup.getRight();
        localRect.top += localViewGroup.getTop();
        localRect.bottom += localViewGroup.getBottom();
      }
      return localRect;
    }
  }

  private void a(int paramInt, float paramFloat)
  {
    int m;
    int n;
    int i1;
    int i3;
    View localView2;
    int i8;
    int i5;
    int i6;
    if (this.eS > 0)
    {
      int k = getScrollX();
      m = getPaddingLeft();
      n = getPaddingRight();
      i1 = getWidth();
      int i2 = getChildCount();
      i3 = 0;
      if (i3 < i2)
      {
        localView2 = getChildAt(i3);
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView2.getLayoutParams();
        if (!localLayoutParams.fg)
          break label384;
        switch (0x7 & localLayoutParams.gravity)
        {
        case 2:
        case 4:
        default:
          i8 = m;
          int i14 = n;
          i5 = m;
          i6 = i14;
          label132: int i10 = i8 + k - localView2.getLeft();
          if (i10 != 0)
            localView2.offsetLeftAndRight(i10);
          break;
        case 3:
        case 1:
        case 5:
        }
      }
    }
    while (true)
    {
      i3++;
      int i7 = i6;
      m = i5;
      n = i7;
      break;
      int i12 = m + localView2.getWidth();
      int i13 = m;
      i6 = n;
      i5 = i12;
      i8 = i13;
      break label132;
      i8 = Math.max((i1 - localView2.getMeasuredWidth()) / 2, m);
      int i11 = n;
      i5 = m;
      i6 = i11;
      break label132;
      i8 = i1 - n - localView2.getMeasuredWidth();
      int i9 = n + localView2.getMeasuredWidth();
      i5 = m;
      i6 = i9;
      break label132;
      if (this.eT != null)
        this.eT.a(paramInt, paramFloat);
      if (this.eU != null)
        this.eU.a(paramInt, paramFloat);
      if (this.eW != null)
      {
        getScrollX();
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
          View localView1 = getChildAt(j);
          if (!((ViewPager.LayoutParams)localView1.getLayoutParams()).fg)
          {
            localView1.getLeft();
            aj();
          }
        }
      }
      this.eR = true;
      return;
      label384: int i4 = n;
      i5 = m;
      i6 = i4;
    }
  }

  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    bw localbw = p(paramInt1);
    int i = 0;
    if (localbw != null)
      i = (int)(aj() * Math.max(this.et, Math.min(localbw.ff, this.eu)));
    if (paramBoolean1)
    {
      if (getChildCount() == 0)
        setScrollingCacheEnabled(false);
      int j;
      int k;
      int m;
      int n;
      while (true)
      {
        if ((paramBoolean2) && (this.eT != null))
          this.eT.j(paramInt1);
        if ((paramBoolean2) && (this.eU != null))
          this.eU.j(paramInt1);
        return;
        j = getScrollX();
        k = getScrollY();
        m = i - j;
        n = 0 - k;
        if ((m != 0) || (n != 0))
          break;
        e(false);
        populate();
        l(0);
      }
      setScrollingCacheEnabled(true);
      l(2);
      int i1 = aj();
      int i2 = i1 / 2;
      float f1 = Math.min(1.0F, 1.0F * Math.abs(m) / i1);
      float f2 = i2 + i2 * (float)Math.sin((float)(0.47123891676382D * (f1 - 0.5F)));
      int i3 = Math.abs(paramInt2);
      if (i3 > 0);
      float f4;
      for (int i4 = 4 * Math.round(1000.0F * Math.abs(f2 / i3)); ; i4 = (int)(100.0F * (3.0F + Math.abs(m) / (f4 + this.ep))))
      {
        int i5 = Math.min(i4, 600);
        this.en.startScroll(j, k, m, n, i5);
        ba.f(this);
        break;
        float f3 = i1;
        f4 = f3 * 1.0F;
      }
    }
    if ((paramBoolean2) && (this.eT != null))
      this.eT.j(paramInt1);
    if ((paramBoolean2) && (this.eU != null))
      this.eU.j(paramInt1);
    e(false);
    scrollTo(i, 0);
    q(i);
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  private void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.ei == null) || (this.ei.getCount() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (this.ej == paramInt1) && (this.eg.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if (paramInt1 < 0)
      paramInt1 = 0;
    while (true)
    {
      int i = this.ez;
      if ((paramInt1 <= i + this.ej) && (paramInt1 >= this.ej - i))
        break;
      for (int j = 0; j < this.eg.size(); j++)
        ((bw)this.eg.get(j)).fd = true;
      if (paramInt1 >= this.ei.getCount())
        paramInt1 = -1 + this.ei.getCount();
    }
    int k = this.ej;
    boolean bool = false;
    if (k != paramInt1)
      bool = true;
    if (this.eP)
    {
      this.ej = paramInt1;
      if ((bool) && (this.eT != null))
        this.eT.j(paramInt1);
      if ((bool) && (this.eU != null))
        this.eU.j(paramInt1);
      requestLayout();
      return;
    }
    o(paramInt1);
    a(paramInt1, paramBoolean1, paramInt2, bool);
  }

  private void a(bw parambw1, int paramInt, bw parambw2)
  {
    int i = this.ei.getCount();
    int j = aj();
    float f1;
    int i5;
    float f7;
    int i8;
    int i9;
    if (j > 0)
    {
      f1 = this.ep / j;
      if (parambw2 == null)
        break label365;
      i5 = parambw2.position;
      if (i5 < parambw1.position)
      {
        f7 = f1 + (parambw2.ff + parambw2.fe);
        i8 = i5 + 1;
        i9 = 0;
      }
    }
    else
    {
      while (true)
      {
        if ((i8 > parambw1.position) || (i9 >= this.eg.size()))
          break label365;
        bw localbw4 = (bw)this.eg.get(i9);
        while (true)
          if ((i8 > localbw4.position) && (i9 < -1 + this.eg.size()))
          {
            i9++;
            localbw4 = (bw)this.eg.get(i9);
            continue;
            f1 = 0.0F;
            break;
          }
        while (i8 < localbw4.position)
        {
          f7 += 1.0F + f1;
          i8++;
        }
        localbw4.ff = f7;
        f7 += f1 + localbw4.fe;
        i8++;
      }
    }
    if (i5 > parambw1.position)
    {
      int i6 = -1 + this.eg.size();
      float f6 = parambw2.ff;
      for (int i7 = i5 - 1; (i7 >= parambw1.position) && (i6 >= 0); i7--)
      {
        for (bw localbw3 = (bw)this.eg.get(i6); (i7 < localbw3.position) && (i6 > 0); localbw3 = (bw)this.eg.get(i6))
          i6--;
        while (i7 > localbw3.position)
        {
          f6 -= 1.0F + f1;
          i7--;
        }
        f6 -= f1 + localbw3.fe;
        localbw3.ff = f6;
      }
    }
    label365: int k = this.eg.size();
    float f2 = parambw1.ff;
    int m = -1 + parambw1.position;
    float f3;
    float f4;
    if (parambw1.position == 0)
    {
      f3 = parambw1.ff;
      this.et = f3;
      if (parambw1.position != i - 1)
        break label498;
      f4 = parambw1.ff + parambw1.fe - 1.0F;
      label431: this.eu = f4;
    }
    label498: int i4;
    for (int n = paramInt - 1; ; n = i4)
    {
      if (n < 0)
        break label555;
      bw localbw2 = (bw)this.eg.get(n);
      while (true)
        if (m > localbw2.position)
        {
          m--;
          f2 -= 1.0F + f1;
          continue;
          f3 = -3.402824E+38F;
          break;
          f4 = 3.4028235E+38F;
          break label431;
        }
      f2 -= f1 + localbw2.fe;
      localbw2.ff = f2;
      if (localbw2.position == 0)
        this.et = f2;
      i4 = n - 1;
      m--;
    }
    label555: float f5 = f1 + (parambw1.ff + parambw1.fe);
    int i1 = 1 + parambw1.position;
    int i3;
    for (int i2 = paramInt + 1; i2 < k; i2 = i3)
    {
      bw localbw1 = (bw)this.eg.get(i2);
      while (i1 < localbw1.position)
      {
        i1++;
        f5 += 1.0F + f1;
      }
      if (localbw1.position == i - 1)
        this.eu = (f5 + localbw1.fe - 1.0F);
      localbw1.ff = f5;
      f5 += f1 + localbw1.fe;
      i3 = i2 + 1;
      i1++;
    }
    this.eQ = false;
  }

  private boolean a(float paramFloat)
  {
    int i = 1;
    float f1 = this.eE - paramFloat;
    this.eE = paramFloat;
    float f2 = f1 + getScrollX();
    int j = aj();
    float f3 = j * this.et;
    float f4 = j * this.eu;
    bw localbw1 = (bw)this.eg.get(0);
    bw localbw2 = (bw)this.eg.get(-1 + this.eg.size());
    if (localbw1.position != 0)
      f3 = localbw1.ff * j;
    for (int k = 0; ; k = i)
    {
      float f5;
      if (localbw2.position != -1 + this.ei.getCount())
      {
        f5 = localbw2.ff * j;
        i = 0;
      }
      while (true)
      {
        boolean bool;
        if (f2 < f3)
        {
          bool = false;
          if (k != 0)
          {
            float f6 = f3 - f2;
            bool = this.eN.b(Math.abs(f6) / j);
          }
        }
        while (true)
        {
          this.eE += f3 - (int)f3;
          scrollTo((int)f3, getScrollY());
          q((int)f3);
          return bool;
          if (f2 > f5)
          {
            bool = false;
            if (i != 0)
            {
              float f7 = f2 - f5;
              bool = this.eO.b(Math.abs(f7) / j);
            }
            f3 = f5;
          }
          else
          {
            f3 = f2;
            bool = false;
          }
        }
        f5 = f4;
      }
    }
  }

  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int k;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i = paramView.getScrollX();
      int j = paramView.getScrollY();
      k = -1 + localViewGroup.getChildCount();
      if (k >= 0)
      {
        localView = localViewGroup.getChildAt(k);
        if ((paramInt2 + i < localView.getLeft()) || (paramInt2 + i >= localView.getRight()) || (paramInt3 + j < localView.getTop()) || (paramInt3 + j >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i - localView.getLeft(), paramInt3 + j - localView.getTop())));
      }
    }
    while ((paramBoolean) && (ba.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      k--;
      break;
    }
    return false;
  }

  private void ah()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.en = new Scroller(localContext, ef);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f = localContext.getResources().getDisplayMetrics().density;
    this.dC = bj.a(localViewConfiguration);
    this.eI = ((int)(400.0F * f));
    this.eJ = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.eN = new j(localContext);
    this.eO = new j(localContext);
    this.eK = ((int)(25.0F * f));
    this.eL = ((int)(2.0F * f));
    this.eC = ((int)(16.0F * f));
    ba.a(this, new bx(this));
    if (ba.g(this) == 0)
      ba.h(this);
  }

  private int aj()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }

  private void am()
  {
    if (this.eX != 0)
    {
      if (this.eY == null)
        this.eY = new ArrayList();
      while (true)
      {
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
          View localView = getChildAt(j);
          this.eY.add(localView);
        }
        this.eY.clear();
      }
      Collections.sort(this.eY, eZ);
    }
  }

  private bw an()
  {
    int i = aj();
    float f1;
    float f2;
    label31: float f3;
    float f4;
    int j;
    int k;
    int m;
    Object localObject;
    label49: bw localbw1;
    bw localbw3;
    int n;
    if (i > 0)
    {
      f1 = getScrollX() / i;
      if (i <= 0)
        break label210;
      f2 = this.ep / i;
      f3 = 0.0F;
      f4 = 0.0F;
      j = -1;
      k = 0;
      m = 1;
      localObject = null;
      if (k < this.eg.size())
      {
        localbw1 = (bw)this.eg.get(k);
        if ((m != 0) || (localbw1.position == j + 1))
          break label261;
        localbw3 = this.eh;
        localbw3.ff = (f2 + (f3 + f4));
        localbw3.position = (j + 1);
        localbw3.fe = 1.0F;
        n = k - 1;
      }
    }
    for (bw localbw2 = localbw3; ; localbw2 = localbw1)
    {
      float f5 = localbw2.ff;
      float f6 = f2 + (f5 + localbw2.fe);
      if ((m != 0) || (f1 >= f5))
      {
        if ((f1 < f6) || (n == -1 + this.eg.size()))
          localObject = localbw2;
      }
      else
      {
        return localObject;
        f1 = 0.0F;
        break;
        label210: f2 = 0.0F;
        break label31;
      }
      int i1 = localbw2.position;
      float f7 = localbw2.fe;
      int i2 = n + 1;
      f4 = f5;
      j = i1;
      f3 = f7;
      localObject = localbw2;
      k = i2;
      m = 0;
      break label49;
      label261: n = k;
    }
  }

  private void ao()
  {
    this.eA = false;
    this.eB = false;
    if (this.eH != null)
    {
      this.eH.recycle();
      this.eH = null;
    }
  }

  private boolean ap()
  {
    if (this.ej > 0)
    {
      a(-1 + this.ej, true);
      return true;
    }
    return false;
  }

  private boolean arrowScroll(int paramInt)
  {
    View localView1 = findFocus();
    View localView2;
    View localView3;
    boolean bool1;
    label86: boolean bool2;
    label90: ViewParent localViewParent1;
    if (localView1 == this)
    {
      localView2 = null;
      localView3 = FocusFinder.getInstance().findNextFocus(this, localView2, paramInt);
      if ((localView3 == null) || (localView3 == localView2))
        break label314;
      if (paramInt != 17)
        break label255;
      int k = a(this.du, localView3).left;
      int m = a(this.du, localView2).left;
      if ((localView2 != null) && (k >= m))
      {
        bool1 = ap();
        bool2 = bool1;
        if (bool2)
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        return bool2;
      }
    }
    else
    {
      if (localView1 == null)
        break label394;
      localViewParent1 = localView1.getParent();
      if (!(localViewParent1 instanceof ViewGroup))
        break label399;
      if (localViewParent1 != this);
    }
    label394: label399: for (int n = 1; ; n = 0)
    {
      if (n == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView1.getClass().getSimpleName());
        ViewParent localViewParent2 = localView1.getParent();
        while (true)
          if ((localViewParent2 instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localViewParent2.getClass().getSimpleName());
            localViewParent2 = localViewParent2.getParent();
            continue;
            localViewParent1 = localViewParent1.getParent();
            break;
          }
        new StringBuilder("arrowScroll tried to find focus based on non-child current focused view ").append(localStringBuilder.toString()).toString();
        localView2 = null;
        break;
        bool1 = localView3.requestFocus();
        break label86;
        label255: bool2 = false;
        if (paramInt != 66)
          break label90;
        int i = a(this.du, localView3).left;
        int j = a(this.du, localView2).left;
        if ((localView2 == null) || (i > j))
        {
          bool1 = localView3.requestFocus();
          break label86;
          label314: if ((paramInt == 17) || (paramInt == 1))
          {
            bool1 = ap();
            break label86;
          }
          if (paramInt != 66)
          {
            bool2 = false;
            if (paramInt != 2)
              break label90;
          }
        }
        if ((this.ei != null) && (this.ej < -1 + this.ei.getCount()))
        {
          a(1 + this.ej, true);
          bool1 = true;
          break label86;
        }
        bool1 = false;
        break label86;
      }
      localView2 = localView1;
      break;
    }
  }

  private bw b(int paramInt1, int paramInt2)
  {
    bw localbw = new bw();
    localbw.position = paramInt1;
    localbw.fc = this.ei.a(this, paramInt1);
    localbw.fe = 1.0F;
    if ((paramInt2 < 0) || (paramInt2 >= this.eg.size()))
    {
      this.eg.add(localbw);
      return localbw;
    }
    this.eg.add(paramInt2, localbw);
    return localbw;
  }

  private void d(MotionEvent paramMotionEvent)
  {
    int i = aj.b(paramMotionEvent);
    if (aj.b(paramMotionEvent, i) == this.eG)
      if (i != 0)
        break label56;
    label56: for (int j = 1; ; j = 0)
    {
      this.eE = aj.c(paramMotionEvent, j);
      this.eG = aj.b(paramMotionEvent, j);
      if (this.eH != null)
        this.eH.clear();
      return;
    }
  }

  private void e(boolean paramBoolean)
  {
    if (this.dV == 2);
    int k;
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        setScrollingCacheEnabled(false);
        this.en.abortAnimation();
        int m = getScrollX();
        int n = getScrollY();
        int i1 = this.en.getCurrX();
        int i2 = this.en.getCurrY();
        if ((m != i1) || (n != i2))
          scrollTo(i1, i2);
      }
      this.ey = false;
      int j = 0;
      k = i;
      while (j < this.eg.size())
      {
        bw localbw = (bw)this.eg.get(j);
        if (localbw.fd)
        {
          localbw.fd = false;
          k = 1;
        }
        j++;
      }
    }
    if (k != 0)
    {
      if (paramBoolean)
        ba.a(this, this.fa);
    }
    else
      return;
    this.fa.run();
  }

  private void l(int paramInt)
  {
    if (this.dV == paramInt);
    label35: label71: 
    do
    {
      return;
      this.dV = paramInt;
      if (this.eW != null)
      {
        int i;
        int k;
        if (paramInt != 0)
        {
          i = 1;
          int j = getChildCount();
          k = 0;
          if (k >= j)
            continue;
          if (i == 0)
            break label71;
        }
        for (int m = 2; ; m = 0)
        {
          ba.a(getChildAt(k), m, null);
          k++;
          break label35;
          i = 0;
          break;
        }
      }
    }
    while (this.eT == null);
    this.eT.k(paramInt);
  }

  private bw m(View paramView)
  {
    for (int i = 0; i < this.eg.size(); i++)
    {
      bw localbw = (bw)this.eg.get(i);
      if (this.ei.a(paramView, localbw.fc))
        return localbw;
    }
    return null;
  }

  private bw n(View paramView)
  {
    while (true)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this)
        break;
      if ((localViewParent == null) || (!(localViewParent instanceof View)))
        return null;
      paramView = (View)localViewParent;
    }
    return m(paramView);
  }

  private void o(int paramInt)
  {
    int i15;
    bw localbw1;
    int i;
    if (this.ej != paramInt)
      if (this.ej < paramInt)
      {
        i15 = 66;
        bw localbw14 = p(this.ej);
        this.ej = paramInt;
        localbw1 = localbw14;
        i = i15;
      }
    while (true)
    {
      if (this.ei == null)
        am();
      do
      {
        return;
        i15 = 17;
        break;
        if (this.ey)
        {
          am();
          return;
        }
      }
      while (getWindowToken() == null);
      int j = this.ez;
      int k = Math.max(0, this.ej - j);
      int m = this.ei.getCount();
      int n = Math.min(m - 1, j + this.ej);
      if (m != this.ed)
        try
        {
          String str2 = getResources().getResourceName(getId());
          str1 = str2;
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.ed + ", found: " + m + " Pager id: " + str1 + " Pager class: " + getClass() + " Problematic adapter: " + this.ei.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          while (true)
            String str1 = Integer.toHexString(getId());
        }
      int i1 = 0;
      bw localbw2;
      if (i1 < this.eg.size())
      {
        localbw2 = (bw)this.eg.get(i1);
        if (localbw2.position >= this.ej)
          if (localbw2.position != this.ej)
            break label1287;
      }
      while (true)
      {
        if ((localbw2 == null) && (m > 0));
        for (bw localbw3 = b(this.ej, i1); ; localbw3 = localbw2)
        {
          label352: int i6;
          label366: int i9;
          label389: label500: label633: float f3;
          label522: label528: bw localbw8;
          label679: float f4;
          label687: int i13;
          int i14;
          Object localObject2;
          label711: bw localbw13;
          label807: Object localObject3;
          float f6;
          if (localbw3 != null)
          {
            int i5 = i1 - 1;
            bw localbw7;
            float f1;
            float f2;
            int i8;
            int i10;
            if (i5 >= 0)
            {
              localbw7 = (bw)this.eg.get(i5);
              i6 = aj();
              if (i6 > 0)
                break label500;
              f1 = 0.0F;
              int i7 = -1 + this.ej;
              f2 = 0.0F;
              i8 = i7;
              i9 = i1;
              i10 = i5;
              if (i8 < 0)
                break label633;
              if ((f2 < f1) || (i8 >= k))
                break label528;
              if (localbw7 == null)
                break label633;
              if ((i8 == localbw7.position) && (!localbw7.fd))
              {
                this.eg.remove(i10);
                this.ei.a(this, i8, localbw7.fc);
                i10--;
                i9--;
                if (i10 < 0)
                  break label522;
                localbw7 = (bw)this.eg.get(i10);
              }
            }
            while (true)
            {
              i8--;
              break label389;
              i1++;
              break;
              localbw7 = null;
              break label352;
              f1 = 2.0F - localbw3.fe + getPaddingLeft() / i6;
              break label366;
              localbw7 = null;
              continue;
              if ((localbw7 != null) && (i8 == localbw7.position))
              {
                f2 += localbw7.fe;
                i10--;
                if (i10 >= 0)
                  localbw7 = (bw)this.eg.get(i10);
                else
                  localbw7 = null;
              }
              else
              {
                f2 += b(i8, i10 + 1).fe;
                i9++;
                if (i10 >= 0)
                  localbw7 = (bw)this.eg.get(i10);
                else
                  localbw7 = null;
              }
            }
            f3 = localbw3.fe;
            int i11 = i9 + 1;
            if (f3 < 2.0F)
              if (i11 < this.eg.size())
              {
                localbw8 = (bw)this.eg.get(i11);
                if (i6 > 0)
                  break label843;
                f4 = 0.0F;
                int i12 = 1 + this.ej;
                bw localbw9 = localbw8;
                i13 = i11;
                i14 = i12;
                localObject2 = localbw9;
                if (i14 >= m)
                  break label1002;
                if ((f3 < f4) || (i14 <= n))
                  break label865;
                if (localObject2 == null)
                  break label1002;
                if ((i14 != ((bw)localObject2).position) || (((bw)localObject2).fd))
                  break label1265;
                this.eg.remove(i13);
                this.ei.a(this, i14, ((bw)localObject2).fc);
                if (i13 >= this.eg.size())
                  break label859;
                localbw13 = (bw)this.eg.get(i13);
                float f10 = f3;
                localObject3 = localbw13;
                f6 = f10;
              }
          }
          while (true)
          {
            i14++;
            float f7 = f6;
            localObject2 = localObject3;
            f3 = f7;
            break label711;
            localbw8 = null;
            break label679;
            label843: f4 = 2.0F + getPaddingRight() / i6;
            break label687;
            label859: localbw13 = null;
            break label807;
            label865: if ((localObject2 != null) && (i14 == ((bw)localObject2).position))
            {
              float f8 = f3 + ((bw)localObject2).fe;
              i13++;
              if (i13 < this.eg.size());
              for (bw localbw12 = (bw)this.eg.get(i13); ; localbw12 = null)
              {
                localObject3 = localbw12;
                f6 = f8;
                break;
              }
            }
            bw localbw10 = b(i14, i13);
            i13++;
            float f5 = f3 + localbw10.fe;
            if (i13 < this.eg.size());
            for (bw localbw11 = (bw)this.eg.get(i13); ; localbw11 = null)
            {
              localObject3 = localbw11;
              f6 = f5;
              break;
            }
            label1002: a(localbw3, i9, localbw1);
            an localan = this.ei;
            if (localbw3 != null);
            for (Object localObject1 = localbw3.fc; ; localObject1 = null)
            {
              localan.a(localObject1);
              this.ei.O();
              int i2 = getChildCount();
              for (int i3 = 0; i3 < i2; i3++)
              {
                View localView3 = getChildAt(i3);
                ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView3.getLayoutParams();
                localLayoutParams.fi = i3;
                if ((!localLayoutParams.fg) && (localLayoutParams.fe == 0.0F))
                {
                  bw localbw6 = m(localView3);
                  if (localbw6 != null)
                  {
                    localLayoutParams.fe = localbw6.fe;
                    localLayoutParams.position = localbw6.position;
                  }
                }
              }
            }
            am();
            if (!hasFocus())
              break;
            View localView1 = findFocus();
            if (localView1 != null);
            for (bw localbw4 = n(localView1); ; localbw4 = null)
            {
              if ((localbw4 != null) && (localbw4.position == this.ej))
                break label1263;
              for (int i4 = 0; ; i4++)
              {
                if (i4 >= getChildCount())
                  break label1257;
                View localView2 = getChildAt(i4);
                bw localbw5 = m(localView2);
                if ((localbw5 != null) && (localbw5.position == this.ej) && (localView2.requestFocus(i)))
                  break;
              }
              label1257: break;
            }
            label1263: break;
            label1265: float f9 = f3;
            localObject3 = localObject2;
            f6 = f9;
          }
        }
        label1287: localbw2 = null;
      }
      i = 2;
      localbw1 = null;
    }
  }

  private bw p(int paramInt)
  {
    for (int i = 0; i < this.eg.size(); i++)
    {
      bw localbw = (bw)this.eg.get(i);
      if (localbw.position == paramInt)
        return localbw;
    }
    return null;
  }

  private boolean q(int paramInt)
  {
    boolean bool1;
    if (this.eg.size() == 0)
    {
      this.eR = false;
      a(0, 0.0F);
      boolean bool2 = this.eR;
      bool1 = false;
      if (!bool2)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    else
    {
      bw localbw = an();
      int i = aj();
      float f1 = this.ep / i;
      int j = localbw.position;
      float f2 = (paramInt / i - localbw.ff) / (f1 + localbw.fe);
      this.eR = false;
      a(j, f2);
      if (!this.eR)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      bool1 = true;
    }
    return bool1;
  }

  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.ex != paramBoolean)
      this.ex = paramBoolean;
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    this.ey = false;
    a(paramInt, paramBoolean, false);
  }

  public void a(an paraman)
  {
    if (this.ei != null)
    {
      this.ei.unregisterDataSetObserver(this.eo);
      for (int i = 0; i < this.eg.size(); i++)
      {
        bw localbw = (bw)this.eg.get(i);
        this.ei.a(this, localbw.position, localbw.fc);
      }
      this.ei.O();
      this.eg.clear();
      for (int j = 0; j < getChildCount(); j++)
        if (!((ViewPager.LayoutParams)getChildAt(j).getLayoutParams()).fg)
        {
          removeViewAt(j);
          j--;
        }
      this.ej = 0;
      scrollTo(0, 0);
    }
    an localan = this.ei;
    this.ei = paraman;
    this.ed = 0;
    boolean bool;
    if (this.ei != null)
    {
      if (this.eo == null)
        this.eo = new cb(this, (byte)0);
      this.ei.registerDataSetObserver(this.eo);
      this.ey = false;
      bool = this.eP;
      this.eP = true;
      this.ed = this.ei.getCount();
      if (this.ek < 0)
        break label296;
      this.ei.a(this.el, this.em);
      a(this.ek, false, true);
      this.ek = -1;
      this.el = null;
      this.em = null;
    }
    while (true)
    {
      if ((this.eV != null) && (localan != paraman))
        this.eV.b(localan, paraman);
      return;
      label296: if (!bool)
        populate();
      else
        requestLayout();
    }
  }

  final void a(by paramby)
  {
    this.eV = paramby;
  }

  public final void a(bz parambz)
  {
    this.eT = parambz;
  }

  public void addFocusables(ArrayList paramArrayList, int paramInt1, int paramInt2)
  {
    int i = paramArrayList.size();
    int j = getDescendantFocusability();
    if (j != 393216)
      for (int k = 0; k < getChildCount(); k++)
      {
        View localView = getChildAt(k);
        if (localView.getVisibility() == 0)
        {
          bw localbw = m(localView);
          if ((localbw != null) && (localbw.position == this.ej))
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
    if (((j == 262144) && (i != paramArrayList.size())) || (!isFocusable()));
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null))
      return;
    paramArrayList.add(this);
  }

  public void addTouchables(ArrayList paramArrayList)
  {
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        bw localbw = m(localView);
        if ((localbw != null) && (localbw.position == this.ej))
          localView.addTouchables(paramArrayList);
      }
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams));
    for (ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(paramLayoutParams); ; localLayoutParams = paramLayoutParams)
    {
      ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localLayoutParams;
      localLayoutParams1.fg |= paramView instanceof bv;
      if (this.ao)
      {
        if ((localLayoutParams1 != null) && (localLayoutParams1.fg))
          throw new IllegalStateException("Cannot add pager decor view during layout");
        localLayoutParams1.fh = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, localLayoutParams);
      return;
    }
  }

  public final an ai()
  {
    return this.ei;
  }

  public final int ak()
  {
    return this.ej;
  }

  final void al()
  {
    int i = this.ei.getCount();
    this.ed = i;
    int j;
    int m;
    int n;
    int i1;
    int i2;
    label61: bw localbw;
    int i5;
    int i11;
    int i6;
    int i7;
    int i8;
    int i9;
    if ((this.eg.size() < 1 + 2 * this.ez) && (this.eg.size() < i))
    {
      j = 1;
      int k = this.ej;
      m = 0;
      n = k;
      i1 = j;
      i2 = 0;
      if (i2 >= this.eg.size())
        break label285;
      localbw = (bw)this.eg.get(i2);
      i5 = this.ei.b(localbw.fc);
      if (i5 == -1)
        break label375;
      if (i5 != -2)
        break label234;
      this.eg.remove(i2);
      i11 = i2 - 1;
      if (m == 0)
        m = 1;
      this.ei.a(this, localbw.position, localbw.fc);
      if (this.ej != localbw.position)
        break label394;
      int i12 = Math.max(0, Math.min(this.ej, i - 1));
      i6 = i11;
      i7 = m;
      i8 = i12;
      i9 = 1;
    }
    label285: 
    while (true)
    {
      int i10 = i6 + 1;
      i1 = i9;
      n = i8;
      m = i7;
      i2 = i10;
      break label61;
      j = 0;
      break;
      label234: if (localbw.position != i5)
      {
        if (localbw.position == this.ej)
          n = i5;
        localbw.position = i5;
        i6 = i2;
        i7 = m;
        i8 = n;
        i9 = 1;
        continue;
        if (m != 0)
          this.ei.O();
        Collections.sort(this.eg, ee);
        if (i1 != 0)
        {
          int i3 = getChildCount();
          for (int i4 = 0; i4 < i3; i4++)
          {
            ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)getChildAt(i4).getLayoutParams();
            if (!localLayoutParams.fg)
              localLayoutParams.fe = 0.0F;
          }
          a(n, false, true);
          requestLayout();
        }
      }
      else
      {
        label375: i6 = i2;
        i7 = m;
        i8 = n;
        i9 = i1;
        continue;
        i6 = i11;
        i7 = m;
        i8 = n;
        i9 = 1;
      }
    }
  }

  final bz b(bz parambz)
  {
    bz localbz = this.eU;
    this.eU = parambz;
    return localbz;
  }

  public boolean canScrollHorizontally(int paramInt)
  {
    if (this.ei == null);
    int i;
    int j;
    do
    {
      do
      {
        return false;
        i = aj();
        j = getScrollX();
        if (paramInt >= 0)
          break;
      }
      while (j <= (int)(i * this.et));
      return true;
    }
    while ((paramInt <= 0) || (j >= (int)(i * this.eu)));
    return true;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ViewPager.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public void computeScroll()
  {
    if ((!this.en.isFinished()) && (this.en.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.en.getCurrX();
      int m = this.en.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!q(k))
        {
          this.en.abortAnimation();
          scrollTo(0, m);
        }
      }
      ba.f(this);
      return;
    }
    e(true);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool2;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0);
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        bool2 = false;
      case 21:
      case 22:
      case 61:
      }
    }
    while (true)
    {
      boolean bool1 = false;
      if (bool2)
        bool1 = true;
      return bool1;
      bool2 = arrowScroll(17);
      continue;
      bool2 = arrowScroll(66);
      continue;
      if (Build.VERSION.SDK_INT < 11)
        break;
      if (u.b(paramKeyEvent))
      {
        bool2 = arrowScroll(2);
      }
      else
      {
        if (!u.a(paramKeyEvent))
          break;
        bool2 = arrowScroll(1);
      }
    }
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool;
    }
    int i = getChildCount();
    for (int j = 0; ; j++)
    {
      bool = false;
      if (j >= i)
        break;
      View localView = getChildAt(j);
      if (localView.getVisibility() == 0)
      {
        bw localbw = m(localView);
        if ((localbw != null) && (localbw.position == this.ej) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent)))
          return true;
      }
    }
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = ba.e(this);
    boolean bool2;
    if ((i == 0) || ((i == 1) && (this.ei != null) && (this.ei.getCount() > 1)))
    {
      boolean bool1 = this.eN.isFinished();
      bool2 = false;
      if (!bool1)
      {
        int n = paramCanvas.save();
        int i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i2 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), this.et * i2);
        this.eN.setSize(i1, i2);
        bool2 = false | this.eN.draw(paramCanvas);
        paramCanvas.restoreToCount(n);
      }
      if (!this.eO.isFinished())
      {
        int j = paramCanvas.save();
        int k = getWidth();
        int m = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.eu) * k);
        this.eO.setSize(m, k);
        bool2 |= this.eO.draw(paramCanvas);
        paramCanvas.restoreToCount(j);
      }
    }
    while (true)
    {
      if (bool2)
        ba.f(this);
      return;
      this.eN.finish();
      this.eO.finish();
      bool2 = false;
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.eq;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.LayoutParams();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }

  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.eX == 2)
      paramInt2 = paramInt1 - 1 - paramInt2;
    return ((ViewPager.LayoutParams)((View)this.eY.get(paramInt2)).getLayoutParams()).fi;
  }

  public final void m(int paramInt)
  {
    this.ey = false;
    if (!this.eP);
    for (boolean bool = true; ; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }

  public final void n(int paramInt)
  {
    if (paramInt <= 0)
    {
      new StringBuilder("Requested offscreen page limit ").append(paramInt).append(" too small; defaulting to 1").toString();
      paramInt = 1;
    }
    if (paramInt != this.ez)
    {
      this.ez = paramInt;
      populate();
    }
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.eP = true;
  }

  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.fa);
    super.onDetachedFromWindow();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.ep > 0) && (this.eq != null) && (this.eg.size() > 0) && (this.ei != null))
    {
      int i = getScrollX();
      int j = getWidth();
      float f1 = this.ep / j;
      bw localbw = (bw)this.eg.get(0);
      float f2 = localbw.ff;
      int k = this.eg.size();
      int m = localbw.position;
      int n = ((bw)this.eg.get(k - 1)).position;
      int i1 = 0;
      int i2 = m;
      if (i2 < n)
      {
        while ((i2 > localbw.position) && (i1 < k))
        {
          ArrayList localArrayList = this.eg;
          i1++;
          localbw = (bw)localArrayList.get(i1);
        }
        float f3;
        if (i2 == localbw.position)
          f3 = (localbw.ff + localbw.fe) * j;
        for (f2 = f1 + (localbw.ff + localbw.fe); ; f2 += 1.0F + f1)
        {
          if (f3 + this.ep > i)
          {
            this.eq.setBounds((int)f3, this.er, (int)(0.5F + (f3 + this.ep)), this.es);
            this.eq.draw(paramCanvas);
          }
          if (f3 > i + j)
            return;
          i2++;
          break;
          f3 = (1.0F + f2) * j;
        }
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 0xFF & paramMotionEvent.getAction();
    if ((i == 3) || (i == 1))
    {
      this.eA = false;
      this.eB = false;
      this.eG = -1;
      if (this.eH != null)
      {
        this.eH.recycle();
        this.eH = null;
      }
    }
    do
    {
      return false;
      if (i == 0)
        break;
      if (this.eA)
        return true;
    }
    while (this.eB);
    switch (i)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      if (this.eH == null)
        this.eH = VelocityTracker.obtain();
      this.eH.addMovement(paramMotionEvent);
      return this.eA;
      int j = this.eG;
      if (j != -1)
      {
        int k = aj.a(paramMotionEvent, j);
        float f3 = aj.c(paramMotionEvent, k);
        float f4 = f3 - this.eE;
        float f5 = Math.abs(f4);
        float f6 = aj.d(paramMotionEvent, k);
        float f7 = Math.abs(f6 - this.dB);
        if (f4 != 0.0F)
        {
          float f9 = this.eE;
          if (((f9 < this.eD) && (f4 > 0.0F)) || ((f9 > getWidth() - this.eD) && (f4 < 0.0F)));
          for (int m = 1; (m == 0) && (a(this, false, (int)f4, (int)f3, (int)f6)); m = 0)
          {
            this.eE = f3;
            this.eF = f6;
            this.eB = true;
            return false;
          }
        }
        float f8;
        if ((f5 > this.dC) && (0.5F * f5 > f7))
        {
          this.eA = true;
          l(1);
          if (f4 > 0.0F)
          {
            f8 = this.dA + this.dC;
            label360: this.eE = f8;
            this.eF = f6;
            setScrollingCacheEnabled(true);
          }
        }
        while ((this.eA) && (a(f3)))
        {
          ba.f(this);
          break;
          f8 = this.dA - this.dC;
          break label360;
          if (f7 > this.dC)
            this.eB = true;
        }
        float f1 = paramMotionEvent.getX();
        this.dA = f1;
        this.eE = f1;
        float f2 = paramMotionEvent.getY();
        this.dB = f2;
        this.eF = f2;
        this.eG = aj.b(paramMotionEvent, 0);
        this.eB = false;
        this.en.computeScrollOffset();
        if ((this.dV == 2) && (Math.abs(this.en.getFinalX() - this.en.getCurrX()) > this.eL))
        {
          this.en.abortAnimation();
          this.ey = false;
          populate();
          this.eA = true;
          l(1);
        }
        else
        {
          e(false);
          this.eA = false;
          continue;
          d(paramMotionEvent);
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = paramInt3 - paramInt1;
    int k = paramInt4 - paramInt2;
    int m = getPaddingLeft();
    int n = getPaddingTop();
    int i1 = getPaddingRight();
    int i2 = getPaddingBottom();
    int i3 = getScrollX();
    int i4 = 0;
    int i5 = 0;
    View localView2;
    int i16;
    label156: int i17;
    int i19;
    int i20;
    label208: int i9;
    int i10;
    int i11;
    if (i5 < i)
    {
      localView2 = getChildAt(i5);
      if (localView2.getVisibility() == 8)
        break label659;
      ViewPager.LayoutParams localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
      if (!localLayoutParams2.fg)
        break label659;
      int i13 = 0x7 & localLayoutParams2.gravity;
      int i14 = 0x70 & localLayoutParams2.gravity;
      switch (i13)
      {
      case 2:
      case 4:
      default:
        i16 = m;
        switch (i14)
        {
        default:
          i17 = n;
          int i25 = i2;
          i19 = n;
          i20 = i25;
          int i21 = i16 + i3;
          localView2.layout(i21, i17, i21 + localView2.getMeasuredWidth(), i17 + localView2.getMeasuredHeight());
          i9 = i4 + 1;
          i10 = i19;
          i2 = i20;
          i11 = i1;
        case 48:
        case 16:
        case 80:
        }
        break;
      case 3:
      case 1:
      case 5:
      }
    }
    for (int i12 = m; ; i12 = m)
    {
      i5++;
      m = i12;
      i1 = i11;
      n = i10;
      i4 = i9;
      break;
      int i26 = m + localView2.getMeasuredWidth();
      i16 = m;
      m = i26;
      break label156;
      i16 = Math.max((j - localView2.getMeasuredWidth()) / 2, m);
      break label156;
      int i15 = j - i1 - localView2.getMeasuredWidth();
      i1 += localView2.getMeasuredWidth();
      i16 = i15;
      break label156;
      int i23 = n + localView2.getMeasuredHeight();
      int i24 = n;
      i20 = i2;
      i19 = i23;
      i17 = i24;
      break label208;
      i17 = Math.max((k - localView2.getMeasuredHeight()) / 2, n);
      int i22 = i2;
      i19 = n;
      i20 = i22;
      break label208;
      i17 = k - i2 - localView2.getMeasuredHeight();
      int i18 = i2 + localView2.getMeasuredHeight();
      i19 = n;
      i20 = i18;
      break label208;
      int i6 = j - m - i1;
      for (int i7 = 0; i7 < i; i7++)
      {
        View localView1 = getChildAt(i7);
        if (localView1.getVisibility() != 8)
        {
          ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
          if (!localLayoutParams1.fg)
          {
            bw localbw = m(localView1);
            if (localbw != null)
            {
              int i8 = m + (int)(i6 * localbw.ff);
              if (localLayoutParams1.fh)
              {
                localLayoutParams1.fh = false;
                localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(i6 * localLayoutParams1.fe), 1073741824), View.MeasureSpec.makeMeasureSpec(k - n - i2, 1073741824));
              }
              localView1.layout(i8, n, i8 + localView1.getMeasuredWidth(), n + localView1.getMeasuredHeight());
            }
          }
        }
      }
      this.er = n;
      this.es = (k - i2);
      this.eS = i4;
      if (this.eP)
        a(this.ej, false, 0, false);
      this.eP = false;
      return;
      label659: i9 = i4;
      i10 = n;
      i11 = i1;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i = getMeasuredWidth();
    this.eD = Math.min(i / 10, this.eC);
    int j = i - getPaddingLeft() - getPaddingRight();
    int k = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int m = getChildCount();
    int n = 0;
    View localView2;
    ViewPager.LayoutParams localLayoutParams2;
    int i5;
    int i6;
    int i7;
    label167: int i8;
    label182: label192: int i9;
    int i10;
    if (n < m)
    {
      localView2 = getChildAt(n);
      if (localView2.getVisibility() != 8)
      {
        localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
        if ((localLayoutParams2 != null) && (localLayoutParams2.fg))
        {
          int i3 = 0x7 & localLayoutParams2.gravity;
          int i4 = 0x70 & localLayoutParams2.gravity;
          i5 = -2147483648;
          i6 = -2147483648;
          if ((i4 != 48) && (i4 != 80))
            break label294;
          i7 = 1;
          if ((i3 != 3) && (i3 != 5))
            break label300;
          i8 = 1;
          if (i7 == 0)
            break label306;
          i5 = 1073741824;
          if (localLayoutParams2.width == -2)
            break label478;
          i9 = 1073741824;
          if (localLayoutParams2.width == -1)
            break label471;
          i10 = localLayoutParams2.width;
        }
      }
    }
    while (true)
    {
      if (localLayoutParams2.height != -2)
      {
        i6 = 1073741824;
        if (localLayoutParams2.height == -1);
      }
      for (int i11 = localLayoutParams2.height; ; i11 = k)
      {
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i11, i6));
        if (i7 != 0)
          k -= localView2.getMeasuredHeight();
        while (true)
        {
          n++;
          break;
          label294: i7 = 0;
          break label167;
          label300: i8 = 0;
          break label182;
          label306: if (i8 == 0)
            break label192;
          i6 = 1073741824;
          break label192;
          if (i8 != 0)
            j -= localView2.getMeasuredWidth();
        }
        this.ev = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
        this.ew = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
        this.ao = true;
        populate();
        this.ao = false;
        int i1 = getChildCount();
        for (int i2 = 0; i2 < i1; i2++)
        {
          View localView1 = getChildAt(i2);
          if (localView1.getVisibility() != 8)
          {
            ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
            if ((localLayoutParams1 == null) || (!localLayoutParams1.fg))
              localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(j * localLayoutParams1.fe), 1073741824), this.ew);
          }
        }
        return;
      }
      label471: i10 = j;
      continue;
      label478: i9 = i5;
      i10 = j;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i = -1;
    int j = getChildCount();
    int k;
    if ((paramInt & 0x2) != 0)
    {
      i = 1;
      k = 0;
    }
    while (k != j)
    {
      View localView = getChildAt(k);
      if (localView.getVisibility() == 0)
      {
        bw localbw = m(localView);
        if ((localbw != null) && (localbw.position == this.ej) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          k = j - 1;
          j = i;
        }
      }
      else
      {
        k += i;
      }
    }
    return false;
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    ViewPager.SavedState localSavedState = (ViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.ei != null)
    {
      this.ei.a(localSavedState.fj, localSavedState.fk);
      a(localSavedState.position, false, true);
      return;
    }
    this.ek = localSavedState.position;
    this.el = localSavedState.fj;
    this.em = localSavedState.fk;
  }

  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.position = this.ej;
    if (this.ei != null)
      localSavedState.fj = this.ei.P();
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
    {
      int i = this.ep;
      int j = this.ep;
      if ((paramInt3 <= 0) || (this.eg.isEmpty()))
        break label158;
      int m = i + (paramInt1 - getPaddingLeft() - getPaddingRight());
      int n = j + (paramInt3 - getPaddingLeft() - getPaddingRight());
      int i1 = (int)(getScrollX() / n * m);
      scrollTo(i1, getScrollY());
      if (!this.en.isFinished())
      {
        int i2 = this.en.getDuration() - this.en.timePassed();
        bw localbw2 = p(this.ej);
        this.en.startScroll(i1, 0, (int)(localbw2.ff * paramInt1), 0, i2);
      }
    }
    return;
    label158: bw localbw1 = p(this.ej);
    if (localbw1 != null);
    for (float f = Math.min(localbw1.ff, this.eu); ; f = 0.0F)
    {
      int k = (int)(f * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (k == getScrollX())
        break;
      e(false);
      scrollTo(k, getScrollY());
      return;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.eM)
      return true;
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      return false;
    if ((this.ei == null) || (this.ei.getCount() == 0))
      return false;
    if (this.eH == null)
      this.eH = VelocityTracker.obtain();
    this.eH.addMovement(paramMotionEvent);
    int i = 0xFF & paramMotionEvent.getAction();
    boolean bool1 = false;
    switch (i)
    {
    case 4:
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      if (bool1)
        ba.f(this);
      return true;
      this.en.abortAnimation();
      this.ey = false;
      populate();
      this.eA = true;
      l(1);
      float f8 = paramMotionEvent.getX();
      this.dA = f8;
      this.eE = f8;
      float f9 = paramMotionEvent.getY();
      this.dB = f9;
      this.eF = f9;
      this.eG = aj.b(paramMotionEvent, 0);
      bool1 = false;
      continue;
      float f5;
      if (!this.eA)
      {
        int i3 = aj.a(paramMotionEvent, this.eG);
        float f3 = aj.c(paramMotionEvent, i3);
        float f4 = Math.abs(f3 - this.eE);
        f5 = aj.d(paramMotionEvent, i3);
        float f6 = Math.abs(f5 - this.eF);
        if ((f4 > this.dC) && (f4 > f6))
        {
          this.eA = true;
          if (f3 - this.dA <= 0.0F)
            break label368;
        }
      }
      label368: for (float f7 = this.dA + this.dC; ; f7 = this.dA - this.dC)
      {
        this.eE = f7;
        this.eF = f5;
        l(1);
        setScrollingCacheEnabled(true);
        boolean bool4 = this.eA;
        bool1 = false;
        if (!bool4)
          break;
        bool1 = false | a(aj.c(paramMotionEvent, aj.a(paramMotionEvent, this.eG)));
        break;
      }
      boolean bool3 = this.eA;
      bool1 = false;
      if (bool3)
      {
        VelocityTracker localVelocityTracker = this.eH;
        localVelocityTracker.computeCurrentVelocity(1000, this.eJ);
        int k = (int)aw.a(localVelocityTracker, this.eG);
        this.ey = true;
        int m = aj();
        int n = getScrollX();
        bw localbw1 = an();
        int i1 = localbw1.position;
        float f1 = (n / m - localbw1.ff) / localbw1.fe;
        int i2;
        if ((Math.abs((int)(aj.c(paramMotionEvent, aj.a(paramMotionEvent, this.eG)) - this.dA)) > this.eK) && (Math.abs(k) > this.eI))
        {
          if (k > 0);
          while (true)
          {
            i2 = i1;
            if (this.eg.size() > 0)
            {
              bw localbw2 = (bw)this.eg.get(0);
              bw localbw3 = (bw)this.eg.get(-1 + this.eg.size());
              i2 = Math.max(localbw2.position, Math.min(i2, localbw3.position));
            }
            a(i2, true, true, k);
            this.eG = -1;
            ao();
            bool1 = this.eN.aG() | this.eO.aG();
            break;
            i1++;
          }
        }
        if (i1 >= this.ej);
        for (float f2 = 0.6F; ; f2 = 0.4F)
        {
          i2 = (int)(f2 + (f1 + i1));
          break;
        }
        boolean bool2 = this.eA;
        bool1 = false;
        if (bool2)
        {
          a(this.ej, true, 0, false);
          this.eG = -1;
          ao();
          bool1 = this.eN.aG() | this.eO.aG();
          continue;
          int j = aj.b(paramMotionEvent);
          this.eE = aj.c(paramMotionEvent, j);
          this.eG = aj.b(paramMotionEvent, j);
          bool1 = false;
          continue;
          d(paramMotionEvent);
          this.eE = aj.c(paramMotionEvent, aj.a(paramMotionEvent, this.eG));
          bool1 = false;
        }
      }
    }
  }

  final void populate()
  {
    o(this.ej);
  }

  public void removeView(View paramView)
  {
    if (this.ao)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.eq);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.6.2
 */