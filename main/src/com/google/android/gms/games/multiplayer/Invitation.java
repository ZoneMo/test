package com.google.android.gms.games.multiplayer;

import android.os.Parcelable;
import com.google.android.gms.common.a.a;
import com.google.android.gms.games.Game;

public abstract interface Invitation extends Parcelable, a, e
{
  public abstract Game hL();

  public abstract String hM();

  public abstract Participant hN();

  public abstract long hO();

  public abstract int hP();

  public abstract int hQ();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.Invitation
 * JD-Core Version:    0.6.2
 */