package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.p;
import com.google.android.gms.internal.q;

public class d
  implements Parcelable.Creator
{
  static void a(PlayerEntity paramPlayerEntity, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramPlayerEntity.hJ(), false);
    q.c(paramParcel, 1000, paramPlayerEntity.hH());
    q.a(paramParcel, 2, paramPlayerEntity.getDisplayName(), false);
    q.a(paramParcel, 3, paramPlayerEntity.hy(), paramInt, false);
    q.a(paramParcel, 4, paramPlayerEntity.hz(), paramInt, false);
    q.a(paramParcel, 5, paramPlayerEntity.hK());
    q.v(paramParcel, i);
  }

  public PlayerEntity b(Parcel paramParcel)
  {
    Uri localUri1 = null;
    int i = o.f(paramParcel);
    int j = 0;
    long l = 0L;
    Uri localUri2 = null;
    String str1 = null;
    String str2 = null;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default:
        o.b(paramParcel, k);
        break;
      case 1:
        str2 = o.l(paramParcel, k);
        break;
      case 1000:
        j = o.f(paramParcel, k);
        break;
      case 2:
        str1 = o.l(paramParcel, k);
        break;
      case 3:
        localUri2 = (Uri)o.a(paramParcel, k, Uri.CREATOR);
        break;
      case 4:
        localUri1 = (Uri)o.a(paramParcel, k, Uri.CREATOR);
        break;
      case 5:
        l = o.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    return new PlayerEntity(j, str2, str1, localUri2, localUri1, l);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.d
 * JD-Core Version:    0.6.2
 */