package com.tencent.mm.plugin.ext.provider;

import android.database.MatrixCursor;
import com.tencent.mm.c.a.aw;
import com.tencent.mm.c.a.ay;
import com.tencent.mm.c.a.bc;
import com.tencent.mm.c.a.be;
import com.tencent.mm.plugin.ext.b;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.storage.i;

final class c
  implements Runnable
{
  c(ExtControlProviderMsg paramExtControlProviderMsg, int paramInt, long paramLong, com.tencent.mm.pluginsdk.d.a.a parama, String[] paramArrayOfString)
  {
  }

  public final void run()
  {
    if (this.dfK == 1)
    {
      b.Mm();
      i locali = b.T(this.dfL);
      if ((locali == null) || (locali.rj() <= 0))
      {
        this.dfN.fT(3);
        this.cOF.countDown();
        return;
      }
      aw localaw2 = new aw();
      localaw2.bMX.op = 1;
      localaw2.bMX.username = locali.getUsername();
      if (!com.tencent.mm.sdk.b.a.ayH().f(localaw2))
      {
        this.dfN.fT(4);
        this.cOF.countDown();
        return;
      }
      ExtControlProviderMsg.a(this.dfN, new MatrixCursor(ExtControlProviderMsg.Ms()));
      if ((locali != null) && (locali.rj() > 0) && (localaw2.bMY.bMh))
      {
        MatrixCursor localMatrixCursor5 = ExtControlProviderMsg.a(this.dfN);
        Object[] arrayOfObject7 = new Object[3];
        arrayOfObject7[0] = this.dfM[1];
        arrayOfObject7[1] = Integer.valueOf(1);
        arrayOfObject7[2] = "0";
        localMatrixCursor5.addRow(arrayOfObject7);
        this.dfN.fT(0);
        Object[] arrayOfObject6 = new Object[2];
        arrayOfObject6[0] = Boolean.valueOf(localaw2.bMY.bMh);
        arrayOfObject6[1] = localaw2.bMY.rD;
        aa.e("MicroMsg.ExtControlMsgProvider", "start record, ret=[%s], fileName=[%s]", arrayOfObject6);
      }
    }
    while (true)
    {
      this.cOF.countDown();
      return;
      MatrixCursor localMatrixCursor4 = ExtControlProviderMsg.a(this.dfN);
      Object[] arrayOfObject5 = new Object[3];
      arrayOfObject5[0] = this.dfM[1];
      arrayOfObject5[1] = Integer.valueOf(2);
      arrayOfObject5[2] = "0";
      localMatrixCursor4.addRow(arrayOfObject5);
      this.dfN.fT(3);
      break;
      if (this.dfK == 2)
      {
        aw localaw1 = new aw();
        localaw1.bMX.op = 2;
        if (!com.tencent.mm.sdk.b.a.ayH().f(localaw1))
        {
          this.dfN.fT(4);
          this.cOF.countDown();
          return;
        }
        String str = localaw1.bMY.rD;
        ExtControlProviderMsg.a(this.dfN, new MatrixCursor(ExtControlProviderMsg.Ms()));
        bc localbc = new bc();
        localbc.bNe.rD = str;
        if (!com.tencent.mm.sdk.b.a.ayH().f(localbc))
        {
          this.dfN.fT(4);
          ExtControlProviderMsg.a(this.dfN).close();
          this.cOF.countDown();
          return;
        }
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(localbc.bNf.bMS);
        aa.e("MicroMsg.ExtControlMsgProvider", "stop record, msgId=[%s]", arrayOfObject1);
        long l = localbc.bNf.bMS;
        if (l > 0L)
        {
          try
          {
            if (!localaw1.bMY.bMh)
              break label664;
            if ((al.getContext() == null) || (!ba.bk(al.getContext())))
              break label603;
            MatrixCursor localMatrixCursor3 = ExtControlProviderMsg.a(this.dfN);
            Object[] arrayOfObject4 = new Object[3];
            arrayOfObject4[0] = this.dfM[1];
            arrayOfObject4[1] = Integer.valueOf(1);
            arrayOfObject4[2] = com.tencent.mm.plugin.ext.a.a.V(l);
            localMatrixCursor3.addRow(arrayOfObject4);
            this.dfN.fT(0);
          }
          catch (Exception localException)
          {
            aa.w("MicroMsg.ExtControlMsgProvider", localException.getMessage());
            this.dfN.fT(4);
          }
          continue;
          label603: MatrixCursor localMatrixCursor2 = ExtControlProviderMsg.a(this.dfN);
          Object[] arrayOfObject3 = new Object[3];
          arrayOfObject3[0] = this.dfM[1];
          arrayOfObject3[1] = Integer.valueOf(6);
          arrayOfObject3[2] = com.tencent.mm.plugin.ext.a.a.V(l);
          localMatrixCursor2.addRow(arrayOfObject3);
          this.dfN.fT(4);
          continue;
          label664: MatrixCursor localMatrixCursor1 = ExtControlProviderMsg.a(this.dfN);
          Object[] arrayOfObject2 = new Object[3];
          arrayOfObject2[0] = this.dfM[1];
          arrayOfObject2[1] = Integer.valueOf(4);
          arrayOfObject2[2] = com.tencent.mm.plugin.ext.a.a.V(l);
          localMatrixCursor1.addRow(arrayOfObject2);
          this.dfN.fT(4);
        }
        else
        {
          this.dfN.fT(3);
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.c
 * JD-Core Version:    0.6.2
 */