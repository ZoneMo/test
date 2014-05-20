package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.d;
import java.util.ArrayList;

final class b extends c
{
  public final RoomEntity e(Parcel paramParcel)
  {
    if ((RoomEntity.a(RoomEntity.hI())) || (RoomEntity.S(RoomEntity.class.getCanonicalName())))
      return super.e(paramParcel);
    String str1 = paramParcel.readString();
    String str2 = paramParcel.readString();
    long l = paramParcel.readLong();
    int i = paramParcel.readInt();
    String str3 = paramParcel.readString();
    int j = paramParcel.readInt();
    Bundle localBundle = paramParcel.readBundle();
    int k = paramParcel.readInt();
    ArrayList localArrayList = new ArrayList(k);
    for (int m = 0; m < k; m++)
      localArrayList.add(ParticipantEntity.Li.d(paramParcel));
    return new RoomEntity(1, str1, str2, l, i, str3, j, localBundle, localArrayList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.b
 * JD-Core Version:    0.6.2
 */