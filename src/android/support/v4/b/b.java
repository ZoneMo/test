package android.support.v4.b;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator
{
  final c cH;

  public b(c paramc)
  {
    this.cH = paramc;
  }

  public final Object createFromParcel(Parcel paramParcel)
  {
    return this.cH.createFromParcel(paramParcel, null);
  }

  public final Object[] newArray(int paramInt)
  {
    return this.cH.newArray(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.b.b
 * JD-Core Version:    0.6.2
 */