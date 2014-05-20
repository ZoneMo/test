package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

public class en
  implements SafeParcelable
{
  public static final bt NB = new bt();
  private final int KH;
  private final String KM;
  private final ArrayList NC;
  private final ArrayList ND;
  private final boolean NE;

  public en(int paramInt, String paramString, ArrayList paramArrayList1, ArrayList paramArrayList2, boolean paramBoolean)
  {
    this.KH = paramInt;
    this.KM = paramString;
    this.NC = paramArrayList1;
    this.ND = paramArrayList2;
    this.NE = paramBoolean;
  }

  public int describeContents()
  {
    return 0;
  }

  public final String getDescription()
  {
    return this.KM;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final ArrayList jc()
  {
    return this.NC;
  }

  public final ArrayList jd()
  {
    return this.ND;
  }

  public final boolean je()
  {
    return this.NE;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bt.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.en
 * JD-Core Version:    0.6.2
 */