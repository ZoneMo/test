package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.p;
import com.google.android.gms.internal.q;

public class b
  implements Parcelable.Creator
{
  static void a(GameEntity paramGameEntity, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramGameEntity.hu(), false);
    q.a(paramParcel, 2, paramGameEntity.getDisplayName(), false);
    q.a(paramParcel, 3, paramGameEntity.hv(), false);
    q.a(paramParcel, 4, paramGameEntity.hw(), false);
    q.a(paramParcel, 5, paramGameEntity.getDescription(), false);
    q.a(paramParcel, 6, paramGameEntity.hx(), false);
    q.a(paramParcel, 7, paramGameEntity.hy(), paramInt, false);
    q.a(paramParcel, 8, paramGameEntity.hz(), paramInt, false);
    q.a(paramParcel, 9, paramGameEntity.hA(), paramInt, false);
    q.a(paramParcel, 10, paramGameEntity.hB());
    q.a(paramParcel, 11, paramGameEntity.hC());
    q.a(paramParcel, 12, paramGameEntity.hD(), false);
    q.c(paramParcel, 13, paramGameEntity.hE());
    q.c(paramParcel, 14, paramGameEntity.hF());
    q.c(paramParcel, 15, paramGameEntity.hG());
    q.c(paramParcel, 1000, paramGameEntity.hH());
    q.v(paramParcel, i);
  }

  public GameEntity a(Parcel paramParcel)
  {
    int i = o.f(paramParcel);
    int j = 0;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
    Uri localUri1 = null;
    Uri localUri2 = null;
    Uri localUri3 = null;
    boolean bool1 = false;
    boolean bool2 = false;
    String str7 = null;
    int k = 0;
    int m = 0;
    int n = 0;
    while (paramParcel.dataPosition() < i)
    {
      int i1 = paramParcel.readInt();
      switch (0xFFFF & i1)
      {
      default:
        o.b(paramParcel, i1);
        break;
      case 1:
        str1 = o.l(paramParcel, i1);
        break;
      case 2:
        str2 = o.l(paramParcel, i1);
        break;
      case 3:
        str3 = o.l(paramParcel, i1);
        break;
      case 4:
        str4 = o.l(paramParcel, i1);
        break;
      case 5:
        str5 = o.l(paramParcel, i1);
        break;
      case 6:
        str6 = o.l(paramParcel, i1);
        break;
      case 7:
        localUri1 = (Uri)o.a(paramParcel, i1, Uri.CREATOR);
        break;
      case 8:
        localUri2 = (Uri)o.a(paramParcel, i1, Uri.CREATOR);
        break;
      case 9:
        localUri3 = (Uri)o.a(paramParcel, i1, Uri.CREATOR);
        break;
      case 10:
        bool1 = o.c(paramParcel, i1);
        break;
      case 11:
        bool2 = o.c(paramParcel, i1);
        break;
      case 12:
        str7 = o.l(paramParcel, i1);
        break;
      case 13:
        k = o.f(paramParcel, i1);
        break;
      case 14:
        m = o.f(paramParcel, i1);
        break;
      case 15:
        n = o.f(paramParcel, i1);
        break;
      case 1000:
        j = o.f(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    return new GameEntity(j, str1, str2, str3, str4, str5, str6, localUri1, localUri2, localUri3, bool1, bool2, str7, k, m, n);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.b
 * JD-Core Version:    0.6.2
 */