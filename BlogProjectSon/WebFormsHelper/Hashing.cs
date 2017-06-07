using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
namespace WebFormsHelper
{
    public static class Hashing
    {
        public static string HashWithMD5(string text)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            //stringi byte a çevirir
            byte[] original = ASCIIEncoding.Default.GetBytes(text);
            byte[] hash = md5.ComputeHash(original);

            //byte ı stringe çevirme
            return BitConverter.ToString(hash).Replace("-","");
        }

        public static string HashWithSHA1(string text)
        {
            SHA1 sha1 = new SHA1CryptoServiceProvider();
            //stringi byte a çevirir
            byte[] original = ASCIIEncoding.Default.GetBytes(text);
            byte[] hash = sha1.ComputeHash(original);

            //byte ı stringe çevirme
            return BitConverter.ToString(hash);
        }
    }
}
