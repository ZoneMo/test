package com.tencent.mm.plugin.wallet;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.f;

public final class b
  implements f
{
  private static e cHS;
  private static d cHT;

  public static void Z(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("Contact_User", paramString);
    cHS.c(localIntent, paramContext);
  }

  public static void aM(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.addFlags(67108864);
    cHS.g(localIntent, paramContext);
  }

  public static void amV()
  {
    cHT.d(11, true);
  }

  public static void h(Intent paramIntent, Context paramContext)
  {
    cHS.h(paramIntent, paramContext);
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
 * Qualified Name:     com.tencent.mm.plugin.wallet.b
 * JD-Core Version:    0.6.2
 */