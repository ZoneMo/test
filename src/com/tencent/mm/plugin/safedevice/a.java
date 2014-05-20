package com.tencent.mm.plugin.safedevice;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.f;
import com.tencent.mm.ui.MMWizardActivity;

public final class a
  implements f
{
  private static e cHS;
  private static d cHT;

  public static void a(Context paramContext, Intent paramIntent1, Intent paramIntent2)
  {
    cHS.a(paramContext, paramIntent1, paramIntent2);
  }

  public static void b(MMWizardActivity paramMMWizardActivity, Intent paramIntent)
  {
    cHS.b(paramMMWizardActivity, paramIntent);
  }

  public final void a(d paramd)
  {
    cHT = paramd;
  }

  public final void a(e parame)
  {
    cHS = parame;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a
 * JD-Core Version:    0.6.2
 */