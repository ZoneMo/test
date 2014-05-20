package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class au
  implements SafeParcelable
{
  public static final aa Mk = new aa();
  private final int KH;
  private final HashMap Ml;
  private final ArrayList Mm;
  private final String Mn;

  au(int paramInt, ArrayList paramArrayList, String paramString)
  {
    this.KH = paramInt;
    this.Mm = null;
    this.Ml = b(paramArrayList);
    this.Mn = ((String)i.M(paramString));
    iv();
  }

  private static HashMap b(ArrayList paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    int i = paramArrayList.size();
    for (int j = 0; j < i; j++)
    {
      au.a locala = (au.a)paramArrayList.get(j);
      localHashMap.put(locala.className, locala.iy());
    }
    return localHashMap;
  }

  private void iv()
  {
    Iterator localIterator1 = this.Ml.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      HashMap localHashMap = (HashMap)this.Ml.get(str);
      Iterator localIterator2 = localHashMap.keySet().iterator();
      while (localIterator2.hasNext())
        ((ar.a)localHashMap.get((String)localIterator2.next())).a(this);
    }
  }

  public final HashMap V(String paramString)
  {
    return (HashMap)this.Ml.get(paramString);
  }

  public int describeContents()
  {
    return 0;
  }

  final int hH()
  {
    return this.KH;
  }

  final ArrayList iw()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.Ml.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new au.a(str, (HashMap)this.Ml.get(str)));
    }
    return localArrayList;
  }

  public final String ix()
  {
    return this.Mn;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = this.Ml.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      localStringBuilder.append(str1).append(":\n");
      HashMap localHashMap = (HashMap)this.Ml.get(str1);
      Iterator localIterator2 = localHashMap.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        localStringBuilder.append("  ").append(str2).append(": ");
        localStringBuilder.append(localHashMap.get(str2));
      }
    }
    return localStringBuilder.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aa.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.au
 * JD-Core Version:    0.6.2
 */