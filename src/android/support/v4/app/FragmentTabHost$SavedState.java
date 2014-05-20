package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class FragmentTabHost$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new t();
  String bW;

  private FragmentTabHost$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.bW = paramParcel.readString();
  }

  FragmentTabHost$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public String toString()
  {
    return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.bW + "}";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.bW);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentTabHost.SavedState
 * JD-Core Version:    0.6.2
 */