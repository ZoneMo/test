package android.support.v4.b;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

final class d
  implements Parcelable.ClassLoaderCreator
{
  private final c cH;

  public d(c paramc)
  {
    this.cH = paramc;
  }

  public final Object createFromParcel(Parcel paramParcel)
  {
    return this.cH.createFromParcel(paramParcel, null);
  }

  public final Object createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return this.cH.createFromParcel(paramParcel, paramClassLoader);
  }

  public final Object[] newArray(int paramInt)
  {
    return this.cH.newArray(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.b.d
 * JD-Core Version:    0.6.2
 */