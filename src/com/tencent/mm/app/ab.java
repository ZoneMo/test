package com.tencent.mm.app;

import android.content.Intent;
import com.tencent.mm.c.a.a;
import com.tencent.mm.c.a.b;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.cl;

final class ab extends g
{
  ab(WorkerProfile paramWorkerProfile)
  {
  }

  public final boolean a(e parame)
  {
    a locala = (a)parame;
    MMActivity localMMActivity = locala.bLG.bLH;
    cl.a(localMMActivity, locala.bLG.bLI, locala.bLG.bLJ, new Intent().setClass(localMMActivity, LauncherUI.class).putExtra("Intro_Switch", true).addFlags(67108864), null);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.ab
 * JD-Core Version:    0.6.2
 */