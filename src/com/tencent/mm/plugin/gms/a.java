package com.tencent.mm.plugin.gms;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.a.b;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import java.io.IOException;
import java.io.PrintStream;

final class a extends AsyncTask
{
  private String dsA;
  private String dsB;
  private int dsC;
  private String dsw;
  private boolean dsy = false;
  private boolean dsz;
  private Context mContext;

  public a(MMGoogleAuthUtil paramMMGoogleAuthUtil, Context paramContext, String paramString1, String paramString2)
  {
    this.mContext = paramContext;
    this.dsA = paramString1;
    this.dsw = paramString2;
    this.dsy = false;
  }

  private Void QA()
  {
    try
    {
      MMGoogleAuthUtil.a(this.dsD, b.a(this.mContext, this.dsA, this.dsw));
      this.dsz = true;
      this.dsC = 0;
      return null;
    }
    catch (c localc)
    {
      while (true)
      {
        this.dsB = localc.getMessage();
        this.dsC = -2;
      }
    }
    catch (d locald)
    {
      while (true)
      {
        this.dsB = locald.getMessage();
        this.dsC = -3;
        if (this.dsD.dsx < 4)
        {
          MMGoogleAuthUtil localMMGoogleAuthUtil = this.dsD;
          localMMGoogleAuthUtil.dsx = (1 + localMMGoogleAuthUtil.dsx);
          this.dsy = true;
          this.dsD.startActivityForResult(locald.getIntent(), 2002);
          System.out.println("startActivityForResult");
        }
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        this.dsB = localIOException.getMessage();
        this.dsC = -4;
      }
    }
    catch (com.google.android.gms.a.a locala)
    {
      while (true)
      {
        this.dsB = locala.getMessage();
        this.dsC = -5;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        this.dsB = localException.getMessage();
        this.dsC = -1;
      }
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    this.dsz = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gms.a
 * JD-Core Version:    0.6.2
 */