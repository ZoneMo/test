package android.support.v4.app;

import android.os.Handler;
import android.os.Message;

final class g extends Handler
{
  g(FragmentActivity paramFragmentActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
    case 1:
      do
        return;
      while (!this.aX.aT);
      this.aX.b(false);
      return;
    case 2:
    }
    this.aX.t();
    this.aX.aQ.A();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.g
 * JD-Core Version:    0.6.2
 */