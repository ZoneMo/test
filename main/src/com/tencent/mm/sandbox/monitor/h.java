package com.tencent.mm.sandbox.monitor;

import android.os.Build;
import com.tencent.mm.protocal.a;

public final class h
{
  public final String cwk = a.fxk + "_" + a.fxr + "_" + Build.CPU_ABI;
  public String msg;
  public String tag;
  public long timestamp;
  public String username;

  public h(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    this.username = paramString1;
    this.tag = paramString2;
    this.timestamp = paramLong;
    this.msg = paramString3;
  }

  public final String toString()
  {
    return this.username + "," + this.cwk + "," + this.tag + ",time_" + this.timestamp + ",error_" + this.msg;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.h
 * JD-Core Version:    0.6.2
 */