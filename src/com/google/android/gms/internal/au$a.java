package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class au$a
  implements SafeParcelable
{
  public static final ab Mo = new ab();
  final ArrayList Mp;
  final String className;
  final int versionCode;

  au$a(int paramInt, String paramString, ArrayList paramArrayList)
  {
    this.versionCode = paramInt;
    this.className = paramString;
    this.Mp = paramArrayList;
  }

  au$a(String paramString, HashMap paramHashMap)
  {
    this.versionCode = 1;
    this.className = paramString;
    this.Mp = a(paramHashMap);
  }

  private static ArrayList a(HashMap paramHashMap)
  {
    if (paramHashMap == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new au.b(str, (ar.a)paramHashMap.get(str)));
    }
    return localArrayList;
  }

  public int describeContents()
  {
    return 0;
  }

  final HashMap iy()
  {
    HashMap localHashMap = new HashMap();
    int i = this.Mp.size();
    for (int j = 0; j < i; j++)
    {
      au.b localb = (au.b)this.Mp.get(j);
      localHashMap.put(localb.Mr, localb.Ms);
    }
    return localHashMap;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ab.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.au.a
 * JD-Core Version:    0.6.2
 */