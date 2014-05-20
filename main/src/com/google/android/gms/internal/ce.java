package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;

public final class ce extends co
  implements Invitation
{
  private final ArrayList Lg;
  private final Game MD;
  private final cf ME;

  private Invitation iF()
  {
    return new InvitationEntity(this);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return InvitationEntity.a(this, paramObject);
  }

  public final Game hL()
  {
    return this.MD;
  }

  public final String hM()
  {
    return getString("external_invitation_id");
  }

  public final Participant hN()
  {
    return this.ME;
  }

  public final long hO()
  {
    return getLong("creation_timestamp");
  }

  public final int hP()
  {
    return getInteger("type");
  }

  public final int hQ()
  {
    return getInteger("variant");
  }

  public final ArrayList hR()
  {
    return this.Lg;
  }

  public final int hashCode()
  {
    return InvitationEntity.a(this);
  }

  public final String toString()
  {
    return InvitationEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((InvitationEntity)iF()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ce
 * JD-Core Version:    0.6.2
 */