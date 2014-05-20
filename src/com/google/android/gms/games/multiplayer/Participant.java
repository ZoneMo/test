package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.a.a;
import com.google.android.gms.games.Player;

public abstract interface Participant extends Parcelable, a
{
  public abstract String getDisplayName();

  public abstract int getStatus();

  public abstract String hS();

  public abstract int hT();

  public abstract boolean hU();

  public abstract String hV();

  public abstract Player hW();

  public abstract Uri hy();

  public abstract Uri hz();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.Participant
 * JD-Core Version:    0.6.2
 */