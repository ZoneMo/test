package com.tencent.mm.sandbox.updater;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.protocal.a.rt;
import com.tencent.mm.sandbox.b;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;

final class x extends Handler
{
  x(w paramw)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) && (!w.a(this.gbz)))
    {
      new File(this.gbz.ayA()).delete();
      if (paramMessage.arg1 != 0)
        break label77;
      aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "patch ok");
      w.b(this.gbz).a(200, 0, (rt)paramMessage.obj);
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      label77: if (paramMessage.arg1 == 3)
        w.b(this.gbz).a(3, -1, (rt)paramMessage.obj);
      else if (paramMessage.arg1 == 4)
        w.b(this.gbz).a(4, -1, (rt)paramMessage.obj);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.x
 * JD-Core Version:    0.6.2
 */