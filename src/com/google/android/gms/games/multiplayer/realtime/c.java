package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.p;
import com.google.android.gms.internal.q;
import java.util.ArrayList;

public class c
  implements Parcelable.Creator
{
  static void a(RoomEntity paramRoomEntity, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramRoomEntity.hX(), false);
    q.c(paramParcel, 1000, paramRoomEntity.hH());
    q.a(paramParcel, 2, paramRoomEntity.hY(), false);
    q.a(paramParcel, 3, paramRoomEntity.hO());
    q.c(paramParcel, 4, paramRoomEntity.getStatus());
    q.a(paramParcel, 5, paramRoomEntity.getDescription(), false);
    q.c(paramParcel, 6, paramRoomEntity.hQ());
    q.a(paramParcel, 7, paramRoomEntity.hZ());
    q.a(paramParcel, 8, paramRoomEntity.hR(), false);
    q.v(paramParcel, i);
  }

  public RoomEntity e(Parcel paramParcel)
  {
    int i = 0;
    ArrayList localArrayList = null;
    int j = o.f(paramParcel);
    long l = 0L;
    Bundle localBundle = null;
    String str1 = null;
    int k = 0;
    String str2 = null;
    String str3 = null;
    int m = 0;
    while (paramParcel.dataPosition() < j)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default:
        o.b(paramParcel, n);
        break;
      case 1:
        str3 = o.l(paramParcel, n);
        break;
      case 1000:
        m = o.f(paramParcel, n);
        break;
      case 2:
        str2 = o.l(paramParcel, n);
        break;
      case 3:
        l = o.g(paramParcel, n);
        break;
      case 4:
        k = o.f(paramParcel, n);
        break;
      case 5:
        str1 = o.l(paramParcel, n);
        break;
      case 6:
        i = o.f(paramParcel, n);
        break;
      case 7:
        localBundle = o.n(paramParcel, n);
        break;
      case 8:
        localArrayList = o.b(paramParcel, n, ParticipantEntity.Li);
      }
    }
    if (paramParcel.dataPosition() != j)
      throw new p("Overread allowed size end=" + j, paramParcel);
    return new RoomEntity(m, str3, str2, l, k, str1, i, localBundle, localArrayList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.c
 * JD-Core Version:    0.6.2
 */