package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.c.a;
import android.support.v4.content.h;
import android.support.v4.content.i;
import java.io.PrintWriter;

final class z
  implements i
{
  boolean aB;
  boolean bv;
  boolean cb;
  final int cc;
  final Bundle cd;
  x ce;
  h cf;
  boolean cg;
  boolean ch;
  Object ci;
  boolean cj;
  boolean ck;
  boolean cl;
  z cm;

  final void a(h paramh, Object paramObject)
  {
    String str2;
    if (this.ce != null)
    {
      if (this.cn.as == null)
        break label179;
      str2 = this.cn.as.aQ.bw;
      this.cn.as.aQ.bw = "onLoadFinished";
    }
    label179: for (String str1 = str2; ; str1 = null)
      try
      {
        if (y.DEBUG)
        {
          StringBuilder localStringBuilder1 = new StringBuilder("  onLoadFinished in ").append(paramh).append(": ");
          StringBuilder localStringBuilder2 = new StringBuilder(64);
          a.a(paramObject, localStringBuilder2);
          localStringBuilder2.append("}");
          localStringBuilder1.append(localStringBuilder2.toString()).toString();
        }
        if (this.cn.as != null)
          this.cn.as.aQ.bw = str1;
        this.ch = true;
        return;
      }
      finally
      {
        if (this.cn.as != null)
          this.cn.as.aQ.bw = str1;
      }
  }

  public final void b(String paramString, PrintWriter paramPrintWriter)
  {
    while (true)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(this.cc);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(this.cd);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCallbacks=");
      paramPrintWriter.println(this.ce);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(this.cf);
      if (this.cf != null)
        this.cf.a(paramString + "  ", paramPrintWriter);
      if ((this.cg) || (this.ch))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mHaveData=");
        paramPrintWriter.print(this.cg);
        paramPrintWriter.print("  mDeliveredData=");
        paramPrintWriter.println(this.ch);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mData=");
        paramPrintWriter.println(this.ci);
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(this.cb);
      paramPrintWriter.print(" mReportNextStart=");
      paramPrintWriter.print(this.ck);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(this.bv);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mRetaining=");
      paramPrintWriter.print(this.aB);
      paramPrintWriter.print(" mRetainingStarted=");
      paramPrintWriter.print(this.cj);
      paramPrintWriter.print(" mListenerRegistered=");
      paramPrintWriter.println(this.cl);
      if (this.cm == null)
        break;
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.cm);
      paramPrintWriter.println(":");
      this = this.cm;
      paramString = paramString + "  ";
    }
  }

  final void destroy()
  {
    if (y.DEBUG)
      new StringBuilder("  Destroying: ").append(this).toString();
    this.bv = true;
    boolean bool = this.ch;
    this.ch = false;
    String str1;
    if ((this.ce != null) && (this.cf != null) && (this.cg) && (bool))
    {
      if (y.DEBUG)
        new StringBuilder("  Reseting: ").append(this).toString();
      if (this.cn.as == null)
        break label255;
      String str2 = this.cn.as.aQ.bw;
      this.cn.as.aQ.bw = "onLoaderReset";
      str1 = str2;
    }
    while (true)
      label255: 
      try
      {
        if (this.cn.as != null)
          this.cn.as.aQ.bw = str1;
        this.ce = null;
        this.ci = null;
        this.cg = false;
        if (this.cf != null)
        {
          if (this.cl)
          {
            this.cl = false;
            this.cf.a(this);
          }
          this.cf.reset();
        }
        if (this.cm != null)
          this = this.cm;
      }
      finally
      {
        if (this.cn.as != null)
          this.cn.as.aQ.bw = str1;
      }
  }

  final void stop()
  {
    if (y.DEBUG)
      new StringBuilder("  Stopping: ").append(this).toString();
    this.cb = false;
    if ((!this.aB) && (this.cf != null) && (this.cl))
    {
      this.cl = false;
      this.cf.a(this);
      this.cf.stopLoading();
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.cc);
    localStringBuilder.append(" : ");
    a.a(this.cf, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.z
 * JD-Core Version:    0.6.2
 */