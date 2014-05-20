package com.tencent.mm.ui.chatting;

import android.graphics.Matrix;
import android.view.View;
import android.view.animation.Transformation;
import junit.framework.Assert;

final class bd extends bb
{
  private int cPc;
  private int cPd;
  private float gLQ;
  private float gLR;
  private float gLS;
  private float gLT;
  private float gLU = 0.01F;
  private float gLV = 0.02F;
  private float gLW;
  private float gLX;
  private float gLY;
  private float gLZ;

  public bd(ChattingAnimFrame paramChattingAnimFrame, int paramInt1, int paramInt2)
  {
    super(paramChattingAnimFrame);
    this.cPc = paramInt1;
    this.cPd = paramInt2;
    this.gLQ = ChattingAnimFrame.o(0.1F, 0.9F);
    this.gLR = this.gLQ;
    this.gLT = ChattingAnimFrame.o(-0.3F, -0.1F);
    gm();
  }

  private void gm()
  {
    if (this.gLT > 0.0F)
      this.gLV += this.gLU;
    this.gLS = this.gLT;
    this.gLT += this.gLV;
    if (this.gLS > 1.1F)
      if (this.targetView == null)
        break label139;
    label139: for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.targetView.post(new bc(this));
      this.gLW = (this.gLQ * this.cPc);
      this.gLX = (this.gLR * this.cPc);
      this.gLY = (this.gLS * this.cPd);
      this.gLZ = (this.gLT * this.cPd);
      return;
    }
  }

  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = this.gLW;
    float f2 = this.gLY;
    if (this.gLW != this.gLX)
      f1 = this.gLW + paramFloat * (this.gLX - this.gLW);
    if (this.gLY != this.gLZ)
      f2 = this.gLY + paramFloat * (this.gLZ - this.gLY);
    paramTransformation.getMatrix().setTranslate(f1, f2);
    if (paramFloat == 1.0F)
      gm();
  }

  public final void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    setRepeatCount(-1);
    setDuration(100L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bd
 * JD-Core Version:    0.6.2
 */