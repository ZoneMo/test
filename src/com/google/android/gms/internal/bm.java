package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

public final class bm extends co
  implements Player
{
  public bm(l paraml, int paramInt)
  {
    super(paraml, paramInt);
  }

  private Player iE()
  {
    return new PlayerEntity(this);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return PlayerEntity.a(this, paramObject);
  }

  public final String getDisplayName()
  {
    return getString("profile_name");
  }

  public final String hJ()
  {
    return getString("external_player_id");
  }

  public final long hK()
  {
    return getLong("last_updated");
  }

  public final int hashCode()
  {
    return PlayerEntity.a(this);
  }

  public final Uri hy()
  {
    return X("profile_icon_image_uri");
  }

  public final Uri hz()
  {
    return X("profile_hi_res_image_uri");
  }

  public final String toString()
  {
    return PlayerEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((PlayerEntity)iE()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bm
 * JD-Core Version:    0.6.2
 */