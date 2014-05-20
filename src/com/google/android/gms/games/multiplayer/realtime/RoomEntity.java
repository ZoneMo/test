package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import java.util.ArrayList;
import java.util.Arrays;

public final class RoomEntity extends bq
  implements Room
{
  public static final c Ls = new b();
  private final int KH;
  private final String KM;
  private final long Ld;
  private final ArrayList Lg;
  private final int Lh;
  private final String Lt;
  private final String Lu;
  private final int Lv;
  private final Bundle Lw;

  RoomEntity(int paramInt1, String paramString1, String paramString2, long paramLong, int paramInt2, String paramString3, int paramInt3, Bundle paramBundle, ArrayList paramArrayList)
  {
    this.KH = paramInt1;
    this.Lt = paramString1;
    this.Lu = paramString2;
    this.Ld = paramLong;
    this.Lv = paramInt2;
    this.KM = paramString3;
    this.Lh = paramInt3;
    this.Lw = paramBundle;
    this.Lg = paramArrayList;
  }

  public RoomEntity(Room paramRoom)
  {
    this.KH = 1;
    this.Lt = paramRoom.hX();
    this.Lu = paramRoom.hY();
    this.Ld = paramRoom.hO();
    this.Lv = paramRoom.getStatus();
    this.KM = paramRoom.getDescription();
    this.Lh = paramRoom.hQ();
    this.Lw = paramRoom.hZ();
    ArrayList localArrayList = paramRoom.hR();
    int i = localArrayList.size();
    this.Lg = new ArrayList(i);
    for (int j = 0; j < i; j++)
      this.Lg.add((ParticipantEntity)((Participant)localArrayList.get(j)).hr());
  }

  public static int a(Room paramRoom)
  {
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = paramRoom.hX();
    arrayOfObject[1] = paramRoom.hY();
    arrayOfObject[2] = Long.valueOf(paramRoom.hO());
    arrayOfObject[3] = Integer.valueOf(paramRoom.getStatus());
    arrayOfObject[4] = paramRoom.getDescription();
    arrayOfObject[5] = Integer.valueOf(paramRoom.hQ());
    arrayOfObject[6] = paramRoom.hZ();
    arrayOfObject[7] = paramRoom.hR();
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Room paramRoom, Object paramObject)
  {
    if (!(paramObject instanceof Room));
    Room localRoom;
    do
    {
      return false;
      if (paramRoom == paramObject)
        return true;
      localRoom = (Room)paramObject;
    }
    while ((!g.b(localRoom.hX(), paramRoom.hX())) || (!g.b(localRoom.hY(), paramRoom.hY())) || (!g.b(Long.valueOf(localRoom.hO()), Long.valueOf(paramRoom.hO()))) || (!g.b(Integer.valueOf(localRoom.getStatus()), Integer.valueOf(paramRoom.getStatus()))) || (!g.b(localRoom.getDescription(), paramRoom.getDescription())) || (!g.b(Integer.valueOf(localRoom.hQ()), Integer.valueOf(paramRoom.hQ()))) || (!g.b(localRoom.hZ(), paramRoom.hZ())) || (!g.b(localRoom.hR(), paramRoom.hR())));
    return true;
  }

  public static String b(Room paramRoom)
  {
    return g.L(paramRoom).a("RoomId", paramRoom.hX()).a("CreatorId", paramRoom.hY()).a("CreationTimestamp", Long.valueOf(paramRoom.hO())).a("RoomStatus", Integer.valueOf(paramRoom.getStatus())).a("Description", paramRoom.getDescription()).a("Variant", Integer.valueOf(paramRoom.hQ())).a("AutoMatchCriteria", paramRoom.hZ()).a("Participants", paramRoom.hR()).toString();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final String getDescription()
  {
    return this.KM;
  }

  public final int getStatus()
  {
    return this.Lv;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final long hO()
  {
    return this.Ld;
  }

  public final int hQ()
  {
    return this.Lh;
  }

  public final ArrayList hR()
  {
    return new ArrayList(this.Lg);
  }

  public final String hX()
  {
    return this.Lt;
  }

  public final String hY()
  {
    return this.Lu;
  }

  public final Bundle hZ()
  {
    return this.Lw;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (!lg())
      c.a(this, paramParcel);
    while (true)
    {
      return;
      paramParcel.writeString(this.Lt);
      paramParcel.writeString(this.Lu);
      paramParcel.writeLong(this.Ld);
      paramParcel.writeInt(this.Lv);
      paramParcel.writeString(this.KM);
      paramParcel.writeInt(this.Lh);
      paramParcel.writeBundle(this.Lw);
      int i = this.Lg.size();
      paramParcel.writeInt(i);
      for (int j = 0; j < i; j++)
        ((ParticipantEntity)this.Lg.get(j)).writeToParcel(paramParcel, paramInt);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RoomEntity
 * JD-Core Version:    0.6.2
 */