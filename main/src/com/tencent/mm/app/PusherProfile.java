package com.tencent.mm.app;

import com.tencent.mm.console.Shell;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.platformtools.at;

public final class PusherProfile extends com.tencent.mm.compatible.loader.h
{
  public static final String bKY = com.tencent.mm.sdk.platformtools.al.getPackageName() + ":push";
  private Shell bKZ = new Shell();

  public final void bc()
  {
  }

  public final void onCreate()
  {
    com.tencent.mm.booter.al.J(false);
    at.azE().a(new h(this), bKY);
    a.a(new b());
  }

  public final String toString()
  {
    return bKY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.PusherProfile
 * JD-Core Version:    0.6.2
 */