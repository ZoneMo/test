package com.tencent.mm.plugin.ext.provider;

import android.database.MatrixCursor;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.d.a.a;
import com.tencent.mm.sdk.platformtools.aa;

final class e
  implements m
{
  e(d paramd, String paramString)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.ExtControlMsgProvider", "onSceneEnd errType=%s, errCode=%s", arrayOfObject1);
    if (paramx == null)
    {
      aa.e("MicroMsg.ExtControlMsgProvider", "scene == null");
      be.uA().b(522, this);
      this.dfR.dfN.fT(4);
      this.dfR.cOF.countDown();
      return;
    }
    switch (paramx.getType())
    {
    default:
      this.dfR.dfN.fT(0);
    case 522:
    }
    while (true)
    {
      this.dfR.cOF.countDown();
      be.uA().b(522, this);
      return;
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        aa.d("MicroMsg.ExtControlMsgProvider", "rtSENDMSG onSceneEnd ok, ");
        MatrixCursor localMatrixCursor2 = this.dfR.dfP;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = this.dfQ;
        arrayOfObject3[1] = Integer.valueOf(1);
        localMatrixCursor2.addRow(arrayOfObject3);
        break;
      }
      aa.e("MicroMsg.ExtControlMsgProvider", "rtSENDMSG onSceneEnd err, errType = " + paramInt1 + ", errCode = " + paramInt2);
      MatrixCursor localMatrixCursor1 = this.dfR.dfP;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = this.dfQ;
      arrayOfObject2[1] = Integer.valueOf(2);
      localMatrixCursor1.addRow(arrayOfObject2);
      this.dfR.dfN.fT(4);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.e
 * JD-Core Version:    0.6.2
 */