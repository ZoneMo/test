package com.tencent.mm.pluginsdk.model;

import android.os.Handler;

final class g
  implements Runnable
{
  g(f paramf, Object[] paramArrayOfObject)
  {
  }

  public final void run()
  {
    Object localObject = this.fgQ.doInBackground(this.euS);
    f.a(this.fgQ).post(new h(this, localObject));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.g
 * JD-Core Version:    0.6.2
 */