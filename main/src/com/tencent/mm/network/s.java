package com.tencent.mm.network;

import android.os.IInterface;
import com.tencent.mm.network.a.c;
import com.tencent.mm.protocal.bf;
import java.util.List;

public abstract interface s extends IInterface
{
  public abstract o EM();

  public abstract void EN();

  public abstract v EO();

  public abstract void V(boolean paramBoolean);

  public abstract int a(ak paramak, ac paramac);

  public abstract void a(c paramc);

  public abstract void a(bf parambf);

  public abstract void a(boolean paramBoolean, String paramString1, String paramString2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2, String paramString3, String paramString4);

  public abstract int c(String paramString, List paramList);

  public abstract void cancel(int paramInt);

  public abstract void d(String paramString1, String paramString2, String paramString3, String paramString4);

  public abstract void eu(String paramString);

  public abstract String[] getIPsString(boolean paramBoolean);

  public abstract String getNetworkServerIp();

  public abstract void reset();

  public abstract void setHostInfo(String[] paramArrayOfString1, String[] paramArrayOfString2);

  public abstract boolean wT();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.s
 * JD-Core Version:    0.6.2
 */