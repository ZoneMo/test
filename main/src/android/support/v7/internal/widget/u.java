package android.support.v7.internal.widget;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewDebug.CapturedViewProperty;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Adapter;

abstract class u extends ViewGroup
{
  boolean ao = false;
  boolean lH = false;

  @ViewDebug.ExportedProperty(category="scrolling")
  int nF = 0;
  int nG;
  int nH;
  long nI = -9223372036854775808L;
  long nJ;
  boolean nK = false;
  int nL;
  private int nM;
  y nN;
  w nO;
  boolean nP;

  @ViewDebug.ExportedProperty(category="list")
  int nQ = -1;
  long nR = -9223372036854775808L;

  @ViewDebug.ExportedProperty(category="list")
  int nS = -1;
  long nT = -9223372036854775808L;
  private View nU;

  @ViewDebug.ExportedProperty(category="list")
  int nV;
  int nW;
  int nX = -1;
  long nY = -9223372036854775808L;
  private boolean nZ;
  private boolean oa;
  private z ob;

  u(Context paramContext, int paramInt)
  {
    super(paramContext, null, paramInt);
  }

  private void dg()
  {
    if (this.nN == null)
      return;
    int i = this.nQ;
    if (i >= 0)
    {
      getSelectedView();
      y localy = this.nN;
      getAdapter().getItemId(i);
      localy.cP();
      return;
    }
  }

  private long getItemIdAtPosition(int paramInt)
  {
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (paramInt < 0))
      return -9223372036854775808L;
    return localAdapter.getItemId(paramInt);
  }

  final void K(int paramInt)
  {
    this.nS = paramInt;
    this.nT = getItemIdAtPosition(paramInt);
  }

  final void L(int paramInt)
  {
    this.nQ = paramInt;
    this.nR = getItemIdAtPosition(paramInt);
    if ((this.nK) && (this.nL == 0) && (paramInt >= 0))
    {
      this.nH = paramInt;
      this.nI = this.nR;
    }
  }

  public void a(w paramw)
  {
    this.nO = paramw;
  }

  public void addView(View paramView)
  {
    throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
  }

  public void addView(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
  }

  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
  }

  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (this.nV > 0);
  }

  final void df()
  {
    boolean bool1 = true;
    Adapter localAdapter = getAdapter();
    int i;
    int j;
    label29: boolean bool2;
    label44: boolean bool3;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = bool1;
      if (i != 0)
        break label150;
      j = bool1;
      if ((j == 0) || (!this.oa))
        break label156;
      bool2 = bool1;
      super.setFocusableInTouchMode(bool2);
      if ((j == 0) || (!this.nZ))
        break label162;
      bool3 = bool1;
      label65: super.setFocusable(bool3);
      if (this.nU != null)
      {
        if ((localAdapter != null) && (!localAdapter.isEmpty()))
          break label168;
        label91: if (!bool1)
          break label181;
        if (this.nU == null)
          break label173;
        this.nU.setVisibility(0);
        setVisibility(8);
      }
    }
    while (true)
    {
      if (this.nP)
        onLayout(false, getLeft(), getTop(), getRight(), getBottom());
      return;
      i = 0;
      break;
      label150: j = 0;
      break label29;
      label156: bool2 = false;
      break label44;
      label162: bool3 = false;
      break label65;
      label168: bool1 = false;
      break label91;
      label173: setVisibility(0);
    }
    label181: if (this.nU != null)
      this.nU.setVisibility(8);
    setVisibility(0);
  }

  final void dh()
  {
    if ((this.nS != this.nX) || (this.nT != this.nY))
      if (this.nN != null)
      {
        if ((!this.ao) && (!this.lH))
          break label117;
        if (this.ob == null)
          this.ob = new z(this, (byte)0);
        post(this.ob);
      }
    while (true)
    {
      if ((this.nS != -1) && (isShown()) && (!isInTouchMode()))
        sendAccessibilityEvent(4);
      this.nX = this.nS;
      this.nY = this.nT;
      return;
      label117: dg();
    }
  }

  final void di()
  {
    if (getChildCount() > 0)
    {
      this.nK = true;
      this.nJ = this.nM;
      if (this.nS >= 0)
      {
        View localView2 = getChildAt(this.nS - this.nF);
        this.nI = this.nR;
        this.nH = this.nQ;
        if (localView2 != null)
          this.nG = localView2.getTop();
        this.nL = 0;
      }
    }
    else
    {
      return;
    }
    View localView1 = getChildAt(0);
    Adapter localAdapter = getAdapter();
    if ((this.nF >= 0) && (this.nF < localAdapter.getCount()));
    for (this.nI = localAdapter.getItemId(this.nF); ; this.nI = -1L)
    {
      this.nH = this.nF;
      if (localView1 != null)
        this.nG = localView1.getTop();
      this.nL = 1;
      return;
    }
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    View localView = getSelectedView();
    return (localView != null) && (localView.getVisibility() == 0) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent));
  }

  protected void dispatchRestoreInstanceState(SparseArray paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }

  protected void dispatchSaveInstanceState(SparseArray paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }

  public final boolean g(View paramView, int paramInt)
  {
    if (this.nO != null)
    {
      playSoundEffect(0);
      if (paramView != null)
        paramView.sendAccessibilityEvent(1);
      this.nO.h(paramView, paramInt);
      return true;
    }
    return false;
  }

  public abstract Adapter getAdapter();

  @ViewDebug.CapturedViewProperty
  public final int getSelectedItemPosition()
  {
    return this.nQ;
  }

  public abstract View getSelectedView();

  final void handleDataChanged()
  {
    int i = this.nV;
    int m;
    int i3;
    int i4;
    int i5;
    int n;
    if (i > 0)
      if (this.nK)
      {
        this.nK = false;
        m = this.nV;
        if (m != 0)
        {
          long l1 = this.nI;
          int i1 = this.nH;
          if (l1 != -9223372036854775808L)
          {
            int i2 = Math.max(0, i1);
            i3 = Math.min(m - 1, i2);
            long l2 = 100L + SystemClock.uptimeMillis();
            i4 = 0;
            Adapter localAdapter = getAdapter();
            if (localAdapter != null)
            {
              i5 = i3;
              n = i3;
              if (SystemClock.uptimeMillis() <= l2)
                if (localAdapter.getItemId(n) == l1)
                {
                  label127: if ((n < 0) || (n != n))
                    break label332;
                  L(n);
                  j = 1;
                  label147: if (j == 0)
                  {
                    int k = this.nQ;
                    if (k >= i)
                      k = i - 1;
                    if (k < 0)
                      k = 0;
                    if ((k >= 0) || (k >= 0))
                    {
                      L(k);
                      dh();
                    }
                  }
                }
            }
          }
        }
      }
    for (int j = 1; ; j = 0)
    {
      if (j == 0)
      {
        this.nS = -1;
        this.nT = -9223372036854775808L;
        this.nQ = -1;
        this.nR = -9223372036854775808L;
        this.nK = false;
        dh();
      }
      return;
      int i6;
      label240: int i7;
      if (i3 == m - 1)
      {
        i6 = 1;
        if (i5 != 0)
          break label292;
        i7 = 1;
      }
      while (true)
        if ((i6 == 0) || (i7 == 0))
        {
          if ((i7 != 0) || ((i4 != 0) && (i6 == 0)))
          {
            i3++;
            n = i3;
            i4 = 0;
            break;
            i6 = 0;
            break label240;
            label292: i7 = 0;
            continue;
          }
          if ((i6 == 0) && ((i4 != 0) || (i7 != 0)))
            break;
          i5--;
          i4 = 1;
          n = i5;
          break;
        }
      n = -1;
      break label127;
      label332: j = 0;
      break label147;
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.ob);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.nM = getHeight();
  }

  public void removeAllViews()
  {
    throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
  }

  public void removeView(View paramView)
  {
    throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
  }

  public void removeViewAt(int paramInt)
  {
    throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
  }

  public void setFocusable(boolean paramBoolean)
  {
    boolean bool1 = true;
    Adapter localAdapter = getAdapter();
    boolean bool2;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      bool2 = bool1;
      this.nZ = paramBoolean;
      if (!paramBoolean)
        this.oa = false;
      if ((!paramBoolean) || (bool2))
        break label58;
    }
    while (true)
    {
      super.setFocusable(bool1);
      return;
      bool2 = false;
      break;
      label58: bool1 = false;
    }
  }

  public void setFocusableInTouchMode(boolean paramBoolean)
  {
    boolean bool1 = true;
    Adapter localAdapter = getAdapter();
    boolean bool2;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      bool2 = bool1;
      this.oa = paramBoolean;
      if (paramBoolean)
        this.nZ = bool1;
      if ((!paramBoolean) || (bool2))
        break label58;
    }
    while (true)
    {
      super.setFocusableInTouchMode(bool1);
      return;
      bool2 = false;
      break;
      label58: bool1 = false;
    }
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.u
 * JD-Core Version:    0.6.2
 */