package com.tencent.mm.ai;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.tencent.mm.n.f;

public final class a
{
  String bOV = null;
  c cAt = null;
  String cAu = null;
  String cAv = null;
  final AsyncTask cAw = new b(this);
  Context context = null;
  int duration = 0;
  Intent intent = null;
  String rD = null;

  public final void a(Context paramContext, Intent paramIntent, c paramc)
  {
    this.context = paramContext;
    this.intent = paramIntent;
    this.rD = r.gY((String)f.c(2, ""));
    this.bOV = m.DE().ha(this.rD);
    this.cAv = m.DE().gZ(this.rD);
    this.cAt = paramc;
    this.cAw.execute(new String[0]);
  }

  public final void cancel()
  {
    this.cAt = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.a
 * JD-Core Version:    0.6.2
 */