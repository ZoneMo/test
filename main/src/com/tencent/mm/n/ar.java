package com.tencent.mm.n;

import android.os.Handler;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.al;
import com.tencent.mm.network.o;
import com.tencent.mm.network.y;
import com.tencent.mm.protocal.c;
import com.tencent.mm.protocal.f;

public final class ar extends al
{
  private aj cmF;
  c cmO;
  f cmP;
  Handler handler;

  public ar(aj paramaj)
  {
    this(paramaj, new Handler());
  }

  public ar(aj paramaj, Handler paramHandler)
  {
    this.cmF = paramaj;
    this.cmO = new aq(paramaj.wJ(), paramaj.getType());
    this.cmP = new av(paramaj.wv(), paramaj.getType());
    this.handler = paramHandler;
  }

  public final void a(o paramo, int paramInt1, int paramInt2)
  {
    this.handler.post(new as(this, paramInt1, paramInt2));
  }

  public final void a(o paramo, y paramy, int paramInt1, int paramInt2)
  {
    this.handler.post(new at(this, paramo, paramy, paramInt1, paramInt2));
  }

  public final void b(o paramo, y paramy, int paramInt1, int paramInt2)
  {
    this.handler.post(new au(this, paramy, paramInt1, paramInt2));
  }

  public final void ey(String paramString)
  {
  }

  public final int getType()
  {
    return this.cmF.getType();
  }

  public final String getUri()
  {
    return this.cmF.getUri();
  }

  public final int wK()
  {
    return this.cmF.wK();
  }

  public final boolean xi()
  {
    return false;
  }

  public final c xj()
  {
    return this.cmO;
  }

  public final f xk()
  {
    return this.cmP;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ar
 * JD-Core Version:    0.6.2
 */