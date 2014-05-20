package android.support.v7.internal.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class ActionBarView$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new i();
  int mQ;
  boolean mR;

  private ActionBarView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.mQ = paramParcel.readInt();
    if (paramParcel.readInt() != 0);
    for (boolean bool = true; ; bool = false)
    {
      this.mR = bool;
      return;
    }
  }

  ActionBarView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.mQ);
    if (this.mR);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarView.SavedState
 * JD-Core Version:    0.6.2
 */