package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class ao
  implements SafeParcelable, x
{
  public static final v LS = new v();
  private final int KH;
  private final HashMap LT;
  private final HashMap LU;
  private final ArrayList LV;

  public ao()
  {
    this.KH = 1;
    this.LT = new HashMap();
    this.LU = new HashMap();
    this.LV = null;
  }

  ao(int paramInt, ArrayList paramArrayList)
  {
    this.KH = paramInt;
    this.LT = new HashMap();
    this.LU = new HashMap();
    this.LV = null;
    a(paramArrayList);
  }

  private void a(ArrayList paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      ao.a locala = (ao.a)localIterator.next();
      c(locala.LX, locala.LY);
    }
  }

  public final ao c(String paramString, int paramInt)
  {
    this.LT.put(paramString, Integer.valueOf(paramInt));
    this.LU.put(Integer.valueOf(paramInt), paramString);
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  final int hH()
  {
    return this.KH;
  }

  final ArrayList ig()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.LT.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new ao.a(str, ((Integer)this.LT.get(str)).intValue()));
    }
    return localArrayList;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    v.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ao
 * JD-Core Version:    0.6.2
 */