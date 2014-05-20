package com.tencent.mm.ui;

import android.os.Looper;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import java.util.LinkedList;

final class o
{
  private q gkT;
  private r gkU;
  private LinkedList gkV;
  private int gkW;

  public o(h paramh)
  {
    aEf();
  }

  private void aEf()
  {
    this.gkT = new q(this, Looper.getMainLooper());
    this.gkU = new r(this, be.ut().getLooper());
  }

  private void aEg()
  {
    r.a(this.gkU);
    this.gkT.clear();
    this.gkV.clear();
    this.gkW = 0;
  }

  private int aEi()
  {
    int j;
    if (this.gkV.size() > 1)
      j = 2;
    int i;
    do
    {
      return j;
      i = this.gkV.size();
      j = 0;
    }
    while (i != 1);
    return ((Integer)this.gkV.get(0)).intValue();
  }

  private void aEk()
  {
    try
    {
      r.b(this.gkU);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private int aEl()
  {
    try
    {
      int i = this.gkW;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void mo(int paramInt)
  {
    try
    {
      if (!this.gkV.contains(Integer.valueOf(paramInt)))
        this.gkV.add(Integer.valueOf(paramInt));
      this.gkW = aEi();
      r.c(this.gkU);
      return;
    }
    finally
    {
    }
  }

  public final void aEh()
  {
    try
    {
      aa.i(this.gkP.TAG, "newcursor resetQueue ");
      aEg();
      aEf();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean aEj()
  {
    try
    {
      int i = this.gkW;
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final void quit()
  {
    try
    {
      aa.i(this.gkP.TAG, "newcursor quit ");
      aEg();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.o
 * JD-Core Version:    0.6.2
 */