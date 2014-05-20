package com.tencent.mm.network;

import com.tencent.mm.a.i;
import com.tencent.mm.network.a.a;
import com.tencent.mm.sdk.platformtools.aa;

public final class bh
{
  private static final byte[] cFm = i.bm(7);
  public af cFn;

  public static void onOOBNotify(long paramLong1, long paramLong2)
  {
    bk.Fd().hF(paramLong1 + "," + paramLong2);
  }

  public final void onNotify(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder("onNotify, seq(threadId)=").append(paramInt1).append(", datalen=");
    int i;
    if (paramArrayOfByte == null)
    {
      i = 0;
      aa.i("MicroMsg.MMNativeNetNotifyAdapter", i + " cmd= " + paramInt2);
    }
    switch (paramInt2)
    {
    case 11:
    case 12:
    default:
    case 5:
    case 24:
    case 39:
    case 61:
    case 8:
    case 120:
    case 122:
      do
      {
        do
        {
          do
          {
            return;
            i = paramArrayOfByte.length;
            break;
            aa.i("MicroMsg.MMNativeNetNotifyAdapter", "old notify");
            bk.Fb().a(1103, null, null);
            this.cFn.a(38, cFm);
            return;
            aa.i("MicroMsg.MMNativeNetNotifyAdapter", "dkpush new notify");
            bk.Fb().a(1103, null, null);
            this.cFn.a(38, paramArrayOfByte);
            return;
            aa.i("MicroMsg.MMNativeNetNotifyAdapter", "dkpush do synccheck");
            this.cFn.a(39, null);
            return;
            this.cFn.a(174, null);
            return;
          }
          while (paramArrayOfByte.length <= 0);
          this.cFn.a(10, paramArrayOfByte);
          return;
          aa.i("MicroMsg.MMNativeNetNotifyAdapter", "MM_PKT_VOIP_REQ");
        }
        while (paramArrayOfByte.length <= 0);
        this.cFn.a(170, paramArrayOfByte);
        return;
        aa.i("MicroMsg.MMNativeNetNotifyAdapter", "dkpush MM_PKT_PUSH_DATA_REQ");
      }
      while (paramArrayOfByte.length <= 0);
      bk.Fb().a(1104, null, null);
      this.cFn.a(268369921, paramArrayOfByte);
      return;
    case 1000000205:
      this.cFn.a(1000000205, paramArrayOfByte);
      return;
    case 192:
      this.cFn.a(192, paramArrayOfByte);
      return;
    case 268369923:
      aa.i("MicroMsg.MMNativeNetNotifyAdapter", "dkpush do oob do notify");
      this.cFn.a(268369923, paramArrayOfByte);
      return;
    case 241:
      aa.i("MicroMsg.MMNativeNetNotifyAdapter", "jacks do voice notify PUSH");
      this.cFn.a(241, paramArrayOfByte);
      return;
    case 244:
    }
    aa.i("MicroMsg.MMNativeNetNotifyAdapter", "pandy do gamesync notify");
    this.cFn.a(244, paramArrayOfByte);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bh
 * JD-Core Version:    0.6.2
 */