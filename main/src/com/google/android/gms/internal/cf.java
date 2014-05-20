package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;

public final class cf extends co
  implements Participant
{
  private final bm MF;

  public cf(l paraml, int paramInt)
  {
    super(paraml, paramInt);
    this.MF = new bm(paraml, paramInt);
  }

  private Participant iG()
  {
    return new ParticipantEntity(this);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return ParticipantEntity.a(this, paramObject);
  }

  public final String getDisplayName()
  {
    if (Y("external_player_id"))
      return getString("default_display_name");
    return this.MF.getDisplayName();
  }

  public final int getStatus()
  {
    return getInteger("player_status");
  }

  public final String hS()
  {
    return getString("client_address");
  }

  public final int hT()
  {
    return getInteger("capabilities");
  }

  public final boolean hU()
  {
    return getInteger("connected") > 0;
  }

  public final String hV()
  {
    return getString("external_participant_id");
  }

  public final Player hW()
  {
    if (Y("external_player_id"))
      return null;
    return this.MF;
  }

  public final int hashCode()
  {
    return ParticipantEntity.a(this);
  }

  public final Uri hy()
  {
    if (Y("external_player_id"))
      return X("default_display_image_uri");
    return this.MF.hy();
  }

  public final Uri hz()
  {
    if (Y("external_player_id"))
      return null;
    return this.MF.hz();
  }

  public final String toString()
  {
    return ParticipantEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((ParticipantEntity)iG()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cf
 * JD-Core Version:    0.6.2
 */