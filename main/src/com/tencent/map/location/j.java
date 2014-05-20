package com.tencent.map.location;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.LinkedList;
import java.util.List;

public final class j
{
  private boolean TW = false;
  private List Ua = new LinkedList();
  private TelephonyManager Ue = null;
  private l Uf = null;
  private n Ug = null;
  private m Uh = null;
  private byte[] Ui = new byte[0];
  private byte[] Uj = new byte[0];
  private boolean Uk = false;
  private Context a = null;

  private int ba(int paramInt)
  {
    String str = this.Ue.getNetworkOperator();
    if ((str != null) && (str.length() >= 3));
    int i;
    while (true)
    {
      try
      {
        int j = Integer.valueOf(str.substring(0, 3)).intValue();
        i = j;
        if ((paramInt != 2) || (i != -1))
          break;
        return 0;
      }
      catch (Exception localException)
      {
      }
      i = -1;
    }
    return i;
  }

  public final boolean a(Context paramContext, n paramn)
  {
    synchronized (this.Ui)
    {
      if (this.TW)
        return true;
      if ((paramContext == null) || (paramn == null))
        return false;
      this.a = paramContext;
      this.Ug = paramn;
      try
      {
        this.Ue = ((TelephonyManager)this.a.getSystemService("phone"));
        TelephonyManager localTelephonyManager = this.Ue;
        if (localTelephonyManager == null)
          return false;
        int i = this.Ue.getPhoneType();
        this.Uf = new l(this, ba(i), i);
        l locall = this.Uf;
        if (locall == null)
          return false;
        this.Ue.listen(this.Uf, 18);
        this.TW = true;
        return this.TW;
      }
      catch (Exception localException)
      {
        return false;
      }
    }
  }

  public final void lX()
  {
    synchronized (this.Ui)
    {
      if (!this.TW)
        return;
      if (this.Ue != null)
      {
        l locall = this.Uf;
        if (locall == null);
      }
    }
    try
    {
      this.Ue.listen(this.Uf, 0);
      this.TW = false;
      return;
      localObject = finally;
      throw localObject;
    }
    catch (Exception localException)
    {
      while (true)
        this.TW = false;
    }
  }

  public final List lY()
  {
    synchronized (this.Uj)
    {
      List localList = this.Ua;
      LinkedList localLinkedList = null;
      if (localList != null)
      {
        localLinkedList = new LinkedList();
        localLinkedList.addAll(this.Ua);
      }
      return localLinkedList;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.j
 * JD-Core Version:    0.6.2
 */