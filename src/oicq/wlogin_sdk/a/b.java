package oicq.wlogin_sdk.a;

import java.io.Serializable;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;

public final class b
  implements Serializable
{
  public byte[] hwD;
  public byte[] hwE;
  public byte[] hwF;
  public byte[] hwG;
  public byte[] hwH;
  public byte[] hwI;
  public byte[] hwJ;
  public byte[] hwK;
  public byte[] hwL;
  public byte[] hwM;
  public byte[] hwN;
  public byte[] hwO;
  public byte[] hwP;
  public byte[] hwQ;
  public byte[] hwR;
  public byte[] hwS;
  public byte[] hwT;
  public byte[] hwU;
  public byte[] hwV;
  public byte[] hwW;

  public final void a(WloginSigInfo paramWloginSigInfo)
  {
    byte[] arrayOfByte1;
    byte[] arrayOfByte2;
    label27: byte[] arrayOfByte3;
    label44: byte[] arrayOfByte4;
    label62: byte[] arrayOfByte5;
    label80: byte[] arrayOfByte6;
    label98: byte[] arrayOfByte7;
    label116: byte[] arrayOfByte8;
    label134: byte[] arrayOfByte9;
    label152: byte[] arrayOfByte10;
    label170: byte[] arrayOfByte11;
    label188: byte[] arrayOfByte12;
    label206: byte[] arrayOfByte13;
    label224: byte[] arrayOfByte14;
    label242: byte[] arrayOfByte15;
    label260: byte[] arrayOfByte16;
    label278: byte[] arrayOfByte17;
    label296: byte[] arrayOfByte18;
    label314: byte[] arrayOfByte19;
    if (paramWloginSigInfo.hwD == null)
    {
      arrayOfByte1 = new byte[0];
      this.hwD = arrayOfByte1;
      if (paramWloginSigInfo.hwE != null)
        break label371;
      arrayOfByte2 = new byte[0];
      this.hwE = arrayOfByte2;
      if (paramWloginSigInfo.hwF != null)
        break label385;
      arrayOfByte3 = new byte[0];
      this.hwF = arrayOfByte3;
      if (paramWloginSigInfo.hyo != null)
        break label400;
      arrayOfByte4 = new byte[0];
      this.hwG = arrayOfByte4;
      if (paramWloginSigInfo.hwH != null)
        break label415;
      arrayOfByte5 = new byte[0];
      this.hwH = arrayOfByte5;
      if (paramWloginSigInfo.hwI != null)
        break label430;
      arrayOfByte6 = new byte[0];
      this.hwI = arrayOfByte6;
      if (paramWloginSigInfo.hwJ != null)
        break label445;
      arrayOfByte7 = new byte[0];
      this.hwJ = arrayOfByte7;
      if (paramWloginSigInfo.hwK != null)
        break label460;
      arrayOfByte8 = new byte[0];
      this.hwK = arrayOfByte8;
      if (paramWloginSigInfo.hwL != null)
        break label475;
      arrayOfByte9 = new byte[0];
      this.hwL = arrayOfByte9;
      if (paramWloginSigInfo.hwM != null)
        break label490;
      arrayOfByte10 = new byte[0];
      this.hwM = arrayOfByte10;
      if (paramWloginSigInfo.hwN != null)
        break label505;
      arrayOfByte11 = new byte[0];
      this.hwN = arrayOfByte11;
      if (paramWloginSigInfo.hwO != null)
        break label520;
      arrayOfByte12 = new byte[0];
      this.hwO = arrayOfByte12;
      if (paramWloginSigInfo.hwP != null)
        break label535;
      arrayOfByte13 = new byte[0];
      this.hwP = arrayOfByte13;
      if (paramWloginSigInfo.hwQ != null)
        break label550;
      arrayOfByte14 = new byte[0];
      this.hwQ = arrayOfByte14;
      if (paramWloginSigInfo.hym != null)
        break label565;
      arrayOfByte15 = new byte[0];
      this.hwR = arrayOfByte15;
      if (paramWloginSigInfo.hyn != null)
        break label580;
      arrayOfByte16 = new byte[0];
      this.hwS = arrayOfByte16;
      if (paramWloginSigInfo.hwT != null)
        break label595;
      arrayOfByte17 = new byte[0];
      this.hwT = arrayOfByte17;
      if (paramWloginSigInfo.hwU != null)
        break label610;
      arrayOfByte18 = new byte[0];
      this.hwU = arrayOfByte18;
      if (paramWloginSigInfo.hyp != null)
        break label625;
      arrayOfByte19 = new byte[0];
      label332: this.hwV = arrayOfByte19;
      if (paramWloginSigInfo.hwW != null)
        break label640;
    }
    label640: for (byte[] arrayOfByte20 = new byte[0]; ; arrayOfByte20 = (byte[])paramWloginSigInfo.hwW.clone())
    {
      this.hwW = arrayOfByte20;
      return;
      arrayOfByte1 = (byte[])paramWloginSigInfo.hwD.clone();
      break;
      label371: arrayOfByte2 = (byte[])paramWloginSigInfo.hwE.clone();
      break label27;
      label385: arrayOfByte3 = (byte[])paramWloginSigInfo.hwF.clone();
      break label44;
      label400: arrayOfByte4 = (byte[])paramWloginSigInfo.hyo.clone();
      break label62;
      label415: arrayOfByte5 = (byte[])paramWloginSigInfo.hwH.clone();
      break label80;
      label430: arrayOfByte6 = (byte[])paramWloginSigInfo.hwI.clone();
      break label98;
      label445: arrayOfByte7 = (byte[])paramWloginSigInfo.hwJ.clone();
      break label116;
      label460: arrayOfByte8 = (byte[])paramWloginSigInfo.hwK.clone();
      break label134;
      label475: arrayOfByte9 = (byte[])paramWloginSigInfo.hwL.clone();
      break label152;
      label490: arrayOfByte10 = (byte[])paramWloginSigInfo.hwM.clone();
      break label170;
      label505: arrayOfByte11 = (byte[])paramWloginSigInfo.hwN.clone();
      break label188;
      label520: arrayOfByte12 = (byte[])paramWloginSigInfo.hwO.clone();
      break label206;
      label535: arrayOfByte13 = (byte[])paramWloginSigInfo.hwP.clone();
      break label224;
      label550: arrayOfByte14 = (byte[])paramWloginSigInfo.hwQ.clone();
      break label242;
      label565: arrayOfByte15 = (byte[])paramWloginSigInfo.hym.clone();
      break label260;
      label580: arrayOfByte16 = (byte[])paramWloginSigInfo.hyn.clone();
      break label278;
      label595: arrayOfByte17 = (byte[])paramWloginSigInfo.hwT.clone();
      break label296;
      label610: arrayOfByte18 = (byte[])paramWloginSigInfo.hwU.clone();
      break label314;
      label625: arrayOfByte19 = (byte[])paramWloginSigInfo.hyp.clone();
      break label332;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.b
 * JD-Core Version:    0.6.2
 */