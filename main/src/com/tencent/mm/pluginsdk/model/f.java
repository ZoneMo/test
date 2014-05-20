package com.tencent.mm.pluginsdk.model;

import android.os.Handler;
import android.os.Looper;
import junit.framework.Assert;

public abstract class f
{
  private boolean dus = false;
  private Handler handler = new Handler(Looper.getMainLooper());

  public abstract Handler Hq();

  public void b(Object[] paramArrayOfObject)
  {
  }

  public final boolean c(Object[] paramArrayOfObject)
  {
    if (this.dus)
      Assert.assertTrue("MicroMsg.MMAsyncTask Should construct a new Task", false);
    this.dus = true;
    b(paramArrayOfObject);
    Handler localHandler = Hq();
    if (localHandler == null)
      return false;
    localHandler.post(new g(this, paramArrayOfObject));
    return true;
  }

  public abstract Object doInBackground(Object[] paramArrayOfObject);

  public void onPostExecute(Object paramObject)
  {
  }

  public void onProgressUpdate(Object[] paramArrayOfObject)
  {
  }

  public final void publishProgress(Object[] paramArrayOfObject)
  {
    this.handler.post(new i(this, paramArrayOfObject));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.f
 * JD-Core Version:    0.6.2
 */