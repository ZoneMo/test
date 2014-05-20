package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.a.a;
import com.google.android.gms.games.multiplayer.e;

public abstract interface Room extends Parcelable, a, e
{
  public abstract String getDescription();

  public abstract int getStatus();

  public abstract long hO();

  public abstract int hQ();

  public abstract String hX();

  public abstract String hY();

  public abstract Bundle hZ();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.Room
 * JD-Core Version:    0.6.2
 */