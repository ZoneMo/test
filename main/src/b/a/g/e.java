package b.a.g;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public final class e
{
  public static String g(InputStream paramInputStream)
  {
    d.a(paramInputStream, "Cannot get String from a null object");
    try
    {
      char[] arrayOfChar = new char[65536];
      StringBuilder localStringBuilder = new StringBuilder();
      InputStreamReader localInputStreamReader = new InputStreamReader(paramInputStream, "UTF-8");
      int i;
      do
      {
        i = localInputStreamReader.read(arrayOfChar, 0, arrayOfChar.length);
        if (i > 0)
          localStringBuilder.append(arrayOfChar, 0, i);
      }
      while (i >= 0);
      localInputStreamReader.close();
      String str = localStringBuilder.toString();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("Error while reading response body", localIOException);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.g.e
 * JD-Core Version:    0.6.2
 */