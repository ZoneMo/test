package android.support.v7.internal.view;

import android.view.InflateException;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import java.lang.reflect.Method;

final class d
  implements MenuItem.OnMenuItemClickListener
{
  private static final Class[] io = { MenuItem.class };
  private Object im;
  private Method iq;

  public d(Object paramObject, String paramString)
  {
    this.im = paramObject;
    Class localClass = paramObject.getClass();
    try
    {
      this.iq = localClass.getMethod(paramString, io);
      return;
    }
    catch (Exception localException)
    {
      InflateException localInflateException = new InflateException("Couldn't resolve menu item onClick handler " + paramString + " in class " + localClass.getName());
      localInflateException.initCause(localException);
      throw localInflateException;
    }
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    try
    {
      if (this.iq.getReturnType() == Boolean.TYPE)
        return ((Boolean)this.iq.invoke(this.im, new Object[] { paramMenuItem })).booleanValue();
      this.iq.invoke(this.im, new Object[] { paramMenuItem });
      return true;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.d
 * JD-Core Version:    0.6.2
 */