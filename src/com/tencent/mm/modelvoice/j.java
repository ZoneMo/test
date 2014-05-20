package com.tencent.mm.modelvoice;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.FileOutputStream;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public final class j
{
  private static l cBy = new l();
  private i cBx = new i();
  private m cBz = null;
  private BlockingQueue ccB = new ArrayBlockingQueue(1024);
  private boolean ccC = false;
  private FileOutputStream ccD;
  private String ccE;
  private int ccF;
  private boolean ccG = false;
  private int ccH = 1;
  private int ccI = 0;

  public final boolean c(int paramInt, String paramString)
  {
    if (paramString == null)
      return false;
    this.ccF = paramInt;
    this.ccE = paramString;
    MediaRecorder.J(0L);
    try
    {
      this.ccD = new FileOutputStream(this.ccE);
      this.ccD.write("#!AMR\n".getBytes());
      this.ccD.flush();
      this.cBx.eB(this.ccF);
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MediaRecorder", "init Amr out file Error" + localException.getMessage());
    }
    return false;
  }

  public final void h(byte[] paramArrayOfByte, int paramInt)
  {
    aa.d("MicroMsg.MediaRecorder", "push into queue queueLen:" + this.ccB.size() + " buf:" + paramInt);
    MediaRecorder.J(MediaRecorder.Ee() + paramInt);
    if (paramInt <= 0)
      return;
    if (this.cBz == null)
    {
      this.cBz = new m(this, (byte)0);
      this.cBz.start();
    }
    this.ccB.add(new k(paramArrayOfByte, paramInt));
  }

  // ERROR //
  public final boolean pz()
  {
    // Byte code:
    //   0: ldc 82
    //   2: ldc 224
    //   4: invokestatic 133	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 42	com/tencent/mm/modelvoice/j:ccC	Z
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_0
    //   17: getfield 55	com/tencent/mm/modelvoice/j:cBz	Lcom/tencent/mm/modelvoice/m;
    //   20: invokevirtual 227	com/tencent/mm/modelvoice/m:join	()V
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
 * Qualified Name:     com.tencent.mm.modelvoice.j
 * JD-Core Version:    0.6.2
 */