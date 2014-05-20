package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class ax extends ar
  implements SafeParcelable
{
  public static final ac Mx = new ac();
  private final int KH;
  private final au Mh;
  private final Parcel Mt;
  private final int Mu;
  private int Mv;
  private int Mw;
  private final String bK;

  ax(int paramInt, Parcel paramParcel, au paramau)
  {
    this.KH = paramInt;
    this.Mt = ((Parcel)i.M(paramParcel));
    this.Mu = 2;
    this.Mh = paramau;
    if (this.Mh == null);
    for (this.bK = null; ; this.bK = this.Mh.ix())
    {
      this.Mv = 2;
      return;
    }
  }

  private static void a(StringBuilder paramStringBuilder, int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("Unknown type = " + paramInt);
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      paramStringBuilder.append(paramObject);
      return;
    case 7:
      paramStringBuilder.append("\"").append(ag.W(paramObject.toString())).append("\"");
      return;
    case 8:
      paramStringBuilder.append("\"").append(ae.a((byte[])paramObject)).append("\"");
      return;
    case 9:
      paramStringBuilder.append("\"").append(ae.b((byte[])paramObject));
      paramStringBuilder.append("\"");
      return;
    case 10:
      ah.a(paramStringBuilder, (HashMap)paramObject);
      return;
    case 11:
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }

  private void a(StringBuilder paramStringBuilder, ar.a parama, Parcel paramParcel, int paramInt)
  {
    int i = 0;
    if (parama.in())
    {
      paramStringBuilder.append("[");
      int i8;
      int i9;
      Object localObject;
      switch (parama.im())
      {
      default:
        throw new IllegalStateException("Unknown field type out.");
      case 0:
        int i11 = o.a(paramParcel, paramInt);
        int i12 = paramParcel.dataPosition();
        int[] arrayOfInt = null;
        if (i11 == 0);
        while (true)
        {
          int i13 = arrayOfInt.length;
          while (i < i13)
          {
            if (i != 0)
              paramStringBuilder.append(",");
            paramStringBuilder.append(Integer.toString(arrayOfInt[i]));
            i++;
          }
          arrayOfInt = paramParcel.createIntArray();
          paramParcel.setDataPosition(i11 + i12);
        }
      case 1:
        i8 = o.a(paramParcel, paramInt);
        i9 = paramParcel.dataPosition();
        localObject = null;
        if (i8 == 0)
          ad.a(paramStringBuilder, (Object[])localObject);
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      }
      while (true)
      {
        paramStringBuilder.append("]");
        return;
        int i10 = paramParcel.readInt();
        localObject = new BigInteger[i10];
        while (i < i10)
        {
          localObject[i] = new BigInteger(paramParcel.createByteArray());
          i++;
        }
        paramParcel.setDataPosition(i8 + i9);
        break;
        int i6 = o.a(paramParcel, paramInt);
        int i7 = paramParcel.dataPosition();
        long[] arrayOfLong = null;
        if (i6 == 0);
        while (true)
        {
          ad.a(paramStringBuilder, arrayOfLong);
          break;
          arrayOfLong = paramParcel.createLongArray();
          paramParcel.setDataPosition(i6 + i7);
        }
        int i4 = o.a(paramParcel, paramInt);
        int i5 = paramParcel.dataPosition();
        float[] arrayOfFloat = null;
        if (i4 == 0);
        while (true)
        {
          ad.a(paramStringBuilder, arrayOfFloat);
          break;
          arrayOfFloat = paramParcel.createFloatArray();
          paramParcel.setDataPosition(i4 + i5);
        }
        int i2 = o.a(paramParcel, paramInt);
        int i3 = paramParcel.dataPosition();
        double[] arrayOfDouble = null;
        if (i2 == 0);
        while (true)
        {
          ad.a(paramStringBuilder, arrayOfDouble);
          break;
          arrayOfDouble = paramParcel.createDoubleArray();
          paramParcel.setDataPosition(i2 + i3);
        }
        ad.a(paramStringBuilder, o.p(paramParcel, paramInt));
        continue;
        int n = o.a(paramParcel, paramInt);
        int i1 = paramParcel.dataPosition();
        boolean[] arrayOfBoolean = null;
        if (n == 0);
        while (true)
        {
          ad.a(paramStringBuilder, arrayOfBoolean);
          break;
          arrayOfBoolean = paramParcel.createBooleanArray();
          paramParcel.setDataPosition(n + i1);
        }
        ad.a(paramStringBuilder, o.q(paramParcel, paramInt));
        continue;
        throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
        Parcel[] arrayOfParcel = o.s(paramParcel, paramInt);
        int k = arrayOfParcel.length;
        for (int m = 0; m < k; m++)
        {
          if (m > 0)
            paramStringBuilder.append(",");
          arrayOfParcel[m].setDataPosition(0);
          a(paramStringBuilder, parama.iu(), arrayOfParcel[m]);
        }
      }
    }
    switch (parama.im())
    {
    default:
      throw new IllegalStateException("Unknown field type out");
    case 0:
      paramStringBuilder.append(o.f(paramParcel, paramInt));
      return;
    case 1:
      paramStringBuilder.append(o.h(paramParcel, paramInt));
      return;
    case 2:
      paramStringBuilder.append(o.g(paramParcel, paramInt));
      return;
    case 3:
      paramStringBuilder.append(o.i(paramParcel, paramInt));
      return;
    case 4:
      paramStringBuilder.append(o.j(paramParcel, paramInt));
      return;
    case 5:
      paramStringBuilder.append(o.k(paramParcel, paramInt));
      return;
    case 6:
      paramStringBuilder.append(o.c(paramParcel, paramInt));
      return;
    case 7:
      String str2 = o.l(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(ag.W(str2)).append("\"");
      return;
    case 8:
      byte[] arrayOfByte2 = o.o(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(ae.a(arrayOfByte2)).append("\"");
      return;
    case 9:
      byte[] arrayOfByte1 = o.o(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(ae.b(arrayOfByte1));
      paramStringBuilder.append("\"");
      return;
    case 10:
      Bundle localBundle = o.n(paramParcel, paramInt);
      Set localSet = localBundle.keySet();
      localSet.size();
      paramStringBuilder.append("{");
      Iterator localIterator = localSet.iterator();
      for (int j = 1; localIterator.hasNext(); j = 0)
      {
        String str1 = (String)localIterator.next();
        if (j == 0)
          paramStringBuilder.append(",");
        paramStringBuilder.append("\"").append(str1).append("\"");
        paramStringBuilder.append(":");
        paramStringBuilder.append("\"").append(ag.W(localBundle.getString(str1))).append("\"");
      }
      paramStringBuilder.append("}");
      return;
    case 11:
    }
    Parcel localParcel = o.r(paramParcel, paramInt);
    localParcel.setDataPosition(0);
    a(paramStringBuilder, parama.iu(), localParcel);
  }

  private void a(StringBuilder paramStringBuilder, HashMap paramHashMap, Parcel paramParcel)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator.next();
      localHashMap.put(Integer.valueOf(((ar.a)localEntry2.getValue()).ip()), localEntry2);
    }
    paramStringBuilder.append('{');
    int i = o.f(paramParcel);
    int j = 0;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      Map.Entry localEntry1 = (Map.Entry)localHashMap.get(Integer.valueOf(0xFFFF & k));
      if (localEntry1 != null)
      {
        if (j != 0)
          paramStringBuilder.append(",");
        String str = (String)localEntry1.getKey();
        ar.a locala = (ar.a)localEntry1.getValue();
        paramStringBuilder.append("\"").append(str).append("\":");
        if (locala.is())
          switch (locala.im())
          {
          default:
            throw new IllegalArgumentException("Unknown field out type = " + locala.im());
          case 0:
            b(paramStringBuilder, locala, a(locala, Integer.valueOf(o.f(paramParcel, k))));
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          }
        while (true)
        {
          j = 1;
          break;
          b(paramStringBuilder, locala, a(locala, o.h(paramParcel, k)));
          continue;
          b(paramStringBuilder, locala, a(locala, Long.valueOf(o.g(paramParcel, k))));
          continue;
          b(paramStringBuilder, locala, a(locala, Float.valueOf(o.i(paramParcel, k))));
          continue;
          b(paramStringBuilder, locala, a(locala, Double.valueOf(o.j(paramParcel, k))));
          continue;
          b(paramStringBuilder, locala, a(locala, o.k(paramParcel, k)));
          continue;
          b(paramStringBuilder, locala, a(locala, Boolean.valueOf(o.c(paramParcel, k))));
          continue;
          b(paramStringBuilder, locala, a(locala, o.l(paramParcel, k)));
          continue;
          b(paramStringBuilder, locala, a(locala, o.o(paramParcel, k)));
          continue;
          b(paramStringBuilder, locala, a(locala, d(o.n(paramParcel, k))));
          continue;
          throw new IllegalArgumentException("Method does not accept concrete type.");
          a(paramStringBuilder, locala, paramParcel, k);
        }
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    paramStringBuilder.append('}');
  }

  private static void b(StringBuilder paramStringBuilder, ar.a parama, Object paramObject)
  {
    if (parama.il())
    {
      ArrayList localArrayList = (ArrayList)paramObject;
      paramStringBuilder.append("[");
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
      {
        if (j != 0)
          paramStringBuilder.append(",");
        a(paramStringBuilder, parama.ik(), localArrayList.get(j));
      }
      paramStringBuilder.append("]");
      return;
    }
    a(paramStringBuilder, parama.ik(), paramObject);
  }

  private static HashMap d(Bundle paramBundle)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramBundle.getString(str));
    }
    return localHashMap;
  }

  public int describeContents()
  {
    return 0;
  }

  public final int hH()
  {
    return this.KH;
  }

  final au iA()
  {
    switch (this.Mu)
    {
    default:
      throw new IllegalStateException("Invalid creation type: " + this.Mu);
    case 0:
      return null;
    case 1:
      return this.Mh;
    case 2:
    }
    return this.Mh;
  }

  public final HashMap ih()
  {
    if (this.Mh == null)
      return null;
    return this.Mh.V(this.bK);
  }

  protected final Object ii()
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }

  protected final boolean ij()
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }

  public final Parcel iz()
  {
    switch (this.Mv)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return this.Mt;
      this.Mw = q.g(this.Mt);
      q.v(this.Mt, this.Mw);
      this.Mv = 2;
    }
  }

  public String toString()
  {
    i.c(this.Mh, "Cannot convert to JSON on client side.");
    Parcel localParcel = iz();
    localParcel.setDataPosition(0);
    StringBuilder localStringBuilder = new StringBuilder(100);
    a(localStringBuilder, this.Mh.V(this.bK), localParcel);
    return localStringBuilder.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ac.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ax
 * JD-Core Version:    0.6.2
 */