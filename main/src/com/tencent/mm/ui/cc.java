package com.tencent.mm.ui;

import com.tencent.mm.ai.m;
import com.tencent.mm.ai.z;
import com.tencent.mm.c.a.gj;
import com.tencent.mm.modelvoice.al;
import com.tencent.mm.modelvoice.bc;
import com.tencent.mm.plugin.voicereminder.a.u;
import com.tencent.mm.pluginsdk.model.app.aw;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.o;

final class cc
  implements Runnable
{
  cc(cb paramcb)
  {
  }

  public final void run()
  {
    bc.Et().run();
    m.DF().run();
    ag.AY().run();
    ba.aqi().run();
    com.tencent.mm.plugin.voicereminder.a.f.alj().run();
    a.ayH().f(new gj());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cc
 * JD-Core Version:    0.6.2
 */