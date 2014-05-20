package com.tencent.mm.compatible.audio;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.FileOutputStream;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

final class v
{
  private static x ccJ = new x();
  private BlockingQueue ccB = new ArrayBlockingQueue(1024);
  private boolean ccC = false;
  private FileOutputStream ccD;
  private String ccE;
  private int ccF;
  private boolean ccG = false;
  private int ccH = 1;
  private int ccI = 0;
  private y ccK = null;

  private boolean c(int paramInt, String paramString)
  {
    if (paramString == null)
      return false;
    this.ccF = paramInt;
    this.ccE = paramString;
    SimpleMediaRecorder.k(0L);
    try
    {
      this.ccD = new FileOutputStream(this.ccE);
      this.ccD.write("#!AMR\n".getBytes());
      this.ccD.flush();
      SimpleMediaRecorder.pw();
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SimpleMediaRecorder", "init Amr out file Error" + localException.getMessage());
    }
    return false;
  }

  public final void h(byte[] paramArrayOfByte, int paramInt)
  {
    aa.d("MicroMsg.SimpleMediaRecorder", "push into queue queueLen:" + this.ccB.size() + " buf:" + paramInt);
    SimpleMediaRecorder.k(SimpleMediaRecorder.px() + paramInt);
    if (paramInt <= 0)
      return;
    if (this.ccK == null)
    {
      this.ccK = new y(this, (byte)0);
      this.ccK.start();
    }
    this.ccB.add(new w(paramArrayOfByte, paramInt));
  }

  // ERROR //
  public final boolean pz()
  {
    // Byte code:
    //   0: ldc 80
    //   2: ldc 219
    //   4: invokestatic 131	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 40	com/tencent/mm/compatible/audio/v:ccC	Z
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_0
    //   17: getfield 48	com/tencent/mm/compatible/audio/v:ccK	Lcom/tencent/mm/compatible/audio/y;
    //   20: invokevirtual 222	com/tencent/mm/compatible/audio/y:join	()V
    //   23: iconst_0
    //   24: ireturn
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    //   30: astore_2
    //   31: goto -8 -> 23
    //
    // Exception table:
    //   from	to	target	type
    //   9	16	25	finally
    //   16	23	30	java/lang/InterruptedException
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.v
 * JD-Core Version:    0.6.2
 */