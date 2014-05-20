package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class FragmentManagerState
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new q();
  FragmentState[] bH;
  int[] bI;
  BackStackState[] bJ;

  public FragmentManagerState()
  {
  }

  public FragmentManagerState(Parcel paramParcel)
  {
    this.bH = ((FragmentState[])paramParcel.createTypedArray(FragmentState.CREATOR));
    this.bI = paramParcel.createIntArray();
    this.bJ = ((BackStackState[])paramParcel.createTypedArray(BackStackState.CREATOR));
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedArray(this.bH, paramInt);
    paramParcel.writeIntArray(this.bI);
    paramParcel.writeTypedArray(this.bJ, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentManagerState
 * JD-Core Version:    0.6.2
 */