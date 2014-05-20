package android.support.v4.app;

import android.support.v4.c.a;
import android.support.v4.c.d;
import android.support.v4.content.h;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class y extends w
{
  static boolean DEBUG = false;
  boolean aB;
  final String af;
  FragmentActivity as;
  final d bZ;
  final d ca;
  boolean cb;

  public final boolean Q()
  {
    int i = this.bZ.size();
    int j = 0;
    boolean bool1 = false;
    if (j < i)
    {
      z localz = (z)this.bZ.valueAt(j);
      if ((localz.cb) && (!localz.ch));
      for (boolean bool2 = true; ; bool2 = false)
      {
        bool1 |= bool2;
        j++;
        break;
      }
    }
    return bool1;
  }

  final void S()
  {
    if (DEBUG)
      new StringBuilder("Starting in ").append(this).toString();
    if (this.cb)
    {
      new RuntimeException("here").fillInStackTrace();
      new StringBuilder("Called doStart when already started: ").append(this).toString();
      return;
    }
    this.cb = true;
    int i = -1 + this.bZ.size();
    label76: z localz;
    if (i >= 0)
    {
      localz = (z)this.bZ.valueAt(i);
      if ((!localz.aB) || (!localz.cj))
        break label117;
      localz.cb = true;
    }
    while (true)
    {
      i--;
      break label76;
      break;
      label117: if (!localz.cb)
      {
        localz.cb = true;
        if (DEBUG)
          new StringBuilder("  Starting: ").append(localz).toString();
        if ((localz.cf == null) && (localz.ce != null))
        {
          x localx = localz.ce;
          localz.cf = localx.R();
        }
        if (localz.cf != null)
        {
          if ((localz.cf.getClass().isMemberClass()) && (!Modifier.isStatic(localz.cf.getClass().getModifiers())))
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + localz.cf);
          if (!localz.cl)
          {
            localz.cf.a(localz.cc, localz);
            localz.cl = true;
          }
          localz.cf.startLoading();
        }
      }
    }
  }

  final void T()
  {
    if (DEBUG)
      new StringBuilder("Stopping in ").append(this).toString();
    if (!this.cb)
    {
      new RuntimeException("here").fillInStackTrace();
      new StringBuilder("Called doStop when not started: ").append(this).toString();
      return;
    }
    for (int i = -1 + this.bZ.size(); i >= 0; i--)
      ((z)this.bZ.valueAt(i)).stop();
    this.cb = false;
  }

  final void U()
  {
    if (DEBUG)
      new StringBuilder("Retaining in ").append(this).toString();
    if (!this.cb)
    {
      new RuntimeException("here").fillInStackTrace();
      new StringBuilder("Called doRetain when not started: ").append(this).toString();
    }
    while (true)
    {
      return;
      this.aB = true;
      this.cb = false;
      for (int i = -1 + this.bZ.size(); i >= 0; i--)
      {
        z localz = (z)this.bZ.valueAt(i);
        if (DEBUG)
          new StringBuilder("  Retaining: ").append(localz).toString();
        localz.aB = true;
        localz.cj = localz.cb;
        localz.cb = false;
        localz.ce = null;
      }
    }
  }

  final void V()
  {
    if (this.aB)
    {
      if (DEBUG)
        new StringBuilder("Finished Retaining in ").append(this).toString();
      this.aB = false;
      for (int i = -1 + this.bZ.size(); i >= 0; i--)
      {
        z localz = (z)this.bZ.valueAt(i);
        if (localz.aB)
        {
          if (DEBUG)
            new StringBuilder("  Finished Retaining: ").append(localz).toString();
          localz.aB = false;
          if ((localz.cb != localz.cj) && (!localz.cb))
            localz.stop();
        }
        if ((localz.cb) && (localz.cg) && (!localz.ck))
          localz.a(localz.cf, localz.ci);
      }
    }
  }

  final void W()
  {
    for (int i = -1 + this.bZ.size(); i >= 0; i--)
      ((z)this.bZ.valueAt(i)).ck = true;
  }

  final void X()
  {
    for (int i = -1 + this.bZ.size(); i >= 0; i--)
    {
      z localz = (z)this.bZ.valueAt(i);
      if ((localz.cb) && (localz.ck))
      {
        localz.ck = false;
        if (localz.cg)
          localz.a(localz.cf, localz.ci);
      }
    }
  }

  final void Y()
  {
    if (!this.aB)
    {
      if (DEBUG)
        new StringBuilder("Destroying Active in ").append(this).toString();
      for (int j = -1 + this.bZ.size(); j >= 0; j--)
        ((z)this.bZ.valueAt(j)).destroy();
      this.bZ.clear();
    }
    if (DEBUG)
      new StringBuilder("Destroying Inactive in ").append(this).toString();
    for (int i = -1 + this.ca.size(); i >= 0; i--)
      ((z)this.ca.valueAt(i)).destroy();
    this.ca.clear();
  }

  final void a(FragmentActivity paramFragmentActivity)
  {
    this.as = paramFragmentActivity;
  }

  public final void b(String paramString, PrintWriter paramPrintWriter)
  {
    int i = 0;
    if (this.bZ.size() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      String str2 = paramString + "    ";
      for (int j = 0; j < this.bZ.size(); j++)
      {
        z localz2 = (z)this.bZ.valueAt(j);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.bZ.keyAt(j));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localz2.toString());
        localz2.b(str2, paramPrintWriter);
      }
    }
    if (this.ca.size() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      String str1 = paramString + "    ";
      while (i < this.ca.size())
      {
        z localz1 = (z)this.ca.valueAt(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.ca.keyAt(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localz1.toString());
        localz1.b(str1, paramPrintWriter);
        i++;
      }
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    a.a(this.as, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.y
 * JD-Core Version:    0.6.2
 */