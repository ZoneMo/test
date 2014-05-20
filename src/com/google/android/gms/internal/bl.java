package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;

public final class bl extends co
  implements Game
{
  private Game iD()
  {
    return new GameEntity(this);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return GameEntity.a(this, paramObject);
  }

  public final String getDescription()
  {
    return getString("game_description");
  }

  public final String getDisplayName()
  {
    return getString("display_name");
  }

  public final Uri hA()
  {
    return X("featured_image_uri");
  }

  public final boolean hB()
  {
    return getBoolean("play_enabled_game");
  }

  public final boolean hC()
  {
    return getInteger("installed") > 0;
  }

  public final String hD()
  {
    return getString("package_name");
  }

  public final int hE()
  {
    return getInteger("gameplay_acl_status");
  }

  public final int hF()
  {
    return getInteger("achievement_total_count");
  }

  public final int hG()
  {
    return getInteger("leaderboard_count");
  }

  public final int hashCode()
  {
    return GameEntity.a(this);
  }

  public final String hu()
  {
    return getString("external_game_id");
  }

  public final String hv()
  {
    return getString("primary_category");
  }

  public final String hw()
  {
    return getString("secondary_category");
  }

  public final String hx()
  {
    return getString("developer_name");
  }

  public final Uri hy()
  {
    return X("game_icon_image_uri");
  }

  public final Uri hz()
  {
    return X("game_hi_res_image_uri");
  }

  public final String toString()
  {
    return GameEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((GameEntity)iD()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bl
 * JD-Core Version:    0.6.2
 */