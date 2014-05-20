package android.support.v4.content;

import android.support.v4.c.a;
import java.io.PrintWriter;

public final class h
{
  i cA;
  boolean cB;
  boolean cC;
  boolean cD;
  boolean cE;
  boolean cb;
  int cc;

  public final void a(int paramInt, i parami)
  {
    if (this.cA != null)
      throw new IllegalStateException("There is already a listener registered");
    this.cA = parami;
    this.cc = paramInt;
  }

  public final void a(i parami)
  {
    if (this.cA == null)
      throw new IllegalStateException("No listener register");
    if (this.cA != parami)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.cA = null;
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.cc);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.cA);
    if ((this.cb) || (this.cD) || (this.cE))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(this.cb);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(this.cD);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(this.cE);
    }
    if ((this.cB) || (this.cC))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(this.cB);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(this.cC);
    }
  }

  public final void reset()
  {
    this.cC = true;
    this.cb = false;
    this.cB = false;
    this.cD = false;
    this.cE = false;
  }

  public final void startLoading()
  {
    this.cb = true;
    this.cC = false;
    this.cB = false;
  }

  public final void stopLoading()
  {
    this.cb = false;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.cc);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.h
 * JD-Core Version:    0.6.2
 */