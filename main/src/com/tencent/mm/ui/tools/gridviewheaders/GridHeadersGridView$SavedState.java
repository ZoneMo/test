package com.tencent.mm.ui.tools.gridviewheaders;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class GridHeadersGridView$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new p();
  boolean hoz;

  private GridHeadersGridView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel.readByte() != 0);
    for (boolean bool = true; ; bool = false)
    {
      this.hoz = bool;
      return;
    }
  }

  public GridHeadersGridView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public String toString()
  {
    return "StickyGridHeadersGridView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " areHeadersSticky=" + this.hoz + "}";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if (this.hoz);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeByte((byte)i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.GridHeadersGridView.SavedState
 * JD-Core Version:    0.6.2
 */