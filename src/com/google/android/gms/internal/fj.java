package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;

public class fj
  implements SafeParcelable
{
  public static final cl PS = new cl();
  private final int KH;
  private final boolean PT;
  private final ArrayList PU;
  private final ArrayList PV;
  private final Bundle PW;
  private final boolean PX;

  public fj(int paramInt, boolean paramBoolean1, ArrayList paramArrayList1, ArrayList paramArrayList2, Bundle paramBundle, boolean paramBoolean2)
  {
    this.KH = paramInt;
    this.PT = paramBoolean1;
    this.PU = paramArrayList1;
    this.PV = paramArrayList2;
    this.PW = paramBundle;
    this.PX = paramBoolean2;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof fj));
    fj localfj;
    do
    {
      return false;
      localfj = (fj)paramObject;
    }
    while ((this.KH != localfj.KH) || (!g.b(Boolean.valueOf(this.PT), Boolean.valueOf(localfj.PT))) || (!g.b(this.PU, localfj.PU)) || (!g.b(this.PV, localfj.PV)) || (!g.b(this.PW, localfj.PW)));
    return true;
  }

  public final int hH()
  {
    return this.KH;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Integer.valueOf(this.KH);
    arrayOfObject[1] = Boolean.valueOf(this.PT);
    arrayOfObject[2] = this.PU;
    arrayOfObject[3] = this.PV;
    arrayOfObject[4] = this.PW;
    return Arrays.hashCode(arrayOfObject);
  }

  public final boolean kS()
  {
    return this.PT;
  }

  public final ArrayList kT()
  {
    return this.PU;
  }

  public final ArrayList kU()
  {
    return this.PV;
  }

  public final Bundle kV()
  {
    return this.PW;
  }

  public final boolean kW()
  {
    return this.PX;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    cl.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fj
 * JD-Core Version:    0.6.2
 */