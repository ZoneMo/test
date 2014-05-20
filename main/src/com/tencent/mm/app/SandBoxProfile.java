package com.tencent.mm.app;

import com.tencent.mm.booter.i;
import com.tencent.mm.compatible.loader.h;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.platformtools.u;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public final class SandBoxProfile extends h
{
  public static final String bKY = al.getPackageName() + ":sandbox";

  public final void bc()
  {
  }

  public final void onCreate()
  {
    com.tencent.mm.sdk.b.a.a(new b());
    u.load("MMProtocalJni");
    MMProtocalJni.setClientPackVersion(com.tencent.mm.protocal.a.fxr);
    at.cHA = cj.a(new i(al.getContext()).aK(".com.tencent.mm.debug.test.network.simulate_down_fault"), false);
    aa.i("MicroMsg.Debugger", "Test.simulateDownFault = " + at.cHA);
  }

  public final String toString()
  {
    return bKY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.SandBoxProfile
 * JD-Core Version:    0.6.2
 */