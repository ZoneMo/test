package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public final class ck
  implements Parcelable.Creator
{
  static void a(fh paramfh, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramfh.getId(), false);
    q.c(paramParcel, 1000, paramfh.hH());
    q.a(paramParcel, 2, paramfh.kK(), false);
    q.a(paramParcel, 3, paramfh.kL(), false);
    q.a(paramParcel, 4, paramfh.kM(), paramInt, false);
    q.a(paramParcel, 5, paramfh.kN(), false);
    q.a(paramParcel, 6, paramfh.kO(), false);
    q.a(paramParcel, 7, paramfh.kP(), false);
    q.a(paramParcel, 8, paramfh.kQ());
    q.a(paramParcel, 9, paramfh.kR());
    q.v(paramParcel, i);
  }

  public static fh j(Parcel paramParcel)
  {
    Bundle localBundle1 = null;
    int i = o.f(paramParcel);
    int j = 0;
    Bundle localBundle2 = null;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    Uri localUri = null;
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = null;
    String str4 = null;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default:
        o.b(paramParcel, k);
        break;
      case 1:
        str4 = o.l(paramParcel, k);
        break;
      case 1000:
        j = o.f(paramParcel, k);
        break;
      case 2:
        localArrayList2 = o.b(paramParcel, k, ak.LK);
        break;
      case 3:
        localArrayList1 = o.b(paramParcel, k, Uri.CREATOR);
        break;
      case 4:
        localUri = (Uri)o.a(paramParcel, k, Uri.CREATOR);
        break;
      case 5:
        str3 = o.l(paramParcel, k);
        break;
      case 6:
        str2 = o.l(paramParcel, k);
        break;
      case 7:
        str1 = o.l(paramParcel, k);
        break;
      case 8:
        localBundle2 = o.n(paramParcel, k);
        break;
      case 9:
        localBundle1 = o.n(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    return new fh(j, str4, localArrayList2, localArrayList1, localUri, str3, str2, str1, localBundle2, localBundle1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ck
 * JD-Core Version:    0.6.2
 */