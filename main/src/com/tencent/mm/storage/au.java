package com.tencent.mm.storage;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public final class au
{
  private String git = "";
  private boolean giu;
  List giv;
  List giw;

  public au(String paramString)
  {
    this.git = paramString;
    this.giu = false;
    this.giv = aDa();
    this.giw = new ArrayList();
  }

  private void a(bz parambz, String paramString)
  {
    try
    {
      File localFile = new File(this.git + paramString);
      if (!localFile.exists())
        localFile.createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile, true);
      localFileOutputStream.write(parambz.toString().getBytes());
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void aCZ()
  {
    File localFile = new File(this.git + "op.tem");
    if ((!localFile.exists()) || (localFile.length() != 0L));
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(this.git + "op.log", true);
      FileInputStream localFileInputStream = new FileInputStream(localFile);
      byte[] arrayOfByte = new byte[(int)localFile.length()];
      localFileInputStream.read(arrayOfByte);
      localFileOutputStream.write(arrayOfByte);
      localFileInputStream.close();
      localFileOutputStream.close();
      label119: localFile.delete();
      return;
    }
    catch (Exception localException)
    {
      break label119;
    }
  }

  private List aDa()
  {
    aCZ();
    ArrayList localArrayList1 = new ArrayList();
    while (true)
    {
      int j;
      Object[] arrayOfObject;
      String[] arrayOfString2;
      try
      {
        aa.i("MicroMsg.OpLogStorage", "getOPListFromFiles, file=" + this.git + "op.log");
        File localFile = new File(this.git + "op.log");
        if (!localFile.exists())
          localFile.createNewFile();
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        try
        {
          byte[] arrayOfByte = new byte[(int)localFile.length()];
          localFileInputStream.read(arrayOfByte);
          localFileInputStream.close();
          String str1 = new String(arrayOfByte);
          String[] arrayOfString1 = str1.split(";");
          int i = arrayOfString1.length;
          j = 0;
          if (j >= i)
            break label509;
          String str2 = arrayOfString1[j];
          aa.i("MicroMsg.OpLogStorage", "operation:[" + str2 + "], count=" + arrayOfString1.length);
          arrayOfObject = av.vt(str2);
          if (arrayOfObject.length <= 1)
            aa.d("MicroMsg.OpLogStorage", "invalid operation, arg equals to 0");
        }
        catch (Error localError)
        {
          localFile.delete();
          return localArrayList1;
        }
        arrayOfString2 = aw.g(arrayOfObject);
        try
        {
          switch (cj.c(Integer.valueOf(arrayOfString2[0])))
          {
          default:
            aa.e("MicroMsg.OpLogStorage", "getOPListFromFiles: not found this opid");
          case 101:
          case 102:
          case 103:
          case 128:
          case 104:
          case 105:
          case 106:
          case 107:
          case 109:
          case 110:
          case 111:
          case 119:
          case 112:
          case 113:
          case 114:
          case 118:
          case 115:
          case 116:
          case 117:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 127:
          case 10000:
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          aa.e("MicroMsg.OpLogStorage", "getOPListFromFiles failed, e=" + localNumberFormatException.getMessage());
        }
      }
      catch (Exception localException)
      {
      }
      label509: return localArrayList1;
      if (arrayOfString2.length <= 19)
      {
        localArrayList1.add(new ax(arrayOfString2[1], arrayOfString2[2], arrayOfString2[3], arrayOfString2[4], Integer.valueOf(arrayOfString2[5]).intValue(), Integer.valueOf(arrayOfString2[6]).intValue(), Integer.valueOf(arrayOfString2[7]).intValue(), arrayOfString2[9], arrayOfString2[10], arrayOfString2[11], Integer.valueOf(arrayOfString2[12]).intValue(), arrayOfString2[13], Integer.valueOf(arrayOfString2[14]).intValue(), Integer.valueOf(arrayOfString2[15]).intValue(), arrayOfString2[16], arrayOfString2[17], arrayOfString2[18], "", 0));
      }
      else
      {
        localArrayList1.add(new ax(arrayOfString2[1], arrayOfString2[2], arrayOfString2[3], arrayOfString2[4], Integer.valueOf(arrayOfString2[5]).intValue(), Integer.valueOf(arrayOfString2[6]).intValue(), Integer.valueOf(arrayOfString2[7]).intValue(), arrayOfString2[9], arrayOfString2[10], arrayOfString2[11], Integer.valueOf(arrayOfString2[12]).intValue(), arrayOfString2[13], Integer.valueOf(arrayOfString2[14]).intValue(), Integer.valueOf(arrayOfString2[15]).intValue(), arrayOfString2[16], arrayOfString2[17], arrayOfString2[18], arrayOfString2[19], Integer.valueOf(arrayOfString2[20]).intValue()));
        break label2076;
        localArrayList1.add(new bb(arrayOfString2[1]));
        break label2076;
        localArrayList1.add(new bp(Integer.valueOf(arrayOfString2[1]).intValue(), Integer.valueOf(arrayOfString2[2]).intValue(), arrayOfString2[3], arrayOfString2[4]));
        break label2076;
        localArrayList1.add(new br(Integer.valueOf(arrayOfString2[1]).intValue()));
        break label2076;
        if (arrayOfString2.length <= 15)
        {
          localArrayList1.add(new bt(Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2], arrayOfString2[3], Integer.valueOf(arrayOfString2[4]).intValue(), arrayOfString2[5], arrayOfString2[6], arrayOfString2[7], Integer.valueOf(arrayOfString2[8]).intValue(), Integer.valueOf(arrayOfString2[9]).intValue(), Integer.valueOf(arrayOfString2[10]).intValue(), arrayOfString2[11], arrayOfString2[12], arrayOfString2[13], Integer.valueOf(arrayOfString2[14]).intValue(), "", 0, "", 0));
        }
        else if (arrayOfString2.length <= 16)
        {
          localArrayList1.add(new bt(Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2], arrayOfString2[3], Integer.valueOf(arrayOfString2[4]).intValue(), arrayOfString2[5], arrayOfString2[6], arrayOfString2[7], Integer.valueOf(arrayOfString2[8]).intValue(), Integer.valueOf(arrayOfString2[9]).intValue(), Integer.valueOf(arrayOfString2[10]).intValue(), arrayOfString2[11], arrayOfString2[12], arrayOfString2[13], Integer.valueOf(arrayOfString2[14]).intValue(), arrayOfString2[15], 0, "", 0));
        }
        else
        {
          localArrayList1.add(new bt(Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2], arrayOfString2[3], Integer.valueOf(arrayOfString2[4]).intValue(), arrayOfString2[5], arrayOfString2[6], arrayOfString2[7], Integer.valueOf(arrayOfString2[8]).intValue(), Integer.valueOf(arrayOfString2[9]).intValue(), Integer.valueOf(arrayOfString2[10]).intValue(), arrayOfString2[11], arrayOfString2[12], arrayOfString2[13], Integer.valueOf(arrayOfString2[14]).intValue(), arrayOfString2[15], Integer.valueOf(arrayOfString2[16]).intValue(), arrayOfString2[17], Integer.valueOf(arrayOfString2[18]).intValue()));
          break label2076;
          localArrayList1.add(new bc(arrayOfString2[1], Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new ba(arrayOfString2[1]));
          break label2076;
          localArrayList1.add(new bd(arrayOfString2[1], Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new bu(arrayOfString2[1]));
          break label2076;
          localArrayList1.add(new ay(arrayOfString2[1]));
          break label2076;
          localArrayList1.add(new bq(arrayOfString2[1], Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new bo(Boolean.valueOf(arrayOfString2[1]).booleanValue(), Integer.valueOf(arrayOfString2[2]).intValue(), Integer.valueOf(arrayOfString2[3]).intValue()));
          break label2076;
          localArrayList1.add(new bl(arrayOfString2[1], arrayOfString2[2], arrayOfString2[3], arrayOfString2[4], Integer.valueOf(arrayOfString2[5]).intValue(), arrayOfString2[6], arrayOfString2[7], arrayOfString2[8], Integer.valueOf(arrayOfString2[9]).intValue()));
          break label2076;
          localArrayList1.add(new bw(arrayOfString2[1], arrayOfString2[2]));
          break label2076;
          localArrayList1.add(new bm(arrayOfString2[1], Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new bn(arrayOfString2[1], arrayOfString2[2]));
          break label2076;
          localArrayList1.add(new be(arrayOfString2[1], arrayOfString2[2]));
          break label2076;
          localArrayList1.add(new bg(Integer.valueOf(arrayOfString2[1]).intValue(), Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new by(Integer.valueOf(arrayOfString2[1]).intValue()));
          break label2076;
          localArrayList1.add(new bf(arrayOfString2[1], Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new bs(Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2], arrayOfString2[3]));
          break label2076;
          localArrayList1.add(new bv(Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2]));
          break label2076;
          String[] arrayOfString3 = arrayOfString2[1].split(";");
          ArrayList localArrayList2 = new ArrayList();
          int k = arrayOfString3.length;
          for (int m = 0; m < k; m++)
          {
            String str3 = arrayOfString3[m];
            bj localbj = new bj();
            localbj.vu(str3);
            localArrayList2.add(localbj);
          }
          localArrayList1.add(new bi(localArrayList2));
          break label2076;
          localArrayList1.add(new bx(Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2]));
          break label2076;
          localArrayList1.add(new bh(arrayOfString2[1], Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new bk(Integer.valueOf(arrayOfString2[1]).intValue(), Integer.valueOf(arrayOfString2[2]).intValue()));
          break label2076;
          localArrayList1.add(new az(Integer.valueOf(arrayOfString2[1]).intValue(), (byte[])arrayOfObject[2]));
        }
      }
      label2076: j++;
    }
  }

  public final void a(bz parambz)
  {
    if (!this.giu)
    {
      a(parambz, "op.log");
      this.giv.add(parambz);
      return;
    }
    a(parambz, "op.tem");
    this.giw.add(parambz);
  }

  public final List aCY()
  {
    if (this.giu)
      return new ArrayList();
    this.giu = true;
    return this.giv;
  }

  public final void cT(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.giv = this.giw;
      this.giw = new ArrayList();
      File localFile1 = new File(this.git + "op.log");
      if (localFile1.exists())
        localFile1.delete();
      File localFile2 = new File(this.git + "op.tem");
      if (localFile2.exists())
        localFile2.renameTo(new File(this.git + "op.log"));
    }
    while (true)
    {
      this.giu = false;
      return;
      this.giv.addAll(this.giw);
      this.giw.clear();
      aCZ();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.au
 * JD-Core Version:    0.6.2
 */