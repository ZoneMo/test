package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import java.util.ArrayList;

public final class ch extends co
  implements Room
{
  private final int MG;

  private Room iH()
  {
    return new RoomEntity(this);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return RoomEntity.a(this, paramObject);
  }

  public final String getDescription()
  {
    return getString("description");
  }

  public final int getStatus()
  {
    return getInteger("status");
  }

  public final long hO()
  {
    return getLong("creation_timestamp");
  }

  public final int hQ()
  {
    return getInteger("variant");
  }

  public final ArrayList hR()
  {
    ArrayList localArrayList = new ArrayList(this.MG);
    for (int i = 0; i < this.MG; i++)
      localArrayList.add(new cf(this.Qa, i + this.Qb));
    return localArrayList;
  }

  public final String hX()
  {
    return getString("external_match_id");
  }

  public final String hY()
  {
    return getString("creator_external");
  }

  public final Bundle hZ()
  {
    if (!getBoolean("has_automatch_criteria"))
      return null;
    int i = getInteger("automatch_min_players");
    int j = getInteger("automatch_max_players");
    long l = getLong("automatch_bit_mask");
    Bundle localBundle = new Bundle();
    localBundle.putInt("min_automatch_players", i);
    localBundle.putInt("max_automatch_players", j);
    localBundle.putLong("exclusive_bit_mask", l);
    return localBundle;
  }

  public final int hashCode()
  {
    return RoomEntity.a(this);
  }

  public final String toString()
  {
    return RoomEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((RoomEntity)iH()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ch
 * JD-Core Version:    0.6.2
 */