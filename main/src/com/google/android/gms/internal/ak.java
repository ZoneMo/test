package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public final class ak
  implements SafeParcelable
{
  public static final s LK = new s();
  private final int KH;
  private final String KJ;
  private final int LL;
  private final int LM;
  private final String LN;
  private final String LO;
  private final String LP;

  public ak(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.KH = paramInt1;
    this.LL = paramInt2;
    this.LM = paramInt3;
    this.LN = paramString1;
    this.LO = paramString2;
    this.KJ = paramString3;
    this.LP = paramString4;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ak));
    ak localak;
    do
    {
      return false;
      localak = (ak)paramObject;
    }
    while ((this.KH != localak.KH) || (this.LL != localak.LL) || (this.LM != localak.LM) || (!g.b(this.LN, localak.LN)) || (!g.b(this.LO, localak.LO)));
    return true;
  }

  public final String getDisplayName()
  {
    return this.KJ;
  }

  public final int getType()
  {
    return this.LL;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Integer.valueOf(this.KH);
    arrayOfObject[1] = Integer.valueOf(this.LL);
    arrayOfObject[2] = Integer.valueOf(this.LM);
    arrayOfObject[3] = this.LN;
    arrayOfObject[4] = this.LO;
    return Arrays.hashCode(arrayOfObject);
  }

  public final int ia()
  {
    return this.LM;
  }

  public final String ib()
  {
    return this.LN;
  }

  public final String ic()
  {
    return this.LO;
  }

  public final String id()
  {
    return this.LP;
  }

  public final String toString()
  {
    if (this.LL == 2);
    for (int i = 1; i != 0; i = 0)
    {
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = this.LO;
      arrayOfObject3[1] = this.KJ;
      return String.format("Person [%s] %s", arrayOfObject3);
    }
    if ((this.LL == 1) && (this.LM == -1));
    for (int j = 1; j != 0; j = 0)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = this.LN;
      arrayOfObject2[1] = this.KJ;
      return String.format("Circle [%s] %s", arrayOfObject2);
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = this.LN;
    arrayOfObject1[1] = this.KJ;
    return String.format("Group [%s] %s", arrayOfObject1);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    s.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ak
 * JD-Core Version:    0.6.2
 */