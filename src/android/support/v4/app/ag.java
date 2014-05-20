package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.Iterator;

public final class ag
  implements Iterable
{
  private static final ai cp = new aj();
  private final ArrayList cq = new ArrayList();
  private final Context cr;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      cp = new ak();
      return;
    }
  }

  private ag(Context paramContext)
  {
    this.cr = paramContext;
  }

  private ag a(ComponentName paramComponentName)
  {
    int i = this.cq.size();
    try
    {
      Intent localIntent;
      for (Object localObject = aa.a(this.cr, paramComponentName); localObject != null; localObject = localIntent)
      {
        this.cq.add(i, localObject);
        localIntent = aa.a(this.cr, ((Intent)localObject).getComponent());
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new IllegalArgumentException(localNameNotFoundException);
    }
    return this;
  }

  public static ag b(Context paramContext)
  {
    return new ag(paramContext);
  }

  public final ag c(Activity paramActivity)
  {
    boolean bool = paramActivity instanceof ah;
    Intent localIntent1 = null;
    if (bool)
      localIntent1 = ((ah)paramActivity).Z();
    if (localIntent1 == null);
    for (Intent localIntent2 = aa.a(paramActivity); ; localIntent2 = localIntent1)
    {
      if (localIntent2 != null)
      {
        ComponentName localComponentName = localIntent2.getComponent();
        if (localComponentName == null)
          localComponentName = localIntent2.resolveActivity(this.cr.getPackageManager());
        a(localComponentName);
        this.cq.add(localIntent2);
      }
      return this;
    }
  }

  public final Iterator iterator()
  {
    return this.cq.iterator();
  }

  public final void startActivities()
  {
    int i = 1;
    if (this.cq.isEmpty())
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    Intent[] arrayOfIntent = (Intent[])this.cq.toArray(new Intent[this.cq.size()]);
    arrayOfIntent[0] = new Intent(arrayOfIntent[0]).addFlags(268484608);
    Context localContext = this.cr;
    int j = Build.VERSION.SDK_INT;
    if (j >= 16)
      localContext.startActivities(arrayOfIntent, null);
    while (true)
    {
      if (i == 0)
      {
        Intent localIntent = new Intent(arrayOfIntent[(-1 + arrayOfIntent.length)]);
        localIntent.addFlags(268435456);
        this.cr.startActivity(localIntent);
      }
      return;
      if (j >= 11)
        localContext.startActivities(arrayOfIntent);
      else
        i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ag
 * JD-Core Version:    0.6.2
 */