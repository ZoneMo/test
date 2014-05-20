package com.tencent.mm.n;

import android.os.Handler;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.ad;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.ak;

public final class an extends ad
{
  private m clZ;
  private final long cmE = 600000L;
  private aj cmF;
  private ab cmG;
  private boolean cmH = false;
  private x cmI;
  private Runnable cmJ = new ao(this);
  private Handler handler;

  public an(aj paramaj, ab paramab, x paramx, m paramm)
  {
    this(paramaj, paramab, paramx, paramm, new Handler());
  }

  public an(aj paramaj, ab paramab, x paramx, m paramm, Handler paramHandler)
  {
    this.cmF = paramaj;
    this.cmG = paramab;
    this.cmI = paramx;
    this.clZ = paramm;
    this.handler = paramHandler;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, ak paramak, byte[] paramArrayOfByte)
  {
    this.cmI.wP();
    if (this.cmH)
      return;
    this.handler.removeCallbacks(this.cmJ);
    this.handler.post(new ap(this, paramInt1, paramInt2, paramInt3, paramString, paramArrayOfByte));
  }

  public final void cancel()
  {
    this.cmH = true;
    this.handler.removeCallbacks(this.cmJ);
  }

  public final void xb()
  {
    this.handler.postDelayed(this.cmJ, 600000L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.an
 * JD-Core Version:    0.6.2
 */