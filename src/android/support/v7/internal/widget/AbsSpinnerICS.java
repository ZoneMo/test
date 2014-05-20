package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.SpinnerAdapter;

abstract class AbsSpinnerICS extends u
{
  SpinnerAdapter lE;
  int lF;
  int lG;
  boolean lH;
  int lI = 0;
  int lJ = 0;
  int lK = 0;
  int lL = 0;
  final Rect lM = new Rect();
  final c lN = new c(this);
  private DataSetObserver mDataSetObserver;

  AbsSpinnerICS(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    setFocusable(true);
    setWillNotDraw(false);
  }

  final void cF()
  {
    this.nP = false;
    this.nK = false;
    removeAllViewsInLayout();
    this.nX = -1;
    this.nY = -9223372036854775808L;
    K(-1);
    L(-1);
    invalidate();
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.LayoutParams(-1, -2);
  }

  public final View getSelectedView()
  {
    if ((this.nV > 0) && (this.nS >= 0))
      return getChildAt(this.nS - this.nF);
    return null;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = getPaddingLeft();
    int k = getPaddingTop();
    int m = getPaddingRight();
    int n = getPaddingBottom();
    Rect localRect1 = this.lM;
    int i1;
    label70: int i2;
    label96: int i3;
    label122: int i7;
    int i6;
    int i5;
    if (j > this.lI)
    {
      localRect1.left = j;
      Rect localRect2 = this.lM;
      if (k <= this.lJ)
        break label413;
      i1 = k;
      localRect2.top = i1;
      Rect localRect3 = this.lM;
      if (m <= this.lK)
        break label422;
      i2 = m;
      localRect3.right = i2;
      Rect localRect4 = this.lM;
      if (n <= this.lL)
        break label431;
      i3 = n;
      localRect4.bottom = i3;
      if (this.nP)
        handleDataChanged();
      int i4 = this.nQ;
      if ((i4 < 0) || (this.lE == null) || (i4 >= this.lE.getCount()))
        break label440;
      View localView = this.lN.F(i4);
      if (localView == null)
        localView = this.lE.getView(i4, null, this);
      if (localView != null)
        this.lN.b(i4, localView);
      if (localView == null)
        break label440;
      if (localView.getLayoutParams() == null)
      {
        this.lH = true;
        localView.setLayoutParams(generateDefaultLayoutParams());
        this.lH = false;
      }
      measureChild(localView, paramInt1, paramInt2);
      i7 = localView.getMeasuredHeight() + this.lM.top + this.lM.bottom;
      i6 = localView.getMeasuredWidth() + this.lM.left + this.lM.right;
      i5 = 0;
    }
    while (true)
    {
      if (i5 != 0)
      {
        i7 = this.lM.top + this.lM.bottom;
        if (i == 0)
          i6 = this.lM.left + this.lM.right;
      }
      int i8 = Math.max(i7, getSuggestedMinimumHeight());
      int i9 = Math.max(i6, getSuggestedMinimumWidth());
      int i10 = resolveSize(i8, paramInt2);
      setMeasuredDimension(resolveSize(i9, paramInt1), i10);
      this.lF = paramInt2;
      this.lG = paramInt1;
      return;
      j = this.lI;
      break;
      label413: i1 = this.lJ;
      break label70;
      label422: i2 = this.lK;
      break label96;
      label431: i3 = this.lL;
      break label122;
      label440: i5 = 1;
      i6 = 0;
      i7 = 0;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    AbsSpinnerICS.SavedState localSavedState = (AbsSpinnerICS.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.lQ >= 0L)
    {
      this.nP = true;
      this.nK = true;
      this.nI = localSavedState.lQ;
      this.nH = localSavedState.position;
      this.nL = 0;
      requestLayout();
    }
  }

  public Parcelable onSaveInstanceState()
  {
    AbsSpinnerICS.SavedState localSavedState = new AbsSpinnerICS.SavedState(super.onSaveInstanceState());
    localSavedState.lQ = this.nR;
    if (localSavedState.lQ >= 0L)
    {
      localSavedState.position = this.nQ;
      return localSavedState;
    }
    localSavedState.position = -1;
    return localSavedState;
  }

  public void requestLayout()
  {
    if (!this.lH)
      super.requestLayout();
  }

  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    int i = -1;
    if (this.lE != null)
    {
      this.lE.unregisterDataSetObserver(this.mDataSetObserver);
      cF();
    }
    this.lE = paramSpinnerAdapter;
    this.nX = i;
    this.nY = -9223372036854775808L;
    if (this.lE != null)
    {
      this.nW = this.nV;
      this.nV = this.lE.getCount();
      df();
      this.mDataSetObserver = new v(this);
      this.lE.registerDataSetObserver(this.mDataSetObserver);
      if (this.nV > 0)
        i = 0;
      K(i);
      L(i);
      if (this.nV == 0)
        dh();
    }
    while (true)
    {
      requestLayout();
      return;
      df();
      cF();
      dh();
    }
  }

  public final void setSelection(int paramInt)
  {
    L(paramInt);
    requestLayout();
    invalidate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.AbsSpinnerICS
 * JD-Core Version:    0.6.2
 */