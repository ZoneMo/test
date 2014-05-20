package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class am
  implements SafeParcelable
{
  public static final u LQ = new u();
  private final int KH;
  private final ao LR;

  am(int paramInt, ao paramao)
  {
    this.KH = paramInt;
    this.LR = paramao;
  }

  private am(ao paramao)
  {
    this.KH = 1;
    this.LR = paramao;
  }

  public static am a(x paramx)
  {
    if ((paramx instanceof ao))
      return new am((ao)paramx);
    throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
  }

  public int describeContents()
  {
    return 0;
  }

  final int hH()
  {
    return this.KH;
  }

  final ao ie()
  {
    return this.LR;
  }

  public final x jdMethod_if()
  {
    if (this.LR != null)
      return this.LR;
    throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    u.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.am
 * JD-Core Version:    0.6.2
 */