package com.tencent.mm.console;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;

public class Shell$Receiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    o localo = (o)Shell.qD().get(str);
    if (localo == null)
    {
      aa.b("MicroMsg.Shell", "no action found for %s", new Object[] { str });
      return;
    }
    aa.b("MicroMsg.Shell", "shell action %s", new Object[] { str });
    localo.d(paramIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.Shell.Receiver
 * JD-Core Version:    0.6.2
 */