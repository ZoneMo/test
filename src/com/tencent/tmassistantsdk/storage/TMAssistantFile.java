package com.tencent.tmassistantsdk.storage;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import com.tencent.tmassistantsdk.util.TMLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidParameterException;

public class TMAssistantFile
{
  protected static final int DataBufferMaxLen = 16384;
  private static final String TAG = "TMAssistantFile";
  protected int mDataBufferDataLen = 0;
  private long mFileDataLen = 0L;
  protected String mFileName = null;
  protected FileOutputStream mFileOutputStream = null;
  protected byte[] mWriteDataBuffer = null;

  public TMAssistantFile(String paramString)
  {
    this.mFileName = paramString;
    this.mFileDataLen = length();
  }

  public static String getSaveFilePath(String paramString)
  {
    if (paramString == null);
    String str;
    do
    {
      return null;
      str = getSavePathRootDir();
    }
    while (str == null);
    return str + "/" + paramString;
  }

  public static String getSavePathRootDir()
  {
    if (isSDCardExistAndCanWrite())
    {
      String str1 = GlobalUtil.getInstance().getContext().getPackageName();
      String str2 = "/tencent/TMAssistantSDK/Download/" + str1;
      return Environment.getExternalStorageDirectory().getAbsolutePath() + str2;
    }
    Context localContext = GlobalUtil.getInstance().getContext();
    if (localContext != null)
      return localContext.getFilesDir().getAbsolutePath() + "/TMAssistantSDK/Download";
    return null;
  }

  protected static boolean isSDCardExistAndCanWrite()
  {
    return ("mounted".equals(Environment.getExternalStorageState())) && (Environment.getExternalStorageDirectory().canWrite());
  }

  private boolean moveFileFromTmpToSavaPath(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null))
    {
      File localFile = new File(paramString1);
      if (localFile.exists() == true)
      {
        boolean bool = localFile.renameTo(new File(paramString2));
        if (bool)
          GlobalUtil.updateFilePathAuthorized(paramString2);
        return bool;
      }
    }
    TMLog.w("TMAssistantFile", "moveFileFromTmpToSavaPath failed ");
    return false;
  }

  private boolean writeData(FileOutputStream paramFileOutputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2, long paramLong)
  {
    if ((paramFileOutputStream == null) || (paramArrayOfByte == null))
      return false;
    if (paramLong != this.mFileDataLen)
    {
      TMLog.i("TMAssistantFile", "writeData0 failed,filelen:" + this.mFileDataLen + ",offset:" + paramLong + ",filename:" + this.mFileName);
      return false;
    }
    if (paramInt2 >= 16384);
    while (true)
    {
      try
      {
        if (this.mDataBufferDataLen > 0)
        {
          paramFileOutputStream.write(this.mWriteDataBuffer, 0, this.mDataBufferDataLen);
          this.mDataBufferDataLen = 0;
        }
        paramFileOutputStream.write(paramArrayOfByte, paramInt1, paramInt2);
        this.mFileDataLen += paramInt2;
        return true;
      }
      catch (IOException localIOException2)
      {
        TMLog.w("TMAssistantFile", "writeData1 failed " + localIOException2);
        return false;
      }
      if ((paramInt2 + this.mDataBufferDataLen > 16384) && (this.mDataBufferDataLen > 0));
      try
      {
        paramFileOutputStream.write(this.mWriteDataBuffer, 0, this.mDataBufferDataLen);
        this.mDataBufferDataLen = 0;
        System.arraycopy(paramArrayOfByte, paramInt1, this.mWriteDataBuffer, this.mDataBufferDataLen, paramInt2);
        this.mDataBufferDataLen = (paramInt2 + this.mDataBufferDataLen);
        this.mFileDataLen += paramInt2;
      }
      catch (IOException localIOException1)
      {
        TMLog.w("TMAssistantFile", "writeData2 failed " + localIOException1);
      }
    }
    return false;
  }

  // ERROR //
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 169	com/tencent/tmassistantsdk/storage/TMAssistantFile:flush	()Z
    //   6: pop
    //   7: aload_0
    //   8: getfield 28	com/tencent/tmassistantsdk/storage/TMAssistantFile:mFileOutputStream	Ljava/io/FileOutputStream;
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: getfield 28	com/tencent/tmassistantsdk/storage/TMAssistantFile:mFileOutputStream	Ljava/io/FileOutputStream;
    //   18: invokevirtual 171	java/io/FileOutputStream:close	()V
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield 28	com/tencent/tmassistantsdk/storage/TMAssistantFile:mFileOutputStream	Ljava/io/FileOutputStream;
    //   26: aload_0
    //   27: aconst_null
    //   28: putfield 30	com/tencent/tmassistantsdk/storage/TMAssistantFile:mWriteDataBuffer	[B
    //   31: aload_0
    //   32: lconst_0
    //   33: putfield 32	com/tencent/tmassistantsdk/storage/TMAssistantFile:mFileDataLen	J
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    //   44: astore_3
    //   45: goto -24 -> 21
    //
    // Exception table:
    //   from	to	target	type
    //   2	7	39	finally
    //   7	21	39	finally
    //   21	36	39	finally
    //   7	21	44	java/io/IOException
  }

  public void deleteFile()
  {
    String str = getTmpFilePath(this.mFileName);
    TMLog.i("TMAssistantFile", "deleteFile 1 tmpFilePathString: " + str);
    if (!TextUtils.isEmpty(str))
    {
      File localFile = new File(str);
      TMLog.i("TMAssistantFile", "deleteFile 2 file: " + localFile);
      if (localFile.exists())
      {
        boolean bool = localFile.delete();
        TMLog.i("TMAssistantFile", "deleteFile result:" + bool + ",filename:" + str);
      }
    }
    else
    {
      return;
    }
    TMLog.i("TMAssistantFile", "deleteFile 3");
  }

  void ensureFilePath(String paramString)
  {
    int i = 1;
    if (TextUtils.isEmpty(paramString))
      throw new InvalidParameterException("fileFullPath is null or the filename.size is zero.");
    int j = paramString.lastIndexOf("/");
    if ((j == -1) || (paramString.length() == i))
      throw new InvalidParameterException("fileFullPath is not a valid full path. fileName: " + paramString);
    if (j > 0)
      paramString = paramString.substring(0, j);
    File localFile = new File(paramString);
    boolean bool;
    if (!localFile.exists())
      bool = localFile.mkdirs();
    if (!bool)
      throw new IOException("Failed to create directory. dir: " + paramString);
  }

  public boolean exists()
  {
    String str = getSaveFilePath(this.mFileName);
    if (str != null)
      return new File(str).exists();
    return false;
  }

  public boolean flush()
  {
    try
    {
      FileOutputStream localFileOutputStream = this.mFileOutputStream;
      boolean bool = false;
      if (localFileOutputStream != null)
      {
        int i = this.mDataBufferDataLen;
        bool = false;
        if (i <= 0);
      }
      try
      {
        this.mFileOutputStream.write(this.mWriteDataBuffer, 0, this.mDataBufferDataLen);
        this.mDataBufferDataLen = 0;
        bool = true;
        return bool;
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          TMLog.w("TMAssistantFile", "flush failed " + localIOException);
          bool = false;
        }
      }
    }
    finally
    {
    }
  }

  public String getTmpFilePath(String paramString)
  {
    if (paramString == null);
    String str;
    do
    {
      return null;
      str = getSavePathRootDir();
    }
    while (str == null);
    return str + "/.tmp/" + paramString + ".tmp";
  }

  public long length()
  {
    long l = 0L;
    String str1 = getSaveFilePath(this.mFileName);
    File localFile1;
    File localFile2;
    if (str1 != null)
    {
      localFile1 = new File(str1);
      if (localFile1.exists())
        break label90;
      String str2 = getTmpFilePath(this.mFileName);
      if (str2 != null)
      {
        localFile2 = new File(str2);
        if (localFile2.exists())
          break label78;
        this.mFileDataLen = l;
      }
    }
    while (true)
    {
      l = this.mFileDataLen;
      return l;
      label78: this.mFileDataLen = localFile2.length();
      continue;
      label90: this.mFileDataLen = localFile1.length();
    }
  }

  public void moveFileToSavaPath()
  {
    moveFileFromTmpToSavaPath(getTmpFilePath(this.mFileName), getSaveFilePath(this.mFileName));
  }

  public boolean write(byte[] paramArrayOfByte, int paramInt1, int paramInt2, long paramLong, boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        String str;
        if (this.mFileOutputStream == null)
        {
          str = getTmpFilePath(this.mFileName);
          if (str == null);
        }
        else
        {
          try
          {
            ensureFilePath(str);
            this.mFileOutputStream = new FileOutputStream(str, true);
            if (this.mWriteDataBuffer == null)
            {
              this.mWriteDataBuffer = new byte[16384];
              this.mDataBufferDataLen = 0;
            }
            boolean bool1 = writeData(this.mFileOutputStream, paramArrayOfByte, paramInt1, paramInt2, paramLong);
            bool2 = bool1;
            if (bool2)
              break label144;
            return bool2;
          }
          catch (Exception localException)
          {
            TMLog.w("TMAssistantFile", "write failed" + localException);
            bool2 = false;
            continue;
          }
        }
      }
      finally
      {
      }
      TMLog.w("TMAssistantFile", "write failed tmpFilePathString is null");
      boolean bool2 = false;
      continue;
      label144: if ((paramBoolean == true) && (flush() == true))
      {
        boolean bool3 = moveFileFromTmpToSavaPath(getTmpFilePath(this.mFileName), getSaveFilePath(this.mFileName));
        bool2 = bool3;
      }
      else
      {
        bool2 = true;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.storage.TMAssistantFile
 * JD-Core Version:    0.6.2
 */